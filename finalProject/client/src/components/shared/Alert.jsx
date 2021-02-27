import React from 'react';

export default function Alert({ children, type }) {
  return (
    <div className={`alert alert-${type}`} role="alert">
      {children}
    </div>
  );
}
