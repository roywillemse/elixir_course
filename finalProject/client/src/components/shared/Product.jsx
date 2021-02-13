import React from 'react';

export default function Product() {
  return (
    <div className="col-4">
      <a href="#">
        <div className="card">
          <img
            src="https://via.placeholder.com/828x500"
            className="card-img-top"
            alt="..."
          />
          <div className="card-body">
            <p className="card-text">
              Apple Iphone 12
              <br />
              <small>€800,-</small>
            </p>
          </div>
        </div>
      </a>
    </div>
  );
}
