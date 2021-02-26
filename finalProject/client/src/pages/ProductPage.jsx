import React from 'react';
import { useQuery } from '@apollo/client';
import { useParams } from 'react-router-dom';
import { Link } from 'react-router-dom';

import DefaultLayout from '../layouts/DefaultLayout';
import { oneProductQuery } from '../graphql/queries/query';
import Spinner from '../components/shared/Spinner';

export default function ProductPage() {
  const { product_slug } = useParams();
  const { data, loading } = useQuery(oneProductQuery, {
    variables: { slug: product_slug },
  });
  if (loading) return <Spinner />;
  return (
    <DefaultLayout>
      <div className="row mt-4">
        <div className="col-12 mb-4">
          <small>
            <Link
              className="me-2"
              to={`/category/${data.oneProduct.category.slug}`}
            >
              {data.oneProduct.category.name}
            </Link>
            &gt; {data.oneProduct.name}
          </small>
        </div>
        <div className="col-6">
          <img
            className="img-fluid"
            src={data.oneProduct.images[0]}
            alt="..."
          />
        </div>
        <div className="col-6">
          <h1>{data.oneProduct.name}</h1>
          <hr />
          <p>{data.oneProduct.description}</p>
          <p className="fw-bold">Prijs: €{data.oneProduct.price},-</p>
          <button className="btn btn-primary">In winkelwagen</button>
        </div>
      </div>
    </DefaultLayout>
  );
}
