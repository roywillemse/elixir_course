import React from 'react';
import { useQuery } from '@apollo/client';
import { gql } from '@apollo/client';

export default function App() {
  const query = gql`
    query {
      allLinks {
        id
        description
        url
      }
    }
  `;

  const { loading, error, data } = useQuery(query);
  return (
    <div>
      <h1>test van Roy</h1>
      <ul>
        {data &&
          data.allLinks.map((link) => {
            return <li key={link.id}>{link.description}</li>;
          })}
      </ul>
    </div>
  );
}
