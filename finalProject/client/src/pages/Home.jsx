import React from 'react';

import Navbar from '../components/shared/Navbar';
import Hero from '../components/home/Hero';
import Footer from '../components/shared/Footer';
import Product from '../components/shared/Product';

export default function Home() {
  return (
    <>
      <div className="flex-shrink-0">
        <Navbar />
        <Hero />
        <div className="container">
          <div className="row">
            <div className="col-12">
              <h2>Best selling products</h2>
              <hr />
            </div>
            <Product />
            <Product />
            <Product />
          </div>
        </div>
      </div>
      <Footer />
    </>
  );
}
