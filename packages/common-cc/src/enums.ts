/**
 * ChaincodeEvent enum must be inSync with 
 * solidarychain-development-graphdb-events/src/network/network.enums.ts
 * solidarychain-development-monorepo/packages/common-cc/src/enums.ts
 */

export enum UserRoles {
  ROLE_USER = 'ROLE_USER',
  ROLE_ADMIN = 'ROLE_ADMIN'
}

export enum EntityType {
  Participant = 'com.chain.solidary.model.participant',
  Person = 'com.chain.solidary.model.person',
  Cause = 'com.chain.solidary.model.cause',
}

export enum ChaincodeEvent {
  // Asset
  AssetCreatedEvent = "AssetCreatedEvent",
  AssetUpdatedEvent = "AssetUpdatedEvent",
  CauseCreatedEvent = "CauseCreatedEvent",
  CauseUpdatedEvent = "CauseUpdatedEvent",
  // Participant
  ParticipantCreatedEvent = "ParticipantCreatedEvent",
  ParticipantUpdatedEvent = "ParticipantUpdatedEvent",
  ParticipantChangeIdentityEvent = 'ParticipantChangeIdentityEvent',
  // Person
  PersonCreatedEvent = "PersonCreatedEvent",
  PersonUpdatedEvent = "PersonUpdatedEvent",
  PersonUpdatePasswordEvent = 'PersonUpdatePasswordEvent',
  PersonUpdateProfileEvent = 'PersonUpdateProfileEvent',
  PersonUpdateRolesEvent = 'PersonUpdateRolesEvent',
  PersonUpsertCitizenCardEvent = 'PersonUpsertCitizenCardEvent',
  PersonAddAttributeEvent = 'PersonAddAttributeEvent',
  // Transaction
  TransactionCreatedEvent = "TransactionCreatedEvent",
  TransactionUpdatedEvent = "TransactionUpdatedEvent",
}
