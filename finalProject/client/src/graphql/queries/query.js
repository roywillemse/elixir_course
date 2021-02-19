import { gql } from '@apollo/client';

export const allProductsQuery = gql`
  {
    allProducts {
      id
      name
      description
      price
      images
      category {
        id
        name
      }
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
        description
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
      }
    }
  }
`;
