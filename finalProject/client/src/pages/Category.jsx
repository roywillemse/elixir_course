import React from 'react';
import { useQuery } from '@apollo/client';
import { useParams } from 'react-router-dom';

import Navbar from '../components/shared/Navbar';
import Footer from '../components/shared/Footer';
import Product from '../components/shared/Product';
import Spinner from '../components/shared/Spinner';
import { allProductsQuery, oneCategoryQuery } from '../graphql/queries/query';

export default function Category() {
  const { category_slug } = useParams();
  const { loading, data } = useQuery(allProductsQuery);
  const { data: categoryData } = useQuery(oneCategoryQuery, {
    variables: { slug: category_slug },
  });
  return (
    <>
      <div className="flex-shrink-0">
        <Navbar />
        <div className="container mt-5">
          <div className="row">
            <div className="col-12">
              {categoryData && (
                <>
                  <h2>{categoryData.oneCategory.name}</h2>
                  <p>{categoryData.oneCategory.description}</p>
                </>
              )}
              <hr />
              {loading && <Spinner />}
              {!loading &&
                data.allProducts.length > 0 &&
                data.allProducts.map((product) => {
                  return <Product />;
                })}
            </div>
          </div>
        </div>
      </div>
      <Footer />
    </>
  );
}
