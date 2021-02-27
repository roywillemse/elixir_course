import React, { useState, useEffect } from 'react';
import { useMutation } from '@apollo/client';
import { createReviewMutation } from '../../graphql/mutations/mutations';
import Alert from '../shared/Alert';

export default function CreateReaction({ show, productId, setReviewState }) {
  const initialState = {
    rating: null,
    name: '',
    description: '',
  };
  const [input, setInput] = useState(initialState);
  const [showSuccessAlert, setShowSuccessAlert] = useState(false);
  const [showDangerAlert, setShowDangerAlert] = useState(false);
  const [addReview, { data }] = useMutation(createReviewMutation);

  useEffect(() => {
    if (data && data.createReview) {
      setReviewState((prevState) => [...prevState, { ...data.createReview }]);
    }
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, [data]);

  const isValid = () => {
    if (!input.name) return false;
    if (!input.rating) return false;
    if (!input.description) return false;
    return true;
  };

  const onHandleSubmit = (e) => {
    e.preventDefault();
    setShowSuccessAlert(false);
    setShowDangerAlert(false);
    if (isValid()) {
      addReview({
        variables: {
          name: input.name,
          description: input.description,
          rating: input.rating,
          productId: parseInt(productId),
        },
      });
      setInput(initialState);
      setShowSuccessAlert(true);
    } else {
      setShowDangerAlert(true);
    }
  };

  if (!show) return null;
  return (
    <>
      {showSuccessAlert && (
        <Alert type="success">Review succesvol aangemaakt!</Alert>
      )}
      {showDangerAlert && (
        <Alert type="danger">
          Review is niet opgeslagen, zijn alle velden ingevuld?
        </Alert>
      )}
      <form className="mt-4 mb-4" onSubmit={onHandleSubmit}>
        <h5>Review schrijven</h5>
        <div className="mb-2">
          <label className="form-label d-block">Aantal sterren*</label>
          <div className="form-check form-check-inline">
            <input
              className="form-check-input"
              type="radio"
              name="stars"
              id="stars1"
              onChange={() =>
                setInput((prevState) => ({ ...prevState, rating: 1 }))
              }
              checked={input.rating === 1}
            />
            <label className="form-check-label" htmlFor="stars1">
              1
            </label>
          </div>
          <div className="form-check form-check-inline">
            <input
              className="form-check-input"
              type="radio"
              name="stars"
              id="stars2"
              onChange={() =>
                setInput((prevState) => ({ ...prevState, rating: 2 }))
              }
              checked={input.rating === 2}
            />
            <label className="form-check-label" htmlFor="stars2">
              2
            </label>
          </div>
          <div className="form-check form-check-inline">
            <input
              className="form-check-input"
              type="radio"
              name="stars"
              id="stars3"
              onChange={() =>
                setInput((prevState) => ({ ...prevState, rating: 3 }))
              }
              checked={input.rating === 3}
            />
            <label className="form-check-label" htmlFor="stars3">
              3
            </label>
          </div>
          <div className="form-check form-check-inline">
            <input
              className="form-check-input"
              type="radio"
              name="stars"
              id="stars4"
              onChange={() =>
                setInput((prevState) => ({ ...prevState, rating: 4 }))
              }
              checked={input.rating === 4}
            />
            <label className="form-check-label" htmlFor="stars4">
              4
            </label>
          </div>
          <div className="form-check form-check-inline">
            <input
              className="form-check-input"
              type="radio"
              name="stars"
              id="stars5"
              onChange={() =>
                setInput((prevState) => ({ ...prevState, rating: 5 }))
              }
              checked={input.rating === 5}
            />
            <label className="form-check-label" htmlFor="stars5">
              5
            </label>
          </div>
        </div>
        <div className="mb-2">
          <label htmlFor="name" className="form-label">
            Naam*
          </label>
          <input
            className="form-control"
            id="name"
            onChange={(e) =>
              setInput((prevState) => ({ ...prevState, name: e.target.value }))
            }
            value={input.name}
          />
        </div>
        <div className="mb-2">
          <label htmlFor="description" className="form-label">
            Wat vind je van het artikel?*
          </label>
          <textarea
            className="form-control"
            id="description"
            rows="3"
            onChange={(e) =>
              setInput((prevState) => ({
                ...prevState,
                description: e.target.value,
              }))
            }
            value={input.description}
          ></textarea>
        </div>
        <button type="submit" className="btn btn-primary">
          Review versturen
        </button>
      </form>
    </>
  );
}
