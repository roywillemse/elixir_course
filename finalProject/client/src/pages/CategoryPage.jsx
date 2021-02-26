import React from 'react';
import { useQuery } from '@apollo/client';
import { useParams } from 'react-router-dom';

import DefaultLayout from '../layouts/DefaultLayout';
import Product from '../components/shared/Product';
import Spinner from '../components/shared/Spinner';
import { oneCategoryQuery } from '../graphql/queries/query';

export default function CategoryPage() {
  const { category_slug } = useParams();
  const { data, loading } = useQuery(oneCategoryQuery, {
    variables: { slug: category_slug },
  });
  if (loading) return <Spinner />;
  return (
    <DefaultLayout>
      <div className="row mt-4">
        <div className="col-12">
          <h2>{data.oneCategory.name}</h2>
          <p>{data.oneCategory.description}</p>
          <hr />
          {data.oneCategory.products.map((product) => {
            return <Product key={product.id} product={product} />;
          })}
        </div>
      </div>
    </DefaultLayout>
  );
}
