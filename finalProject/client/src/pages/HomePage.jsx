import React from 'react';
import { useQuery } from '@apollo/client';

import Product from '../components/shared/Product';
import DefaultLayout from '../layouts/DefaultLayout';
import { allProductsQuery } from '../graphql/queries/query';

export default function HomePage() {
  const { data, loading } = useQuery(allProductsQuery);
  if (loading) return null;
  return (
    <DefaultLayout showHero>
      <div className="row mt-4">
        <div className="col-12">
          <h2>Alle producten</h2>
          <hr />
        </div>
        {data.allProducts.map((product) => {
          return <Product key={product.id} product={product} />;
        })}
      </div>
    </DefaultLayout>
  );
}
