import React from 'react';

export default function Footer() {
  return (
    <footer className="footer mt-4 py-3 bg-light">
      <div className="container">
        <span className="text-muted">
          © {new Date().getFullYear()} Roy Willemse
        </span>
      </div>
    </footer>
  );
}
