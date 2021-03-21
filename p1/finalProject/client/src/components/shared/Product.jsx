import React from 'react';
import StyledLink from './StyledLink';

export default function Product({ product }) {
  return (
    <div className="col-4 mb-4">
      <StyledLink to={`/product/${product.slug}`}>
        <div className="card" style={{ minHeight: '366px' }}>
          <div
            style={{
              height: '260px',
              width: '100%',
              background: `url(${product.images[0]})`,
              backgroundSize: 'cover',
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
      </StyledLink>
    </div>
  );
}
