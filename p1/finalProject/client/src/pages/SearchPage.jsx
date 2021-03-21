import React from 'react';
import { useQuery } from '@apollo/client';

import DefaultLayout from '../layouts/DefaultLayout';
import useQuerystring from '../hooks/useQuerystring';
import { searchProducts } from '../graphql/queries/query';
import Product from '../components/shared/Product';

export default function SearchPage() {
  const search = useQuerystring('name');
  const { data, loading } = useQuery(searchProducts, {
    variables: { search: search.toLowerCase() },
  });
  if (loading) return null;
  return (
    <DefaultLayout>
      <div className="row mt-4">
        <div className="col-12">
          <h1>Gezocht op: {search}</h1>
          <hr />
          {data.searchProducts.length === 0 && (
            <h5>Er zijn helaas geen producten gevonden met deze naam...</h5>
          )}
        </div>
        {data.searchProducts.map((product) => (
          <Product key={product.id} product={product} />
        ))}
      </div>
    </DefaultLayout>
  );
}
