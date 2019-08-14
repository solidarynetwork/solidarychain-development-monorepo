// tslint:disable-next-line:no-var-requires
const homedir = require('os').homedir();

export const port = process.env.PORT || 8000;

// chaincode: the name of the smart contract. This is given when you installed it with hurl install <name> <language>
export const chaincode = process.env.CHAINCODE || 'person';
// channel: by default a channel (ledger) is created for you with Hurley. Its name is ch1 and each subsequent channel will follow that
// pattern (ch2, ch3, ch4) check more on channels [here](https://github.com/worldsibu/hurley#hurl-install).
export const channel = process.env.CHANNEL || 'ch1';

// Automatically extract credentials by the user id
// If no .env config is found, fallback to Hurley defaults
export const identityId = process.env.IDENTITY_ID || 'gov';
// identityName: Its the name of the user that will be used to run the server (wallet).
// In this case Hurley also handles an standard (like user1, user2, user3) depending on how many to told it to create.
export const identityName = process.env.IDENTITY || 'admin';
// identityOrg: Just like identityName this property refers to the organization of the identity which will be used
// to run, query, and submit transactions to the network.
export const identityOrg = process.env.ORG || 'org1';

// keyStore: The key store is a path where cryptographic objects are stored (for example the private key/wallet).
// This folder can be located anywhere and this property fallbacks to Hurley defaults.
export const keyStore = process.env.KEY_STORE || `/${homedir}/hyperledger-fabric-network/.hfc-${identityOrg}`;
// networkProfile: The network profile is a file with the addresses and certificates to communicate with the blockchain network.
// This coordinates are used by Fabric's official SDK.
export const networkProfile = process.env.NETWORK_PROFILE || `/${homedir}/hyperledger-fabric-network/network-profiles/${identityOrg}.network-profile.yaml`;

// Default to common values
// couchDB*: This properties will define the coordinates to communicate with the CouchDB server of one of the peers.
// This is because we want to query some data directly and not through the peers - which is another way to do queries.
export const couchDBView = process.env.COUCHDB_VIEW || 'ch1_person';
export const couchDBProtocol = process.env.COUCHDB_PROTOCOL || 'http';
export const couchDBHost = process.env.COUCHDB_HOST || 'localhost';
export const couchDBPort = process.env.COUCHDB_PORT || 5084;
