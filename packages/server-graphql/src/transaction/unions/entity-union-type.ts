import { createUnionType } from 'type-graphql';
import { Participant } from './../../participant/models';
import { Person } from './../../person/models/person.model';

// TODO: NOT USED YET

// https://typegraphql.ml/docs/unions.html
// https://graphql.org/learn/schema/#union-types

// query{
//   search(phrase:""){
//     __typename
//     ...on Movie {
//       name
//       rating
//     }
//     ... on  Actor{
//       name
//       age
//     }
//   }
// }

export const EntityResultUnion = createUnionType({
  // the name of the GraphQL union
  name: 'EntityResultUnion',
  // function that returns array of object types classes
  types: () => [Participant, Person],
});
