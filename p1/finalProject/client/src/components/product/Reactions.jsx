import React, { useState } from 'react';
import Stars from './Stars';
import CreateReaction from './CreateReaction';

export default function Reactions({ reviews, productId }) {
  const [showCreateReaction, setshowCreateReaction] = useState(false);
  const [reviewState, setReviewState] = useState(reviews);
  return (
    <>
      <h2>Reacties</h2>
      <p>Zie hieronder de reacties van onze klanten:</p>
      <button
        className="btn btn-secondary mb-3"
        onClick={() => setshowCreateReaction((prevState) => !prevState)}
      >
        {showCreateReaction ? (
          <i className="fas fa-chevron-up me-1"></i>
        ) : (
          <i className="fas fa-chevron-down me-1"></i>
        )}
        Schrijf review
      </button>
      <CreateReaction
        show={showCreateReaction}
        productId={productId}
        setReviewState={setReviewState}
      />
      {reviewState.map((review) => (
        <div className="card mb-2" key={review.id}>
          <div className="card-body">
            <h5 className="card-title">{review.name}</h5>
            <Stars rating={review.rating} />
            <p className="card-text">{review.description}</p>
          </div>
        </div>
      ))}
    </>
  );
}
