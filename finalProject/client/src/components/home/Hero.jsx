import React from 'react';

export default function Hero() {
  return (
    <div
      className="p-4 p-md-5 mb-4 text-dark bg-light"
      style={{
        background:
          'url(https://www.toptal.com/designers/subtlepatterns/patterns/pow-star.png)',
      }}
    >
      <div className="col-md-6 px-0">
        <h1 className="display-4">Welkom op deze webshop</h1>
        <p className="lead mt-3 mb-0">
          Deze webshop is het restultaat van mijn persoonlijke ontwikkeling
          waarbij de focus ligt op de backend die in Elixir gemaakt is.
        </p>
      </div>
    </div>
  );
}
