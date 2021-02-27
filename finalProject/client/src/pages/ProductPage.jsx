import React from 'react';
import { useQuery } from '@apollo/client';
import { useParams } from 'react-router-dom';

import DefaultLayout from '../layouts/DefaultLayout';
import { oneProductQuery } from '../graphql/queries/query';
import Reactions from '../components/product/Reactions';
import StyledLink from '../components/shared/StyledLink';

export default function ProductPage() {
  const { product_slug } = useParams();
  const { data, loading } = useQuery(oneProductQuery, {
    variables: { slug: product_slug },
  });
  if (loading) return null;
  return (
    <DefaultLayout>
      <div className="row mt-4">
        <div className="col-12 mb-4">
          <small>
            <StyledLink
              className="me-2"
              to={`/category/${data.oneProduct.category.slug}`}
            >
              {data.oneProduct.category.name}
            </StyledLink>
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
          <div className="pb-5">
            <h1>{data.oneProduct.name}</h1>
            <hr />
            <p>{data.oneProduct.description}</p>
            <p className="fw-bold">Prijs: €{data.oneProduct.price},-</p>
          </div>
          <div className="mt-5">
            <Reactions
              reviews={data.oneProduct.reviews}
              productId={data.oneProduct.id}
            />
          </div>
        </div>
        {/* <div className="col-6"></div>
        <div className="col-6 mt-5">
          <Reactions
            reviews={data.oneProduct.reviews}
            productId={data.oneProduct.id}
          />
        </div> */}
      </div>
    </DefaultLayout>
  );
}
