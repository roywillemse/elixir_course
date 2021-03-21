import React from 'react';

export default function Stars({ rating }) {
  const generateStars = () => {
    const stars = [];
    for (let index = 0; index < 5; index++) {
      if (index < rating) {
        stars.push(true);
      } else {
        stars.push(false);
      }
    }
    return stars;
  };

  return (
    <div className="d-flex">
      {generateStars().map((star, index) => (
        <div key={index}>
          {star ? (
            <i className="fas fa-star"></i>
          ) : (
            <i className="far fa-star"></i>
          )}
        </div>
      ))}
    </div>
  );
}
