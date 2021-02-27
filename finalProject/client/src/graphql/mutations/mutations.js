import { gql } from '@apollo/client';

export const createReviewMutation = gql`
  mutation CreateReview(
    $name: String!
    $productId: Int!
    $rating: Int!
    $description: String!
  ) {
    createReview(
      name: $name
      productId: $productId
      rating: $rating
      description: $description
    ) {
      id
      name
      description
      rating
    }
  }
`;
