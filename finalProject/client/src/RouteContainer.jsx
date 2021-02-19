import React from 'react';
import { BrowserRouter as Router, Switch, Route } from 'react-router-dom';
import Home from './pages/Home';
import Category from './pages/Category';

export default function RouteContainer() {
  return (
    <Router>
      <Switch>
        <Route exact path="/">
          <Home />
        </Route>
        <Route exact path="/category/:category_slug">
          <Category />
        </Route>
      </Switch>
    </Router>
  );
}
