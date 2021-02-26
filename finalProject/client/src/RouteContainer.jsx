import React from 'react';
import { BrowserRouter as Router, Switch, Route } from 'react-router-dom';
import HomePage from './pages/HomePage';
import CategoryPage from './pages/CategoryPage';
import ProductPage from './pages/ProductPage';
import SearchPage from './pages/SearchPage';

export default function RouteContainer() {
  return (
    <Router>
      <Switch>
        <Route exact path="/">
          <HomePage />
        </Route>
        <Route exact path="/category/:category_slug">
          <CategoryPage />
        </Route>
        <Route exact path="/product/:product_slug">
          <ProductPage />
        </Route>
        <Route exact path="/search/">
          <SearchPage />
        </Route>
      </Switch>
    </Router>
  );
}
