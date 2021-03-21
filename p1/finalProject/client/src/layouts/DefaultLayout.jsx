import React from 'react';
import Navbar from '../components/shared/Navbar';
import Hero from '../components/home/Hero';
import Footer from '../components/shared/Footer';

export default function DefaultLayout({ children, showHero }) {
  return (
    <>
      <div className="flex-shrink-0 mb-4">
        <Navbar />
        {showHero && <Hero />}
        <div className="container">{children}</div>
      </div>
      <Footer />
    </>
  );
}
