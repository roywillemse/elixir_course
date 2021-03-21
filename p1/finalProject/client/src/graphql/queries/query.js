import { gql } from '@apollo/client';

export const allProductsQuery = gql`
  {
    allProducts {
      id
      name
      slug
      price
      description
      images
      category {
        id
        name
      }
    }
  }
`;

export const oneProductQuery = gql`
  query Product($slug: String!) {
    oneProduct(slug: $slug) {
      id
      name
      slug
      price
      description
      images
      category {
        id
        name
        slug
      }
      reviews {
        id
        name
        rating
        description
      }
    }
  }
`;

export const searchProducts = gql`
  query searchProducts($search: String!) {
    searchProducts(search: $search) {
      id
      name
      slug
      price
      description
      images
    }
  }
`;

export const allCategoriesQuery = gql`
  {
    allCategories {
      name
      id
      slug
      products {
        id
        name
        slug
        price
        description
        images
      }
    }
  }
`;

export const oneCategoryQuery = gql`
  query Category($slug: String!) {
    oneCategory(slug: $slug) {
      id
      name
      description
      slug
      products {
        id
        name
        slug
        price
        description
        images
      }
    }
  }
`;
