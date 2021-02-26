import React from 'react';
import DefaultLayout from '../layouts/DefaultLayout';
import useQuerystring from '../hooks/useQuerystring';

export default function SearchPage() {
  const search = useQuerystring('name');

  return (
    <DefaultLayout>
      <div className="row mt-4">
        <div className="col-12">
          <h1>Gezocht op: {search}</h1>
          <hr />
        </div>
      </div>
    </DefaultLayout>
  );
}
