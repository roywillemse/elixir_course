import React from 'react';
import { Link } from 'react-router-dom';

export default function Product({ product }) {
  return (
    <div className="col-4">
      <Link to={`/product/${product.slug}`}>
        <div className="card">
          <div
            style={{
              height: '260px',
              width: '100%',
              background: `url(${product.images[0]})`,
            }}
            className="card-img-top"
            alt={`Product: ${product.name}`}
          />
          <div className="card-body">
            <p className="card-text">
              {product.name}
              <br />
              <small>€{product.price},-</small>
            </p>
          </div>
        </div>
      </Link>
    </div>
  );
}
