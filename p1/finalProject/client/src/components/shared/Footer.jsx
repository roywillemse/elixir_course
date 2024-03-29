import React from 'react';
import styled from 'styled-components';

const StyledFooter = styled.footer`
  margin-top: auto;
`;

export default function Footer() {
  return (
    <StyledFooter className="footer py-3 bg-light">
      <div className="container">
        <span className="text-muted">
          © {new Date().getFullYear()} - Roy Willemse
        </span>
      </div>
    </StyledFooter>
  );
}
