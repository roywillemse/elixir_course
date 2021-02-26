import React, { useState, useRef } from 'react';
import { Link, NavLink, useRouteMatch, useHistory } from 'react-router-dom';
import styled from 'styled-components';
import { useQuery } from '@apollo/client';
import { allCategoriesQuery } from '../../graphql/queries/query';
import useDetectClickOutside from '../../hooks/useDetectClickOutside';
const StyledButton = styled.button`
  background: none;
  border: none;
`;

export default function Navbar() {
  const { loading, data } = useQuery(allCategoriesQuery);
  const history = useHistory();
  const [openDropdown, setOpenDropdown] = useState(false);
  const [searchParam, setSearchParam] = useState('');
  const dropdownRef = useRef(null);
  useDetectClickOutside(dropdownRef, () => setOpenDropdown(false));
  const isCategoryRoute = useRouteMatch('/category/:category_slug');

  const onHandleSubmit = (e) => {
    e.preventDefault();
    history.push({ pathname: `/search`, search: `?name=${searchParam}` });
  };

  return (
    <nav className="navbar navbar-expand-lg navbar-dark bg-dark">
      <div className="container-fluid">
        <Link to="/" className="navbar-brand">
          Webshop
        </Link>
        <button
          className="navbar-toggler"
          type="button"
          data-bs-toggle="collapse"
          data-bs-target="#navbarSupportedContent"
          aria-controls="navbarSupportedContent"
          aria-expanded="false"
          aria-label="Toggle navigation"
        >
          <span className="navbar-toggler-icon"></span>
        </button>
        <div className="collapse navbar-collapse">
          <ul className="navbar-nav me-auto mb-2 mb-lg-0">
            <li className="nav-item">
              <NavLink
                exact={true}
                className={`nav-link`}
                activeClassName="active"
                to="/"
              >
                Home
              </NavLink>
            </li>
            <li className="nav-item dropdown" ref={dropdownRef}>
              <StyledButton
                className={`nav-link dropdown-toggle ${
                  isCategoryRoute ? 'active' : ''
                } ${openDropdown ? 'show' : ''}`}
                onClick={() => setOpenDropdown((prevState) => !prevState)}
              >
                Categorieën
              </StyledButton>
              <ul className={`dropdown-menu ${openDropdown ? 'show' : ''}`}>
                {!loading &&
                  data.allCategories.length > 0 &&
                  data.allCategories.map((category) => {
                    return (
                      <li key={category.id}>
                        <NavLink
                          exact={true}
                          className={`dropdown-item`}
                          activeClassName="active"
                          to={`/category/${category.slug}`}
                          onClick={() => setOpenDropdown(false)}
                        >
                          {category.name}
                        </NavLink>
                      </li>
                    );
                  })}
              </ul>
            </li>
          </ul>
          <form className="d-flex" onSubmit={onHandleSubmit}>
            <input
              className="form-control me-2"
              type="search"
              placeholder="Zoeken"
              aria-label="Search"
              value={searchParam}
              onChange={(e) => setSearchParam(e.target.value)}
            />
            <button type="submit" className="btn btn-outline-primary">
              <i className="fas fa-search"></i>
            </button>
          </form>
        </div>
      </div>
    </nav>
  );
}
