# NOTES : Warning : Internal notes, subject to errors and typos

- [NOTES : Warning : Internal notes, subject to errors and typos](#notes--warning--internal-notes-subject-to-errors-and-typos)
  - [Links Used](#links-used)
    - [WorldSibu](#worldsibu)
    - [Medium](#medium)
    - [Nest Js](#nest-js)
  - [Commands](#commands)
  - [Fix's](#fixs)
  - [Uris and Endpoints](#uris-and-endpoints)
    - [Tools](#tools)
    - [Mango Queries](#mango-queries)
    - [Endpoints](#endpoints)
  - [Fix's](#fixs-1)
  - [Clone Worldsibu Repository](#clone-worldsibu-repository)
  - [Config environment](#config-environment)
  - [Install/Update Tooling](#installupdate-tooling)
  - [SetUp](#setup)
  - [What are we going to build?](#what-are-we-going-to-build)
    - [Here is a brief explanation of what it is done in the smart contract tutorial](#here-is-a-brief-explanation-of-what-it-is-done-in-the-smart-contract-tutorial)
      - [Each data structure is defined as](#each-data-structure-is-defined-as)
      - [Business rules](#business-rules)
      - [The flow should look like this](#the-flow-should-look-like-this)
  - [Start Code It: Modules, Controllers and Services](#start-code-it-modules-controllers-and-services)
  - [Config/ Environment](#config-environment-1)
  - [Create files](#create-files)
  - [Run Convector and Test](#run-convector-and-test)
  - [Extend tutorial](#extend-tutorial)
    - [Commit project](#commit-project)
    - [add Types to `Participant` and `Person` Modules and Use it [DEPRECATED]](#add-types-to-participant-and-person-modules-and-use-it-deprecated)
    - [To Use CouchDB and don't DRY Initialization block in Controllers](#to-use-couchdb-and-dont-dry-initialization-block-in-controllers)
    - [Couch Views (Require to add to all nodes fabric-couchdb/ couchdb.peer0.org?.hurley.lab)](#couch-views-require-to-add-to-all-nodes-fabric-couchdb-couchdbpeer0orghurleylab)
  - [Fire All Requests](#fire-all-requests)
  - [Test/Jest](#testjest)
    - [Error 1](#error-1)
    - [error 3](#error-3)
  - [Implement Swagger Docs](#implement-swagger-docs)
    - [Install dependencies](#install-dependencies)
    - [Initialize the Swagger using SwaggerModule](#initialize-the-swagger-using-swaggermodule)
    - [Redirect root to Api](#redirect-root-to-api)
    - [Test Swagger Api and Redirect](#test-swagger-api-and-redirect)
    - [Create Swagger DTO's](#create-swagger-dtos)
    - [Global constant file](#global-constant-file)
    - [Swagger : @ApiResponse decorators](#swagger--apiresponse-decorators)
  - [Add HTTPS to Server](#add-https-to-server)
    - [Add Redirect Middleware (HTTP to HTTPS)](#add-redirect-middleware-http-to-https)
    - [Test Https and HTTP to HTTPS Redirect](#test-https-and-http-to-https-redirect)
    - [Enable CORS](#enable-cors)
  - [Authentication](#authentication)
    - [Authentication: Implementing Passport local](#authentication-implementing-passport-local)
    - [Authentication: Built-in Passport Guards](#authentication-built-in-passport-guards)
    - [Authentication: JWT functionality](#authentication-jwt-functionality)
    - [Authentication: Implementing Passport JWT](#authentication-implementing-passport-jwt)
    - [Authentication: Implement protected route and JWT strategy guards](#authentication-implement-protected-route-and-jwt-strategy-guards)
    - [Authentication: Default strategy](#authentication-default-strategy)
    - [Authentication: Guards, BearerAuth and Response decorators](#authentication-guards-bearerauth-and-response-decorators)
    - [Authentication: Finish App controller Login and Profile routes](#authentication-finish-app-controller-login-and-profile-routes)
    - [Authentication: Test Swagger With Authentication](#authentication-test-swagger-with-authentication)
  - [Change/Extend Person model to have authorization credentials](#changeextend-person-model-to-have-authorization-credentials)
  - [Renew and Deploy new upgraded ChainCode after chaincode model Changes](#renew-and-deploy-new-upgraded-chaincode-after-chaincode-model-changes)
  - [Start to encrypt passwords with BCrypt](#start-to-encrypt-passwords-with-bcrypt)
  - [Create common Package to share stuff `@solidary-chain/common-cc`](#create-common-package-to-share-stuff-solidary-chaincommon-cc)
    - [Create lerna common package `@solidary-chain/common-cc`](#create-lerna-common-package-solidary-chaincommon-cc)
    - [Use common package inside ChainCode](#use-common-package-inside-chaincode)
    - [Use scripts to copy other files to chaincode](#use-scripts-to-copy-other-files-to-chaincode)
    - [Clean Up](#clean-up)
  - [Implement UsersService with ledger Persons/Users authentication](#implement-usersservice-with-ledger-personsusers-authentication)
  - [Clean up and solve problem of `@babel/.highlight.DELETE@latest` when use lerna bootstrap](#clean-up-and-solve-problem-of-babelhighlightdeletelatest-when-use-lerna-bootstrap)
  - [Solve custom nestjs packages dependencies](#solve-custom-nestjs-packages-dependencies)
  - [Solve { Error: transaction returned with failure: {"name":"Error","status":500}](#solve--error-transaction-returned-with-failure-nameerrorstatus500)
  - [Solve problem Cannot find module 'typescript/bin/tsc'](#solve-problem-cannot-find-module-typescriptbintsc)
  - [Problem tests/participant.spec.ts(30,11): error TS1005: ':' expected](#problem-testsparticipantspects3011-error-ts1005--expected)
  - [Add new transaction-cc module to chaincode](#add-new-transaction-cc-module-to-chaincode)
    - [add to graphql server](#add-to-graphql-server)
    - [Add new package to other files](#add-new-package-to-other-files)
  - [GraphQL ComplexQuery problem: How to send arbitrayGraphQL and ComplexQuery and the big sort problem](#graphql-complexquery-problem-how-to-send-arbitraygraphql-and-complexquery-and-the-big-sort-problem)
  - [Participant changeIdentity / require "chaincodeAdmin" with `attrs."admin": "true"`](#participant-changeidentity--require-chaincodeadmin-with-attrsadmin-true)
    - [Debug Fingerprints](#debug-fingerprints)
  - [Change Gov participant FingerPrint (Notes from TLDR.md production network)](#change-gov-participant-fingerprint-notes-from-tldrmd-production-network)
  - [Debug restartEnv.sh : chaincode works in debug bug not with restartEnv.sh](#debug-restartenvsh--chaincode-works-in-debug-bug-not-with-restartenvsh)
  - [Hurley and fix Globall install](#hurley-and-fix-globall-install)
  - [Lerna Fix problem of install dependencies](#lerna-fix-problem-of-install-dependencies)
  - [After Update to new Packages we have Conversion of type 'FlatConvectorModel<Asset>[]' to type 'Asset[]' may be a mistake because neither type sufficiently overlaps with the other](#after-update-to-new-packages-we-have-conversion-of-type-flatconvectormodelasset-to-type-asset-may-be-a-mistake-because-neither-type-sufficiently-overlaps-with-the-other)
  - [Class-validator](#class-validator)
  - [Problem on create person can't find participant fingerprint? comes from `this.sender`](#problem-on-create-person-cant-find-participant-fingerprint-comes-from-thissender)
  - [Problem again with "Cant find a participant with that fingerprint"](#problem-again-with-cant-find-a-participant-with-that-fingerprint)
  - [WIP UNSOLVED: Problem on create person can't find participant fingerprint? comes from `this.sender`](#wip-unsolved-problem-on-create-person-cant-find-participant-fingerprint-comes-from-thissender)
  - [Problem `(node:32043) UnhandledPromiseRejectionWarning: TypeError: Cannot read property 'curve' of undefined`](#problem-node32043-unhandledpromiserejectionwarning-typeerror-cannot-read-property-curve-of-undefined)
  - [Error: Failed to load gRPC binary module because it was not installed for the current system](#error-failed-to-load-grpc-binary-module-because-it-was-not-installed-for-the-current-system)
    - [require await ele Error: PUT_STATE failed: transaction ID: ...: no ledger context](#require-await-ele-error-put_state-failed-transaction-id--no-ledger-context)
  - [Problem: Jest error TS1005: ';' expected.](#problem-jest-error-ts1005--expected)
  - [Problem launching Hurley with deprecated `hyperledger/fabric-ccenv`](#problem-launching-hurley-with-deprecated-hyperledgerfabric-ccenv)
  - [Problem enroll admin and users](#problem-enroll-admin-and-users)
  - [error code 500, msg could not find chaincode with name 'solidary-chain-chaincode'](#error-code-500-msg-could-not-find-chaincode-with-name-solidary-chain-chaincode)

This is a simple NestJs starter, based on above links, I only extended it with a few things like **swagger api**, **https**, **jwt**, and other stuff, thanks m8s

> IMPORTANT NOTE: node version used `v8.16.0` without issues

## Links Used

### WorldSibu

- [WorldSibu Awesome Convector Suite](https://worldsibu.tech/about/)
- [WorldSibu Awesome Convector Suite : Tutorial - Getting Started](https://docs.worldsibu.com/article/99-tutorial-getting-started)

### Medium

- [Convector with NestJS](https://medium.com/swlh/convector-with-nestjs-7e660322d927)
- [Final Example](https://github.com/mahcr/convector-example-people-attributes)

### Nest Js

- [NestJS Swagger](https://docs.nestjs.com/recipes/swagger)
- [NestJS HTTPS](https://docs.nestjs.com/faq/multiple-servers)

## Commands

```shell
# start define CHAINCODE_NAME
$ CHAINCODE_NAME=solidary-chain-chaincode

# run test
$ npm test

# restart hyperledger network
$ npm run env:restart
# You can find the network topology (ports, names) here: ${HOME}/hyperledger-fabric-network/docker-compose.yaml

# deploy smart contract (this smart contract have person and participant packages deployed in one unified chaincode)
$ npm run cc:start -- ${CHAINCODE_NAME}

# every change on @solidary-chain/common-cc, must be builded to be used in dependent packages
$ npx lerna run build --scope @solidary-chain/common-cc --stream
# build person-cc or participant-cc (before upgrade person chaincode, seems strange we have to do that, because we see lerna building all packages in mono repo, but it is a fact that if we not do that it deploys the cc with same code...., causing some problems to get it)
$ npx lerna run build --scope @solidary-chain/participant-cc --stream
$ npx lerna run build --scope @solidary-chain/person-cc --stream
$ npx lerna run build --scope @solidary-chain/cause-cc --stream
$ npx lerna run build --scope @solidary-chain/asset-cc --stream
$ npx lerna run build --scope @solidary-chain/transaction-cc --stream

# upgrade smart contract
$ VERSION=1.1
# require to build modified modules common, person, participant etc
$ npm run cc:upgrade -- ${CHAINCODE_NAME} ${VERSION}

# always use script to update chaincode
$ ./upgrade-chaincode.sh

# note: after deploy/upgrade wait a few second/minutes in first invoke,
# when done we have a new container and command end with result `Upgraded Chaincode at org1`
# watch for deployed container
$ watch "docker container ls --format "{{.Names}}" | grep \"${CHAINCODE_NAME}-${VERSION}\""
dev-peer0.org1.hurley.lab-${CHAINCODE_NAME}-${VERSION}
dev-peer0.org2.hurley.lab-${CHAINCODE_NAME}-${VERSION}

# debug chaincode container
$ docker container logs -f dev-peer0.org1.hurley.lab-${CHAINCODE_NAME}-${VERSION}
$ docker container logs -f dev-peer0.org2.hurley.lab-${CHAINCODE_NAME}-${VERSION}

# invoke some stuff (after deploy or upgrade chaincode)
$ npx hurl invoke ${CHAINCODE_NAME} participant_get gov
$ npx hurl invoke ${CHAINCODE_NAME} person_get 1-100-100
$ npx hurl invoke ${CHAINCODE_NAME} person_getAll

# package chain code: force build chaincode-${CHAINCODE_NAME} folders, after some strange errors like
# { Error: transaction returned with failure: {"name":"Error","status":500}, below line seems fixed that problem, more notes below, just search for `{"name":"Error","status":500}`
$ npm run cc:package -- ${CHAINCODE_NAME} org1

# after restart hyperledger always seed ledger
$ npm run seed
# or
$ ./seed.sh
# after restart hyperledger always create views
$ ./views/install.sh

# is always good to launch above command to log chaincode activity inside vscode, like restartEnv etc
# debug chain code (remember breakpoint are set in .js or in .ts files)
# TRICK: to debug always use hurl, it is possible to debug chainCode and graphql at same time, using both auto attached debuggers
# TRICK: in case of not stop on breakpoint use debugger; and put breakPoint on start of function is on start of `create`
# TRICK: we can put some breakpoint into .ts it works too after stop in .js
# TRICK: if change something on .ts while debug don't forget to build chaincode with 'npx lerna run build --scope @solidary-chain/person-cc --stream' and deploy, and restart debug again
# TRICK: don't forget that breakpoint to work must be inside the chaincode-${CHAINCODE_NAME}/packages/@solidary-chain/person-cc/src/person.controller.ts folder that is generated on chaincode builds, and not the default packages/person-cc/src/person.controller.ts
$ npm run cc:start:debug -- ${CHAINCODE_NAME}
# if error occur use target debug version, recommend to always use current version, or if we are in version 1.3, use pass 1.4 to deploy and debug a new chaincode, and watch
$ npm run cc:start:debug -- ${CHAINCODE_NAME} 1.1
# TRICK: Error: could not assemble transaction, err proposal response was not successful, error code 500, msg chaincode with name 'solidary-chain-chaincode' already exists

# run dev server
$ npx lerna run start:dev --scope @solidary-chain/server-graphql --stream
# run debug server
$ npx lerna run start:debug --scope @solidary-chain/server-graphql --stream

# debug/view logs container ${CHAINCODE_NAME}-1.0, ${CHAINCODE_NAME}-1.1...
$ docker container ls | grep ${CHAINCODE_NAME} | awk '{print $1" : "$2}'
f544509eec58 : dev-peer0.org2.hurley.lab-solidary-chain-chaincode-1.0-351b0bef3757230f476dec587f92b0d6ec2d60224e983cc32119aafec151bcdd
32ebfd14677d : dev-peer0.org1.hurley.lab-solidary-chain-chaincode-1.0-327a0dd6d92274526a6230611433ce88bc56a5602b3f6036cd5f739662e1d1f5
# or
$ docker container ls --format "{{.ID}}\t{{.Image}}"
# with chaincode version
$ CHAINCODE_VERSION="1.0"
$ SEARCH_CONTAINER="dev-peer0.org1.hurley.lab-${CHAINCODE_NAME}-${CHAINCODE_VERSION}"
$ docker logs $(docker container ls | grep ${SEARCH_CONTAINER} | awk '{print $1}' | head -n 1) -f
```

lerna

```shell
# add package to package
$ ADD_PACKAGE=@solidary-chain/common-cc
$ TO_PACKAGE=@solidary-chain/participant-cc
$ npx lerna add ${ADD_PACKAGE} --scope ${TO_PACKAGE}

# $ ADD_PACKAGE=@solidary-chain/common-cc
$ ADD_PACKAGE=@worldsibu/convector-adapter-fabric@1.3.8
$ TO_PACKAGE=@solidary-chain/server-graphql
$ npx lerna add ${ADD_PACKAGE} --scope ${TO_PACKAGE}
```

## Fix's

```shell
# when running server, when we build chaincode, we must stop and start server
@solidary-chain/server-graphql: src/convector.ts(35,50): error TS2339: Property 'get' does not exist on type 'ConvectorControllerClient<ConvectorController<any>>'.
@solidary-chain/server-graphql: src/participant/participant.service.ts(13,42): error TS2339: Property 'register' does not exist on type 'ConvectorControllerClient<ConvectorController<any>>'.
@solidary-chain/server-graphql: src/participant/participant.service.ts(23,75): error TS2339: Property 'get' does not exist on type 'ConvectorControllerClient<ConvectorController<any>>'.
@solidary-chain/server-graphql: src/participant/participant.service.ts(35,105): error TS2339: Property 'getAll' does not exist on type 'ConvectorControllerClient<ConvectorController<any>>'.
@solidary-chain/server-graphql: 20:58:05 - Found 4 errors. Watching for file changes.
# fix build cc's and start server, USED TO WHEN package can find other package like can't find @solidary-chain/common-cc or can't find a new type added to package like ChaincodeEvent
$ npx lerna run build --scope @solidary-chain/person-cc --stream
$ npx lerna run build --scope @solidary-chain/participant-cc --stream
$ npx lerna run start:debug --scope @solidary-chain/server-graphql --stream
```

## Uris and Endpoints

### Tools

- [Hurley Fauxton](http://localhost:5084/_utils/#database/)

### Mango Queries

- [Mango search in Arrays](https://stackoverflow.com/questions/43892556/mango-search-in-arrays)
- [CouchDB query selector on string in array of elements](https://stackoverflow.com/questions/55169530/couchdb-query-selector-on-string-in-array-of-elements)

> Use double quotes in fauxton else silent error, does nothing, or copy some values from result sets

```json
{
  "selector": {
    "type": "com.chain.solidary.model.participant",
    "identities": {
      "$elemMatch": {
        "fingerprint": "C8:B1:6A:5D:67:77:44:99:C6:3F:59:7C:1D:A5:F1:29:40:AE:5B:C9",
        "status": true
      }
    }
  }
}
```

```json
{
   "selector": {
      "type": "com.chain.solidary.model.participant",
      "fiscalNumber": "PT500123001"
   }
}
```

```json
{
  "selector": {
    "type": "com.chain.solidary.model.person",
    "attributes": {
      "$elemMatch": {
        "id": "born-year",
        "content": {
          "data": "1971"
        }
      }
    }
  }
}
```

elemMatch in a array of strings using "$eq", It will return all objects where ambassadors field equals id

getComplexQuery/userFilter participants, causes are equal only change the type

```json
{
  "selector": {
    "type": "com.chain.solidary.model.participant",
    "ambassadors": {
      "$elemMatch": {
      "$eq": "4ea88521-031b-4279-9165-9c10e1839002"
      }
    }
  },
  "sort": [
    {
      "name": "asc"
    }
  ]
}
```

getComplexQuery/userFilter cause

```json
{
  "selector": {
    "type": "com.chain.solidary.model.cause",
    "$or": [
      {
        "createdByPersonId": "42a090f4-a2b1-4fcb-99bf-5bc8f2d1c1b3"
      },        
      {
        "input": {
          "entity": {
            "id": "7d0ac09c-6e00-41e2-b152-a3a287115a81"
          }
        }
      },
      {
        "input": {
          "entity": {
            "ambassadors": {
              "$elemMatch": {
                "$eq": "7d0ac09c-6e00-41e2-b152-a3a287115a81"
              }
            }
          }
        }
      }
    ]
  }
}
```

getComplexQuery/userFilter asset owner | asset owner ambassador | ambassador

```json
{
  "selector": {
    "type": "com.chain.solidary.model.asset",
    "$or": [
      {
        "createdByPersonId": "42a090f4-a2b1-4fcb-99bf-5bc8f2d1c1b3"
      },        
      {
        "owner": {
          "entity": {
            "id": "42a090f4-a2b1-4fcb-99bf-5bc8f2d1c1b3"
          }
        }
      },   
      {
        "owner": {
          "entity": {
            "ambassadors": {
              "$elemMatch": {
                "$eq": "4ea88521-031b-4279-9165-9c10e1839000"
              }
            }
          }
        }
      },
      {
        "ambassadors": {
          "$eq": "4ea88521-031b-4279-9165-9c10e1839000"
        }
      }
    ]
  },
  "sort": [
    {
      "name": "asc"
    }
  ]
}
```

getComplexQuery/userFilter transaction

```json
{
  "selector": {
    "type": "com.chain.solidary.model.transaction",
    "$or": [
      {
        "createdByPersonId": "42a090f4-a2b1-4fcb-99bf-5bc8f2d1c1b3"
      },        
      {
        "input": {
          "entity": {
            "id": "4ea88521-031b-4279-9165-9c10e1839000"
          }
        }
      },
      {
        "input": {
          "entity": {
            "ambassadors": {
              "$elemMatch": {
                "$eq": "4ea88521-031b-4279-9165-9c10e1839000"
              }
            }
          }
        }
      },
      {
        "output": {
          "entity": {
            "id": "4ea88521-031b-4279-9165-9c10e1839000"
          }
        }
      },
      {
        "output": {
          "entity": {
            "ambassadors": {
              "$elemMatch": {
                "$eq": "4ea88521-031b-4279-9165-9c10e1839000"
              }
            }
          }
        }
      }
    ]
  },
  "sort": []
}
```

```json
{
  "selector": {
    "type": "com.chain.solidary.model.person",
    "username": "282692124",
    "participant": {
      "id": "gov"
    }
  }
}
```

checkUniqueField, ignoring current id

```json
{
  "selector": {
    "type": "com.chain.solidary.model.person",
    "fiscalNumber": "182692002",
    "_id": {
      "$ne": "ead03d85-a3e7-40dc-bb7e-2074d442c6a2"
    }
  }
}
```

### Endpoints

- <http://localhost:3000/participant/>
- <http://localhost:3000/person/>

## Fix's

if have problems after install packages with `lerna add` and with chaincodes, ex with `lerna bootstrap`
and have error not found chaincode package on npm registry like `'participant-cc@^0.1.0' is not in the npm registry`, just rebuild chaincode, and next `lerna bootstrap`

```shell
$ npx lerna run build --scope @solidary-chain/participant-cc
lerna success run Ran npm script 'build' in 1 package in 3.2s:
lerna success - participant-cc
$ npx lerna bootstrap
```

## Clone Worldsibu Repository

```shell
# clone repo
$ git clone https://github.com/worldsibu/convector-example-people-attributes.git
$ cd convector-example-people-attributes
```

## Config environment

`.vscode/settings.json`

```json
{
  "files.exclude": {
    "**/node_modules/": true,
    // The following will hide the js and map files in the editor
    "**/*.js": true,
    "**/*.map": true
  }
}
```

`.vscode/launch.json`

```json
{
  "version": "0.2.0",
  "configurations": [
    {
      "type": "node",
      "request": "attach",
      "name": "Attach to Backend Server",
      "port": 9222,
      "sourceMaps": true,
      "trace" : true
    },
    {
      "type": "node",
      "request": "attach",
      "name": "Attach to Chaincode",
      "port": 9990,
      "sourceMaps": true,
      "trace" : true
    }
  ]
}
```

## Install/Update Tooling

check versions

```shell
$ hurl --version
1.0.5
$ nest --version
6.5.0
$ node --version
v8.16.0
```

> Note: tried first with `node/v11.10.0` but gives some errors with `node-gyp`, changed to `node/v8.16.0` with nvh and everything works with `npm i`

## SetUp

1. Install/Update Hurley which will help us to set up a testing network `sudo npm i -g @worldsibu/hurley`

2. Install/Update the NestJS CLI by running `npm install -g @nestjs/cli`

3. Recreate repo with `rm .git -r && git init`

4. Run `rm -rf ./packages/server-rest` to delete Express App.

5. Edit `.gitignore`

6. Move to the package folder run `cd packages && nest new server && cd ..`. This is going to scaffold a NestJS project for you.

7. Install `env-cmd` with lerna for handle environmental variables `npx lerna add env-cmd --dev --scope @solidary-chain/server-rest --no-bootstrap`

8. Install the smart contract packages that are going to be consumed by NestJS

```shell
$ npx lerna add participant-cc --scope @solidary-chain/server-rest --no-bootstrap
$ npx lerna add person-cc --scope @solidary-chain/server-rest --no-bootstrap
```

> To avoid typing conflicts add the `skipLibCheck` flag in the `root` and `server` `tsconfig` files.
> (There is a problem between Jest used by NestJS and Mocha used by Convector)

9. And lastly `npm install`

10. Commit project with `git add . && git commit -am "first commit"`

## What are we going to build?

We’re going to re-use the **two smart contracts** that were created in the smart-contract tutorial and expose them through endpoints using NestJS.

### Here is a brief explanation of what it is done in the smart contract tutorial

There are three data structures in the blockchain: **Network Participants, Attribute and Person**.

#### Each data structure is defined as

- **Network Participants**: These are the companies issuing attributes in the network. They are responsible for what they state for users and are identifiable in the network.
- **Attribute**: It’s the statement that a Network Participant certifies for a Person.
- **Person**: These are the people representation in the network. They have attributes assigned and can simply query them as needed to certify in front of a third party.

#### Business rules

- Create a person should be responsibility of just one organization — the government.
- Each organization (network participant) should be able to issue or certify attributes.
- Each organization (network participant) should be able to check/query attributes from a person.
- A single ID should be enough to query all the information related to one person and his attributes.
- Only the organization that certifies an attribute can edit it.

#### The flow should look like this

- The government can “enroll” a new person.
- The government can add some attributes to that person by default.
- Then, other organizations can start to issue attributes (profession, insurance status, work experience).
- Every change in the attributes issued will be evident. Changes on attributes can only be performed by the organization that issued them in the first place.

Let take a look to the following example to understand better:

Assume that a network participant is the **government**, a person is you and an attribute your born certificate.
The government is in charge of **registering your birth day and issue a born certificate** that you’ll store.
But for some reason your name have a typo (I’m sorry for you 😂) in the certificate and only the county court (another network participant that is not the government) can help you. The county court can **fix your name but not create another person**.

## Start Code It: Modules, Controllers and Services

```shell
# enter nestjs dir
cd packages/server-rest
# create the participant module and register it in the app module automatically.
$ nest generate module participant
```

> Every command run using the Nest CLI is going to automatically register the feature (provider, module, pipe, etc) to the **scope module** if it exists otherwise it will be added to the app module.

```shell
# create the controller:
$ nest generate controller participant
$ nest generate service participant
```

we can see that `ParticipantController` was added to `ParticipantModule` (scope module)

```typescript
@Module({
  controllers: [ParticipantController]
})
```

Let’s do very quick the same for person but this time we’re going to create a service for this module:

```shell
$ nest generate module person
$ nest generate controller person
$ nest generate service person
```

## Config/ Environment

create two files in `src` folder: `env.ts` and `convector.ts`

config package.json to use `env-cmd -f .env`

```json
"start": "env-cmd -f .env ...",
"start:dev": "env-cmd -f .env...",
"start:debug": "env-cmd -f .env ...",
"start:prod": "env-cmd -f .env ...",
```

create `packages/server-rest/.env` with

```config
PORT=3000
```

add `.env` to `.gitignore` with `echo packages/server-rest/.env >> .gitignore`

Now, what we need to do is start migrating the logic. All the code related to the communication with convector and any other heavy calculation to our services and the controllers are going to be in charge of exposing the endpoints and pass down the data to the services.

## Create files

- `packages/server-rest/src/participant/participant.controller.ts`
- `packages/server-rest/src/participant/participant.service.ts`
- `packages/server-rest/src/person/person.controller.ts`

## Run Convector and Test

Let’s run the same commands used in the back-end tutorial:

1. Make sure that Docker is running.
2. Go to the root and run:

```shell
# Start a local blockchain
$ npm run env:restart
[hurley] - Ran network restart script
[hurley] - ************ Success!
[hurley] - Complete network deployed at /home/mario/hyperledger-fabric-network
[hurley] - Setup:
        - Organizations: 2
            * org1
            * org2
        - Users per organization: user1
            * admin
            * user1
        - Channels deployed: 1
            * ch1

[hurley] - You can find the network topology (ports, names) here: /home/mario/hyperledger-fabric-network/docker-compose.yaml

# log fabric orderer container
CONTAINER_ID=$(docker ps | awk '/hyperledger\/fabric-orderer/ { print $1 }')
$ sudo docker container logs -f $CONTAINER_ID

# install the chaincode
$ npm run cc:start -- ${CHAINCODE_NAME}
Instantiated Chaincode at org1

# start your web server
$ npx lerna run start:dev --scope @solidary-chain/server-rest --stream

# seed some participants, in first invoke wait some seconds more
$ npx hurl invoke ${CHAINCODE_NAME} participant_register gov "Big Government" -u admin
$ npx hurl invoke ${CHAINCODE_NAME} participant_register mit "MIT" -u user1 -o org1
$ npx hurl invoke ${CHAINCODE_NAME} participant_register naba "National Bank" -u user1 -o org2

# test endpoints
$ curl http://localhost:3000/participant/gov
{"_id":"gov","_identities":[{"fingerprint":"81:C9:69:95:9E:12:BE:5A:98:DE:10:3B:4A:8B:80:03:9F:3E:33:E6","status":true}],"_msp":"org1MSP","_name":"Big Government","_type":"com.chain.solidary.model.participant"}

$ curl http://localhost:3000/participant/mit
{"_id":"mit","_identities":[{"fingerprint":"6F:8E:B9:AF:1E:32:E7:9F:53:8D:28:07:79:0F:9D:39:D1:62:08:45","status":true}],"_msp":"org1MSP","_name":"MIT","_type":"com.chain.solidary.model.participant"}

# run a few transactions

# Add a new person
$ curl -H "Content-Type: application/json" --request POST --data '{ "id":"1-00200-2222-1", "name":"John Doe" }' http://localhost:3000/person
{"type":"Buffer","data":[]}

# Add a new attribute
$ curl -H "Content-Type: application/json" --request POST --data '{ "attributeId":"birth-year", "content": 1993 }' http://localhost:3000/person/1-00200-2222-1/add-attribute
{"id":"1-00200-2222-1","type":"io.worldsibu.person","name":"John Doe","attributes":[{"certifierID":"gov","content":1993,"id":"birth-year","issuedDate":1565561317567,"type":"com.chain.solidary.model.attribute"}]}

# orderer logs
2019-08-11 21:54:02.746 UTC [comm.grpc.server] 1 -> INFO 015 streaming call completed {"grpc.start_time": "2019-08-11T21:54:02.738Z", "grpc.service": "orderer.AtomicBroadcast", "grpc.method": "Broadcast", "grpc.peer_address": "172.23.0.1:45590", "grpc.code": "OK", "grpc.call_duration": "8.294983ms"}
2019-08-11 21:55:04.935 UTC [comm.grpc.server] 1 -> INFO 016 streaming call completed {"grpc.start_time": "2019-08-11T21:55:04.931Z", "grpc.service": "orderer.AtomicBroadcast", "grpc.method": "Broadcast", "grpc.peer_address": "172.23.0.1:45890", "grpc.code": "OK", "grpc.call_duration": "4.081646ms"}
2019-08-11 21:55:37.822 UTC [comm.grpc.server] 1 -> INFO 017 streaming call completed {"grpc.start_time": "2019-08-11T21:55:37.817Z", "grpc.service": "orderer.AtomicBroadcast", "grpc.method": "Broadcast", "grpc.peer_address": "172.23.0.1:46062", "grpc.code": "OK", "grpc.call_duration": "4.932098ms"}
```

## Extend tutorial

### Commit project

```shell
$ git add . && git commit -am "finished tutorial"
```

### add Types to `Participant` and `Person` Modules and Use it [DEPRECATED]

- `packages/server-rest/src/participant/types/participant.ts`
- `packages/server-rest/src/participant/types/index.ts`
- `packages/server-rest/src/person/types/index.ts`
- `packages/server-rest/src/person/types/person.ts`

### To Use CouchDB and don't DRY Initialization block in Controllers

1. Create `initCouchDB` in `AppService` and add it to `constructor` this way it will be re-used in all controllers without any further changes

```typescript
@Injectable()
export class AppService {

  constructor() {
    // init CouchDB before use it
    this.initCouchDB();
  }

  initCouchDB() {
    BaseStorage.current = new CouchDBStorage({
      host: couchDBHost,
      protocol: couchDBProtocol,
      port: couchDBPort,
    }, e.couchDBView);
  }
}
```

### Couch Views (Require to add to all nodes fabric-couchdb/ couchdb.peer0.org?.hurley.lab)

```shell
$ ./views/install.sh
Installing template views
{"ok":true,"id":"_design/person","rev":"1-a1afaedf5e49e4f592a3089e599b0f8f"}
Installed template views
```

## Fire All Requests

```shell
# create participant (chain)
$ npx hurl invoke ${CHAINCODE_NAME} participant_register red "Red Cross"
$ curl -X POST \
  http://localhost:3000/participant \
  -H 'Content-Type: application/json' \
  -d '{
    "id":"red",
    "name": "Red Cross"
  }'
# get participant ${CHAINCODE_NAME} (chain)
$ npx hurl invoke ${CHAINCODE_NAME} participant_get red
$ curl http://localhost:3000/participant/red | jq

# create ${CHAINCODE_NAME} (chain) : REQUIRED to use admin user (belongs to org1/gov)
$ npx hurl invoke ${CHAINCODE_NAME} person_create '{"id":"1-100-104", "name": "1-100-104"}' -u admin
$ curl -X POST \
  http://localhost:3000/person \
  -H 'Content-Type: application/json' \
  -d '{
    "id":"1-100-104",
    "name": "Jane Doe"
  }'

# get ${CHAINCODE_NAME} (chain)
$ npx hurl invoke ${CHAINCODE_NAME} person_get 1-100-103
$ curl http://localhost:3000/person/1-100-103 | jq

# get all persons (worldState/couchdb)
$ npx hurl invoke ${CHAINCODE_NAME} person_getAll
$ curl http://localhost:3000/person | jq

# addAttribute
$ npx hurl invoke ${CHAINCODE_NAME} person_addAttribute 1-100-103 '{"id": "birth-year", "certifierID": "gov", "content": "1993", "issuedDate": 1554239270 }' -u admin
$ curl -X POST \
  http://localhost:3000/person/1-100-103/add-attribute \
  -H 'Content-Type: application/json' \
  -d '{
    "attributeId":"birth-year",
    "content": "1971"
  }' | jq

# getByAttribute
$ npx hurl invoke ${CHAINCODE_NAME} person_getByAttribute birth-year 1971
$ curl -X POST \
  http://localhost:3000/person/birth-year/get-attribute \
  -H 'Content-Type: application/json' \
  -d '{
    "value": "1971"
  }' | jq
```

## Test/Jest

fix errors

### Error 1

```
FAIL  src/participant/participant.controller.spec.ts
● Test suite failed to run

Cannot find module './build/Release/x509' from 'index.js'

However, Jest was able to find:
    'build/Release/x509.node'

You might want to include a file extension in your import, or update your 'moduleFileExtensions', which is currently ['js', 'json', 'ts'].
```

add `"node"` to `packages/server-rest/package.json`

```json
"jest": {
  "moduleFileExtensions": [
    "js",
    "json",
    "ts",
    "node"
  ]
```

### error 3

```
FAIL  src/person/person.controller.spec.ts
● Person Controller › should be defined

  Nest can't resolve dependencies of the PersonController (?). Please make sure that the argument at index [0] is available in the _RootTestModule context.

    at Injector.lookupComponentInExports (../../../node_modules/@nestjs/core/injector/injector.js:183:19)

● Person Controller › should be defined

  expect(received).toBeDefined()

  Received: undefined

    14 |
    15 |   it('should be defined', () => {
  > 16 |     expect(controller).toBeDefined();
        |                        ^
    17 |   });
    18 | });
    19 |

    at Object.it (person/person.controller.spec.ts:16:24)
```

Fix: was adding missing `providers: [PersonService]` on `packages/server-rest/src/person/person.controller.spec.ts`

```typescript
beforeEach(async () => {
  const module: TestingModule = await Test.createTestingModule({
    controllers: [PersonController],
    providers: [PersonService],
  }).compile();

  controller = module.get<PersonController>(PersonController);
});
```

## Implement Swagger Docs

### Install dependencies

```shell
# install the required packages
$ npx lerna add @nestjs/swagger --scope @solidary-chain/server-rest --no-bootstrap
$ npx lerna add swagger-ui-express --scope @solidary-chain/server-rest --no-bootstrap
# required for models
$ npx lerna add class-validator --scope @solidary-chain/server-rest --no-bootstrap
$ npx lerna add class-transformer --scope @solidary-chain/server-rest --no-bootstrap
$ npx lerna bootstrap
```

### Initialize the Swagger using SwaggerModule

- [Nest.JS OpenAPI (Swagger)](https://docs.nestjs.com/recipes/swagger)

add to `packages/server-rest/src/env.ts`

```typescript
  ...
  // swaggerModule
  swaggerModuleTitle: process.env.SWAGGER_MODULE_TITLE || 'Person ChainCode',
  swaggerModuleDescription: process.env.SWAGGER_MODULE_DESCRIPTION || 'Convector Person ChainCode API',
  swaggerModuleVersion: process.env.SWAGGER_MODULE_VERSION || '1.0',
  swaggerApiPath: process.env.SWAGGER_API_PATH || 'api',
  swaggerModuleTagAuth: process.env.SWAGGER_MODULE_TAG_AUTH || 'auth',
  swaggerModuleTagPerson: process.env.SWAGGER_MODULE_TAG_PERSON || 'person',
  swaggerModuleTagParticipant: process.env.SWAGGER_MODULE_TAG_PERSON || 'participant',
};
```

add to `packages/server-rest/src/main.ts`

```typescript
import { SwaggerModule, DocumentBuilder } from '@nestjs/swagger';
...
async function bootstrap() {
  const app = await NestFactory.create(AppModule);

  // initialize SwaggerModule
  const options = new DocumentBuilder()
    .setTitle(e.swaggerModuleTitle)
    .setDescription(e.swaggerModuleDescription)
    // .addTag('person')
    .addTag(`${e.swaggerApiPath}/${e.swaggerModuleTagPerson}`)
    .build();
  const document = SwaggerModule.createDocument(app, options);
  SwaggerModule.setup(e.swaggerApiPath, app, document);

  await app.listen(3000);
}
...
```

### Redirect root to Api

change default `@Get` controller in `packages/server-rest/src/app.controller.ts` to

```typescript
@Controller()
export class AppController {
  constructor(private readonly appService: AppService) { }

  @Get()
  @ApiExcludeEndpoint()
  redirectToApi(@Res() response: express.Response) {
    response.redirect(e.swaggerApiPath, HttpStatus.PERMANENT_REDIRECT);
  }
}
```

### Test Swagger Api and Redirect

```shell
# boot server and test api docs
$ npx lerna run start:dev --scope @solidary-chain/server-rest --stream
```

open your browser and navigate to <http://localhost:3000/api/>
to download swagger JSON file, fire request to <http://localhost:3000/api-json>
test redirect navigate to <http://localhost:3000> this will redirect to <http://localhost:3000/api/>

### Create Swagger DTO's

now we need to create model/DTO's for all endpoints that have `@Body`

`packages/server-rest/src/participant/dto/register-participant.dto.ts`

```typescript
import { ApiModelProperty } from '@nestjs/swagger';
import { IsString } from 'class-validator';

export class RegisterParticipantDto {
  @ApiModelProperty()
  @IsString()
  readonly id: string;

  @ApiModelProperty()
  @IsString()
  readonly name: string;
}
```

`packages/server-rest/src/person/dto/add-person-attribute.dto.ts`

```typescript
import { ApiModelProperty } from '@nestjs/swagger';
import { IsString } from 'class-validator';

export class AddPersonAttributeDto {
  @ApiModelProperty()
  @IsString()
  readonly attributeId: string;

  @ApiModelProperty()
  readonly content: any;
}
```

`packages/server-rest/src/person/dto/create-person.dto.ts`

```typescript
import { ApiModelProperty } from '@nestjs/swagger';
import { IsString } from 'class-validator';

export class CreatePersonDto {
  @ApiModelProperty()
  @IsString()
  readonly id: string;

  @ApiModelProperty()
  @IsString()
  readonly name: string;
}
```

`packages/server-rest/src/person/dto/get-person-by-attribute.dto.ts`

```typescript
import { ApiModelProperty } from '@nestjs/swagger';

export class GetPersonByAttributeDto {
  @ApiModelProperty()
  readonly value: any;
}
```

now replace json objects ex { id, name } with DTO's

`packages/server-rest/src/participant/participant.controller.ts`

```typescript
import { RegisterParticipantDto } from './dto';
...
@Post()
public async register(@Body() participantDto: RegisterParticipantDto): Promise<void> {
  try {
    return await ParticipantControllerBackEnd.register(participantDto.id, participantDto.name);
  } catch (err) {
    Logger.error(JSON.stringify(err));
    throw new HttpException(`Bad request: ${err.message}`, HttpStatus.BAD_REQUEST);
  }
}
```

`packages/server-rest/src/person/person.controller.ts`

```typescript
@Post('/')
public async create(@Body() createPersonDto: CreatePersonDto) {
  try {
    return this.personService.create(createPersonDto.id, createPersonDto.name);
  } catch (err) {
    Logger.error(JSON.stringify(err));
    const message: string = (err.responses[0]) ? err.responses[0].error.message : 'Internal';
    throw new HttpException(message, HttpStatus.INTERNAL_SERVER_ERROR);
  }
}

@Post('/:id/add-attribute')
public async addAttribute(@Param() { id }, @Body() addPersonAttributeDto: AddPersonAttributeDto) {
  try {
    return this.personService.addAttribute(id, addPersonAttributeDto.attributeId, addPersonAttributeDto.content);
  } catch (err) {
    Logger.error(JSON.stringify(err));
    throw new HttpException('Internal', HttpStatus.INTERNAL_SERVER_ERROR);
  }
}

@Post('/:id/get-attribute')
public async getByAttribute(@Param() { id }, @Body() getPersonByAttributeDto: GetPersonByAttributeDto) {
  try {
    return this.personService.getByAttribute(id, getPersonByAttributeDto.value);
  } catch (err) {
    Logger.error(JSON.stringify(err));
    throw new HttpException('Internal', HttpStatus.INTERNAL_SERVER_ERROR);
  }
}
```

### Global constant file

create a `packages/server-rest/src/constants.ts` file to prevent DRY/hard-code strings

ex

```typescript
// api : https status
const API_RESPONSE_BAD_REQUEST: string = 'Bad Request';
const API_RESPONSE_CREATED: string = 'The record has been successfully created';
const API_RESPONSE_INTERNAL_SERVER_ERROR: string = 'Internal server error';
...
```

> Note: view source code files

### Swagger : @ApiResponse decorators

add `packages/server-rest/src/participant/participant.controller.ts` and `packages/server-rest/src/person/person.controller.ts`

ex

```typescript
  @Get()
  @ApiOperation({ title: r.API_RESPONSE_GET_PARTICIPANT })
  @ApiOkResponse({ description: r.API_RESPONSE_FOUND_RECORDS })
  @ApiBadRequestResponse({ description: r.API_RESPONSE_BAD_REQUEST })
  public async getAll() {
  ...
```

> Note: view source code files

## Add HTTPS to Server

```shell
# install dependencies required to use ExpressAdapter
$ npx lerna add @nestjs/platform-express --scope @solidary-chain/server-rest --no-bootstrap
```

> use let's encrypt certificates, or self-signed, here we use self-signed for a fictitious domain `convector.sample.com`

```shell
# create dir to store self-signed certificates
$ mkdir packages/server-rest/config -p && cd packages/server-rest/config
# set/change domain
$ FICTITIOUS_DOMAIN=convector.sample.com
$ FILENAME_CERT=server.crt
$ FILENAME_KEY=server.key
# generate certificate
$ openssl genrsa -out $FILENAME_KEY 2048
$ openssl req -new -x509 -key $FILENAME_KEY -out $FILENAME_CERT -days 3650 -subj /CN=$FICTITIOUS_DOMAIN
# check a certificate and return information about it
$ openssl x509 -in $FILENAME_CERT -text -noout
Certificate:
    Data:
        Version: 3 (0x2)
        Serial Number:
            b6:4f:d4:4e:06:98:ec:ce
    Signature Algorithm: sha256WithRSAEncryption
        Issuer: CN = convector.sample.com
        Validity
            Not Before: Aug 16 15:33:23 2019 GMT
            Not After : Aug 13 15:33:23 2029 GMT
        Subject: CN = convector.sample.com
        Subject Public Key Info:
            Public Key Algorithm: rsaEncryption
                Public-Key: (2048 bit)
                Modulus:
                    00:aa:d1:4b:20:07:53:ee:ae:f8:e1:c3:6c:d7:a0:
                    e8:75:0b:ee:1d:b1:42:ca:0f:17:11:4b:0f:a8:75:
                    01:21:32:f0:24:b0:32:c8:6e:5d:2c:3d:4a:15:d7:
# check the SSL key and verify the consistency
$ openssl rsa -in $FILENAME_KEY -check
RSA key ok
writing RSA key
# check Validity
$ openssl x509 -in server.crt -text -noout | grep "Not After"
Not After : Aug 13 17:15:39 2029 GMT
```

> if want to certificate use FQDN domain ex <https://convector.sample.com:3000>, edit hosts and add FQDN

```shell
$ sudo nano /etc/hosts
# add
127.0.0.1       convector.sample.com
```

now we can use <https://convector.sample.com:3443> or <https://localhost:3443/api/>

one last change, change swagger scheme to https with `.setSchemes('https')` in `packages/server-rest/src/main.ts`

```typescript
const options = new DocumentBuilder()
  .setTitle(e.swaggerModuleTitle)
  .setDescription(e.swaggerModuleDescription)
  // .addTag('person')
  .addTag(`${e.swaggerApiPath}/${e.swaggerModuleTagPerson}`)
  .setSchemes('https')
  .build();
```

### Add Redirect Middleware (HTTP to HTTPS)

`packages/server-rest/src/middleware/redirect-middleware.ts`

```typescript
import { NextFunction, Request, Response } from 'express';
import { envVariables as e } from './env';

// custom redirect middleware
export const redirectMiddleware = (req: Request, res: Response, next: NextFunction) => {
  if (!/https/.test(req.protocol)) {
    const redirectUrl = `https://${req.hostname}:${e.httpsPort}${req.originalUrl}`;
    res.redirect(redirectUrl);
  } else {
    return next();
  }
};
```

add `app.use(redirectMiddleware);` to `packages/server-rest/src/main.ts`

```typescript
...
async function bootstrap() {
  ...
  const app = await NestFactory.create(
    AppModule,
    new ExpressAdapter(server),
  );
  // middleware: redirect
  app.use(redirectMiddleware);
```

### Test Https and HTTP to HTTPS Redirect

```shell
# launch server
$ npx lerna run start:debug --scope @solidary-chain/server-rest --stream
```

now test http to https redirect, and https

### Enable CORS

add cors to `packages/server-rest/src/main.ts`

```typescript
async function bootstrap() {
  const app = await NestFactory.create(AppModule);
  ...
  // enable cors
  app.enableCors();
  ...
```

## [Authentication](https://docs.nestjs.com/techniques/authentication)

- [NestJs: Authentication](https://docs.nestjs.com/techniques/authentication)

use passport strategy called passport-local that implements a username/password authentication mechanism, which suits our needs for this portion of our use case.

```shell
# install the required packages
$ npx lerna add @nestjs/passport --scope @solidary-chain/server-rest --no-bootstrap
$ npx lerna add passport --scope @solidary-chain/server-rest --no-bootstrap
$ npx lerna add passport-local --scope @solidary-chain/server-rest --no-bootstrap
$ npx lerna add @types/passport-local  --scope @solidary-chain/server-rest --dev --no-bootstrap
$ npx lerna bootstrap
```

start by generating an `AuthModule` and in it, an `AuthService`

```shell
# create auth module and service
$ cd packages/server-rest/
$ nest g module auth
$ nest g service auth
$ cd ../..
```

as we implement the `AuthService`, we'll find it useful to encapsulate user operations in a `UsersService`, so let's generate that module and service now:

```shell
# create users module and service
$ cd packages/server-rest/
$ nest g module users
$ nest g service users
$ cd ../..
```

replace the default contents of these generated files as shown below.

`packages/server-rest/src/users/users.service.ts`

```typescript
import { Injectable } from '@nestjs/common';

export type User = any;

@Injectable()
export class UsersService {
  private readonly users: User[];

  constructor() {
    this.users = [
      {
        userId: 1,
        username: 'john',
        password: 'changeme',
      },
      {
        userId: 2,
        username: 'chris',
        password: 'secret',
      },
      {
        userId: 3,
        username: 'maria',
        password: 'guess',
      },
    ];
  }

  async findOne(username: string): Promise<User | undefined> {
    return this.users.find(user => user.username === username);
  }
}
```

add `exports: [UsersService],` to `packages/server-rest/src/users/users.module.ts`

```typescript
import { Module } from '@nestjs/common';
import { UsersService } from './users.service';

@Module({
  providers: [UsersService],
  exports: [UsersService],
})

export class UsersModule { }
```

`AuthService` has the job of retrieving a user and verifying the password. We create a `validateUser()` method for this purpose

`packages/server-rest/src/auth/auth.service.ts`

```typescript
import { Injectable } from '@nestjs/common';
import { UsersService } from '../users/users.service';

@Injectable()
export class AuthService {
  constructor(private readonly usersService: UsersService) { }

  async validateUser(username: string, pass: string): Promise<any> {
    const user = await this.usersService.findOne(username);
    if (user && user.password === pass) {
      const { password, ...result } = user;
      return result;
    }
    return null;
  }
}
```

update our `AuthModule` to import the `UsersModule`

`packages/server-rest/src/auth/auth.module.ts`

```typescript
import { Module } from '@nestjs/common';
import { AuthService } from './auth.service';
import { UsersModule } from '../users/users.module';

@Module({
  imports: [UsersModule],
  providers: [AuthService],
})

export class AuthModule { }
```

### Authentication: [Implementing Passport local](https://docs.nestjs.com/techniques/authentication#implementing-passport-local)

implement our Passport local authentication strategy. Create a file called `local.strategy.ts` in the auth folder, and add the following code:

`packages/server-rest/src/auth/local.strategy.ts`

```typescript
import { Strategy } from 'passport-local';
import { PassportStrategy } from '@nestjs/passport';
import { Injectable, UnauthorizedException } from '@nestjs/common';
import { AuthService } from './auth.service';

@Injectable()
export class LocalStrategy extends PassportStrategy(Strategy) {
  constructor(private readonly authService: AuthService) {
    super();
  }

  async validate(username: string, password: string): Promise<any> {
    const user = await this.authService.validateUser(username, password);
    if (!user) {
      throw new UnauthorizedException();
    }
    return user;
  }
}
```

configure our `AuthModule` to use the Passport features we just defined. Update `auth.module.ts` to look like this:

`packages/server-rest/src/auth/auth.module.ts`

```typescript
import { Module } from '@nestjs/common';
import { AuthService } from './auth.service';
import { UsersModule } from '../users/users.module';
import { PassportModule } from '@nestjs/passport';
import { LocalStrategy } from './local.strategy';

@Module({
  imports: [UsersModule, PassportModule],
  providers: [AuthService, LocalStrategy],
})

export class AuthModule { }
```

### Authentication: [Built-in Passport Guards](https://docs.nestjs.com/techniques/authentication#built-in-passport-guards)

Login route

implement a bare-bones `/api/login` route, and apply the built-in Guard to initiate the passport-local flow.

add `/api/login` to `packages/server-rest/src/app.controller.ts`

```typescript
import { Controller, Get, HttpStatus, Post, Request, Res, UseGuards } from '@nestjs/common';
import { AuthGuard } from '@nestjs/passport';
import { ApiExcludeEndpoint } from '@nestjs/swagger';
import { AppService } from './app.service';
import { envVariables as e } from './env';
import express = require('express');

@Controller()
export class AppController {
  constructor(private readonly appService: AppService) { }

  @Get()
  @ApiExcludeEndpoint()
  redirectToApi(@Res() response: express.Response) {
    response.redirect(e.swaggerApiPath, HttpStatus.PERMANENT_REDIRECT);
  }

  @UseGuards(AuthGuard('local'))
  @Post(`/${e.swaggerApiPath}/login`)
  @ApiUseTags(e.swaggerModuleTagAuth)
  async login(@Request() req) {
    return req.user;
  }
}
```

with `@UseGuards(AuthGuard('local'))` we are using an `AuthGuard` that `@nestjs/passport` automatically provisioned for us when we extended the `passport-local` strategy...

launch server and test `/api/login` with a static user ex john/changeme

```shell
$ curl -k -X POST https://localhost:3443/api/login -d '{ "username": "john", "password": "changeme"}' -H 'Content-Type: application/json'

{"userId":1,"username":"john"}
```

### Authentication: [JWT functionality](https://docs.nestjs.com/techniques/authentication#jwt-functionality)

- Allow users to authenticate with username/password, returning a JWT for use in subsequent calls to protected API endpoints. We're well on our way to meeting this requirement. To complete it, we'll need to write the code that issues a JWT.
- Create API routes which are protected based on the presence of a valid JWT as a bearer TOKEN

```shell
# install the required packages
$ npx lerna add @nestjs/jwt --scope @solidary-chain/server-rest --no-bootstrap
$ npx lerna add passport-jwt --scope @solidary-chain/server-rest --no-bootstrap
$ npx lerna add @types/passport-jwt  --scope @solidary-chain/server-rest --no-bootstrap --dev
$ npx lerna bootstrap
```

> The `@nest/jwt` package (see more [here](https://github.com/nestjs/jwt)) is a utility package that helps with **JWT manipulation**.
> The `passport-jwt` package is the Passport package that **implements the JWT strategy** and `@types/passport-jwt` provides the TypeScript type definitions.

update `packages/server-rest/src/auth/auth.service.ts` with `/api/login` route

```typescript
import { Injectable } from '@nestjs/common';
import { UsersService } from '../users/users.service';
import { JwtService } from '@nestjs/jwt';

@Injectable()
export class AuthService {
  constructor(
    private readonly usersService: UsersService,
    private readonly jwtService: JwtService,
  ) { }

  async validateUser(username: string, pass: string): Promise<any> {
    const user = await this.usersService.findOne(username);
    if (user && user.password === pass) {
      const { password, ...result } = user;
      return result;
    }
    return null;
  }

  async login(user: any) {
    // note: we choose a property name of sub to hold our userId value to be consistent with JWT standards
    const payload = { username: user.username, sub: user.userId };
    return {
      // generate JWT from a subset of the user object properties
      accessToken: this.jwtService.sign(payload),
    };
  }
}
```

update the `AuthModule` to import the new dependencies and configure the `JwtModule`

add `packages/server-rest/src/auth/constants.ts`

```typescript
const jwtSecret = process.env.ACCESS_TOKEN_JWT_SECRET = 'secretKey';
const expiresIn = process.env.ACCESS_TOKEN_EXPIRES_IN = '60s';

export const jwtConstants = {
  secret: jwtSecret,
  expiresIn: expiresIn,
};
```

add to `.env` `ACCESS_TOKEN_JWT_SECRET` env variable ex `ACCESS_TOKEN_JWT_SECRET=uKxHrE431MRgYoI8G6JKePsKhQ71kdZX`

now update `packages/server-rest/src/auth/auth.module.ts` with

```typescript
import { Module } from '@nestjs/common';
import { AuthService } from './auth.service';
import { LocalStrategy } from './local.strategy';
import { UsersModule } from '../users/users.module';
import { PassportModule } from '@nestjs/passport';
import { JwtModule } from '@nestjs/jwt';
import { jwtConstants } from './constants';

@Module({
  imports: [
    UsersModule,
    // configure the JwtModule using register(), passing configuration object
    PassportModule,
    JwtModule.register({
      secret: jwtConstants.secret,
      signOptions: { expiresIn: jwtConstants.expiresIn },
    }),
  ],
  providers: [AuthService, LocalStrategy],
  exports: [AuthService],
})

export class AuthModule { }
```

update the `/api/login` route to return a JWT `return this.authService.login(req.user);`

```typescript
  ...
  @Post('login')
  async login(@Request() req) {
    return this.authService.login(req.user);
  }
}
```

test routes using cURL again. You can test with any of the user objects hard-coded in the UsersService.

```shell
$ # POST to /api/login
$ curl -k -X POST https://localhost:3443/api/login -d '{"username": "john", "password": "changeme"}' -H "Content-Type: application/json"{"accessToken":"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpX..."}
```

### Authentication: [Implementing Passport JWT](https://docs.nestjs.com/techniques/authentication#implementing-passport-jwt)

We can now address our final requirement: protecting endpoints by requiring a valid JWT be present on the request.
Passport can help us here too. It provides the `passport-jwt` strategy for securing RESTful endpoints with JSON Web Tokens.
Start by creating a file called `jwt.strategy.ts` in the `auth` folder, and add the following code:

add interface `packages/server-rest/src/auth/types/jwt-payload.interface.ts`

```typescript
export interface JwtPayload {
  exp: number;
  iat: number;
  sub: string | number;
  username: number;
}
```

`packages/server-rest/src/auth/jwt.strategy.ts`

```typescript
import { ExtractJwt, Strategy } from 'passport-jwt';
import { PassportStrategy } from '@nestjs/passport';
import { Injectable } from '@nestjs/common';
import { jwtConstants } from './constants';

@Injectable()
export class JwtStrategy extends PassportStrategy(Strategy) {
  // strategy requires some initialization
  constructor() {
    super({
      jwtFromRequest: ExtractJwt.fromAuthHeaderAsBearerToken(),
      ignoreExpiration: false,
      secretOrKey: jwtConstants.secret,
    });
  }

  async validate(payload: JwtPayload) {
    return {
      userId: payload.sub,
      username: payload.username,
    };
  }
}
```

Add the new `JwtStrategy` as a provider in the `AuthModule`

```typescript
import { JwtStrategy } from './jwt.strategy';
...
providers: [AuthService, LocalStrategy, JwtStrategy]
...
```

### Authentication: [Implement protected route and JWT strategy guards](https://docs.nestjs.com/techniques/authentication#implement-protected-route-and-jwt-strategy-guards)

implement protected route and its associated Guard.

update `packages/server-rest/src/app.controller.ts` adding `/me` routte

```typescript
  ...
  @UseGuards(AuthGuard('jwt'))
  @ApiUseTags(`${e.swaggerApiPath}/${e.swaggerModuleTagAuth}`)
  @Get(`/${e.swaggerApiPath}/me`)
  getProfile(@Request() req) {
    return req.user;
  }
}
```

test the routes using cURL.

```shell
$ # GET /api/me
$ curl -k -X GET https://localhost:3443/api/me
# {"statusCode":401,"error":"Unauthorized"}
# POST /api/login
$ curl -k -X POST https://localhost:3443/api/login -d '{"username": "john", "password": "changeme"}' -H "Content-Type: application/json"
# {"accessToken":"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2Vybm... }
# GET /api/me using accessToken returned from previous step as bearer code
$ JWT=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VybmFtZSI6ImpvaG4iLCJzdWIiOjEsImlhdCI6MTU2NjE1NTUzMiwiZXhwIjoxNTY2MTU5MTMyfQ.odYGDW2O_DTXKaz3l3oikhAtDgUSmxdWvjIqPODCicU
$ curl -k -X GET https://localhost:3443/api/me -H "Authorization: Bearer ${JWT}"
# {"userId":1,"username":"john"}
```

### Authentication: [Default strategy](https://docs.nestjs.com/techniques/authentication#default-strategy)

We need to do this because we've introduced two Passport strategies (`passport-local` and `passport-jwt`), both of which supply implementations of various Passport components. Passing the name disambiguates which implementation we're linking to. When multiple strategies are included in an application, **we can declare a default strategy so that we no longer have to pass the name in the `@AuthGuard` decorator** if using that default strategy. 
Here's how to register a default strategy when importing the `PassportModule`. This code would go in the `AuthModule`:

add `PassportModule.register({ defaultStrategy: 'jwt' }` to `packages/server-rest/src/auth/auth.module.ts` imports

```typescript
...
@Module({
  imports: [
    PassportModule.register({ defaultStrategy: 'jwt' }),
    UsersModule,
    JwtModule.register({
      secret: jwtConstants.secret,
      signOptions: { expiresIn: jwtConstants.expiresIn },
    }),
  ],
 ...
```

to use `defaultStrategy` we need to add `PassportModule.register({ defaultStrategy: 'jwt' })` to every import module where you want to use default strategy.
else we have an erro 500 when try to use `@UseGuards(AuthGuard())` in modules where we dont't add it to import

add to `packages/server-rest/src/participant/participant.module.ts` and `packages/server-rest/src/person/person.module.ts`

```typescript
@Module({
  ...
  imports: [
    PassportModule.register({ defaultStrategy: 'jwt' }),
  ],
})
```

for more info about issue read [@nestjs/jwt - Cannot read property 'challenge' of undefined](https://github.com/nestjs/nest/issues/1031)

### Authentication: Guards, BearerAuth and Response decorators

add jwt Guards, BearerAuth and Unauthorized Response decorator to all routes

`packages/server-rest/src/app.controller.ts`
`packages/server-rest/src/person/person.controller.ts`
`packages/server-rest/src/participant/participant.controller.ts`

```typescript
@ApiBearerAuth()
@UseGuards(AuthGuard())
...
@ApiUnauthorizedResponse({ description: r.API_RESPONSE_UNAUTHORIZED })
```

### Authentication: Finish App controller Login and Profile routes

first add some DTO's

`packages/server-rest/src/auth/dto/index.ts`

```typescript
export * from './login-user.dto';
```

`packages/server-rest/src/auth/dto/login-user.dto.ts`

```typescript
import { ApiModelProperty } from '@nestjs/swagger';
import { IsString, IsNotEmpty } from 'class-validator';

export class LoginUserDto {
  @ApiModelProperty()
  @IsString()
  @IsNotEmpty()
  readonly username: string;

  @ApiModelProperty()
  @IsString()
  @IsNotEmpty()
  readonly password: string;
}
```

`packages/server-rest/src/auth/dto/login-user-response.dto.ts`

```typescript
import { ApiModelProperty } from '@nestjs/swagger';
import { IsString } from 'class-validator';

export class LoginUserResponseDto {
  @ApiModelProperty()
  @IsString()
  readonly accessToken: string;
}
```

`packages/server-rest/src/auth/dto/get-profile-response.dto.ts`

```typescript
import { ApiModelProperty } from '@nestjs/swagger';
import { IsString, IsNotEmpty } from 'class-validator';

export class GetProfileResponseDto {
  @ApiModelProperty()
  @IsString()
  @IsNotEmpty()
  readonly userId: string;

  @ApiModelProperty()
  @IsString()
  @IsNotEmpty()
  readonly username: string;
}
```

add all decorators and dto's to routes in `packages/server-rest/src/app.controller.ts`

```typescript
  ...
  @Post(`/${e.swaggerApiPath}/login`)
  @ApiUseTags(e.swaggerModuleTagAuth)
  @UseGuards(AuthGuard('local'))
  @ApiOperation({ title: r.API_OPERATION_AUTH_LOGIN })
  @ApiCreatedResponse({ description: r.API_RESPONSE_LOGIN, type: LoginUserResponseDto })
  @ApiInternalServerErrorResponse({ description: r.API_RESPONSE_INTERNAL_SERVER_ERROR })
  @ApiUnauthorizedResponse({ description: r.API_RESPONSE_UNAUTHORIZED })
  async login(@Request() req, @Body() loginUserDto: LoginUserDto) {
    return this.authService.login(req.user);
  }

  @Get(`/${e.swaggerApiPath}/me`)
  @ApiUseTags(e.swaggerModuleTagAuth)
  @UseGuards(AuthGuard('jwt'))
  @ApiBearerAuth()
  @ApiOperation({ title: r.API_OPERATION_GET_PROFILE })
  @ApiOkResponse({ description: r.API_RESPONSE_GET_PROFILE, type: GetProfileResponseDto })
  @ApiInternalServerErrorResponse({ description: r.API_RESPONSE_INTERNAL_SERVER_ERROR })
  @ApiUnauthorizedResponse({ description: r.API_RESPONSE_UNAUTHORIZED })
  getProfile(@Request() req) {
    return req.user;
  }
}
```

note for: `@Body() createPersonDto` to `packages/server-rest/src/app.controller.ts`, require to have the object in swagger parameters

### Authentication: Test Swagger With Authentication

1. enter <https://localhost:3443/api>
2. expand auth swagger tag
3. fire login request with `{ "username": "john", "password": "changeme" }`
4. copy `accessToken` to clipboard
5. click **authorize** button or **lock icon** and add 'Bearer PASTE-JWT-HERE'
6. fire get profile request. or other protected resource

done.....we have protected api and use it in swagger

> tip: if using curl with self-signed certificate use `-k`  or `--insecure` flag to allow for insecure server connections, else we have the classical response

```
curl failed to verify the legitimacy of the server and therefore could not
establish a secure connection to it. To learn more about this situation and
how to fix it, please visit the web page mentioned above.
```

## Change/Extend Person model to have authorization credentials

this refactor requires change some files, to use new model properties firstname, lastname, username, password and email

start change person chaincode, adding a few property fields and replace `name` to `firstname`

`packages/person-cc/src/person.model.ts`

```typescript

export class Person extends ConvectorModel<Person> {
  @Required()
  public readonly type = 'com.chain.solidary.model.person';

  @Required()
  @Validate(yup.string())
  public firstname: string;

  @Required()
  @Validate(yup.string())
  public lastname: string;

  @Required()
  @Validate(yup.string())
  public username: string;

  @Required()
  @Validate(yup.string()
    .min(8, 'Password is too short - should be 8 chars minimum.')
    .matches(/[1-9a-zA-Z]/, 'Password can only contain Latin letters and numbers.')
  )
  public password: string;

  @Required()
  @Validate(yup.string()
    .matches(/^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$/i, 'Invalid email')
  )
  public email: string;

  @Validate(yup.array(Attribute.schema()))
  public attributes: Array<Attribute>;
}
```

change person controller to use `CreatePersonDto`

`packages/server-rest/src/person/person.controller.ts`

replace id, name arguments

```typescript
public async create(@Body() createPersonDto: CreatePersonDto): Promise<void> {
  try {
    return this.personService.create(createPersonDto.id, createPersonDto.name);
```

with `CreatePersonDto`

```typescript
public async create(@Body() createPersonDto: CreatePersonDto): Promise<void> {
  try {
    return this.personService.create(createPersonDto);
```

next do the same in, replace `personService.create` arguments signature from id, name to use `CreatePersonDto`

`packages/server-rest/src/person/person.service.ts`

```typescript
public async create(id: string, name: string) {
  try {
    const personToCreate = new Person({ id, name });
    return await PersonControllerBackEnd.create(personToCreate);
  } catch (err) {
    throw err;
  }
}
```

change to

```typescript
public async create(createPersonDto: CreatePersonDto) {
  try {
    const personToCreate = new Person({ ...createPersonDto });
    return await PersonControllerBackEnd.create(personToCreate);
  } catch (err) {
    throw err;
  }
}
```

to finish refactor, we must change `person.spec.ts` tests, change occurences of id, name, to id, firstname, lastname

`packages/person-cc/tests/person.spec.ts`

```typescript
...
  it('should try to create a person but no government identity has been registered', async () => {
    const personSample = new Person({
      id: personId,
      firstname: 'Walter',
      lastname: 'Montes',
    });
...
  it('should create a person', async () => {
    const personSample = new Person({
      id: personId,
      firstname: 'Walter',
      lastname: 'Montes',
    });

    ...

    expect(justSavedModel.firstname).to.exist;
    expect(justSavedModel.lastname).to.exist;
  });
...
  it('should try to create a person but the MIT cannot', async () => {
    const personSample = new Person({
      id: personId + '1111',
      firstname: 'Walter',
      lastname: 'Montes'
    });  
```

change `seed.sh` to reflect new model

```shell
echo "Creating participant: Big Government"
npx hurl invoke ${CHAINCODE_NAME} participant_register gov "Big Government" -u admin

echo "Creating participant: MIT"
npx hurl invoke ${CHAINCODE_NAME} participant_register mit "MIT" -u user1 -o org1

echo "Creating participant: National Bank"
npx hurl invoke ${CHAINCODE_NAME} participant_register naba "National Bank" -u user1 -o org2

echo "Creating person: John Doe"
npx hurl invoke ${CHAINCODE_NAME} person_create "{ \"id\": \"1-100-100\", \"firstname\": \"John\", \"lastname\": \"Doe\", \"username\": \"johndoe\", \"password\": \"12345678\", \"email\": \"john.doe@example.com\"}" -u admin

echo "Adding attribute 'birth-year' as the Big Government identity"
npx hurl invoke ${CHAINCODE_NAME} person_addAttribute "1-100-100" "{\"id\": \"birth-year\", \"certifierID\": \"gov\", \"content\": \"1993\", \"issuedDate\": 1554239270 }" -u admin

npx hurl invoke ${CHAINCODE_NAME} person_create "{ \"id\": \"1-100-101\", \"firstname\": \"Jane\", \"lastname\": \"Doe\", \"username\": \"janedoe\", \"password\": \"12345678\", \"email\": \"jane.doe@example.com\"}" -u admin
npx hurl invoke ${CHAINCODE_NAME} person_addAttribute "1-100-101" "{\"id\": \"birth-year\", \"certifierID\": \"gov\", \"content\": \"1993\", \"issuedDate\": 1554239270 }" -u admin

npx hurl invoke ${CHAINCODE_NAME} person_create "{ \"id\": \"1-100-102\", \"firstname\": \"Dick\", \"lastname\": \"Doe\", \"username\": \"dickdoe\", \"password\": \"12345678\", \"email\": \"dick.doe@example.com\"}" -u admin
npx hurl invoke ${CHAINCODE_NAME} person_addAttribute "1-100-102" "{\"id\": \"birth-year\", \"certifierID\": \"gov\", \"content\": \"1988\", \"issuedDate\": 1554239270 }" -u admin
```

## Renew and Deploy new upgraded ChainCode after chaincode model Changes

to prevent problems with model changes, we must renew hyperledger stack, and upgrade new chaincode with person model updated

```shell
# restart hyperledger fabric
$ npm run env:restart
# build chainCode
# deploy smart contract
$ npm run cc:start -- ${CHAINCODE_NAME}
Instantiated Chaincode at org1
# seed ledger with new seed.sh with new model properties
$ npm run seed
# after restart hyperledger always create views
$ ./views/install.sh
Installing template views
{"ok":true,"id":"_design/person","rev":"1-a1afaedf5e49e4f592a3089e599b0f8f"}
Installed template views
# create on more person with hurley. note: after deploy/upgrade wait a few second/minutes in first invoke
$ npx hurl invoke ${CHAINCODE_NAME} person_create "{ \"id\": \"1-100-103\", \"firstname\": \"Pete\", \"lastname\": \"Doe\", \"username\": \"pete\", \"password\": \"12345678\", \"email\": \"pete.doe@example.com\"}" -u admin
# invoke ledger to get all persons
$ npx hurl invoke ${CHAINCODE_NAME} person_getAll
```

everything seems working has expected, now we will test chaincode from server requests

```shell
# boot rest server
$ npx lerna run start:debug --scope @solidary-chain/server-rest --stream
# login to get fresh accessToken and assign it to env variable with same name $accessToken (require jq installed)
$ $( curl -k -X POST https://localhost:3443/api/login -d '{ "username": "john", "password": "changeme"}' -H 'Content-Type: application/json' | jq -r 'keys[] as $k | "export \($k)=\(.[$k])"' )
# copy accessToken to clipboard to use in swagger or ignore and use curl with $accessToken (required xclip installed)
$ echo $accessToken | xclip -se c
# show last userId from ledger, to use in create person request incrementing id ex.: "1-100-103", we use next incremented id "1-100-104"
$ curl -k -X GET https://localhost:3443/api/person -H "accept: application/json" -H "Authorization: Bearer ${accessToken}" | jq '.[-1].id'
"1-100-103"
# create person in ledger with curl
$ curl -k -X POST "https://localhost:3443/api/person" \
  -H "accept: application/json" \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer ${accessToken}" \
  -d "{ \"id\": \"1-100-104\", \"firstname\": \"Jack\", \"lastname\": \"Doe\", \"username\": \"jack\", \"password\": \"12345678\", \"email\": \"jack.doe@example.com\"}"
{"type":"Buffer","data":[]}
# request all persons to check everything is ok
$ curl -k -X GET "https://localhost:3443/api/person" \
  -H "accept: application/json" \
  -H "Authorization: Bearer ${accessToken}" | jq
```

> Note: if above error occurs in server log, when request users, it because **we forgot to create couchdb indexs**, install views with `./views/install.sh` and try again

```shell
server: {
server:   "code": "EDOCMISSING",
server:   "body": {
server:     "error": "not_found",
server:     "reason": "missing"
server:   }
server: }
```

## Start to encrypt passwords with BCrypt

```shell
# install required dependencies
$ npx lerna add bcrypt --scope @solidary-chain/person-cc --no-bootstrap
$ npx lerna add @types/bcrypt --scope @solidary-chain/person-cc --no-bootstrap
$ npx lerna add bcrypt --scope @solidary-chain/server-rest --no-bootstrap
$ npx lerna add @types/bcrypt --scope @solidary-chain/server-rest --no-bootstrap
$ npx lerna bootstrap
```

add bcrypt util to hash password `packages/person-cc/src/utils.ts`. we encrypt passwords in chainCode, this way works in all modes, with chainCode hurley invokes and with curl/requests to server.

```typescript
import * as bcrypt from 'bcrypt';

const bcryptSaltRounds: number = 10;

export const hashPassword = (password: string): string => {
  return bcrypt.hashSync(password, bcryptSaltRounds);
};
```

```shell
# upgrade smart contract
$ npm run cc:upgrade -- ${CHAINCODE_NAME} 1.1
Installed Chaincode solidary-chain-chaincode version 1.1  at org2
Upgrading Chaincode solidary-chain-chaincode version 1.1 at org1 for channel ch1
It may take a few minutes depending on the chaincode dependencies
Upgraded Chaincode at org1
# create another user
$ npx hurl invoke ${CHAINCODE_NAME} person_create "{ \"id\": \"1-100-105\", \"firstname\": \"Luke\", \"lastname\": \"Doe\", \"username\": \"luke\", \"password\": \"12345678\", \"email\": \"luke.doe@example.com\"}" -u admin
# invoke ledger to get all persons
$ npx hurl invoke ${CHAINCODE_NAME} person_get 1-100-105
[hurley] - Result: {"_email":"luke.doe@example.com","_firstname":"Luke","_id":"1-100-105","_lastname":"Doe","_password":"$2b$10$pitp5NpCT62QTLGi.xpvZe6/BgCjxeBbUJBWAMBokdP2rWAtJGqkW","_type":"io.worldsibu.person","_username":"luke"}
# done we have bcrypt'ed the passwords
{
  "_id": "1-100-105",
  "_rev": "1-bf7ead9f4b1c63c5f3d34d2d71de8f3c",
  "email": "luke.doe@example.com",
  "firstname": "Luke",
  "id": "1-100-105",
  "lastname": "Doe",
  "password": "$2b$10$pitp5NpCT62QTLGi.xpvZe6/BgCjxeBbUJBWAMBokdP2rWAtJGqkW",
  "type": "io.worldsibu.person",
  "username": "luke",
  "~version": "\u0000CgMBFAA="
}
```

## Create common Package to share stuff `@solidary-chain/common-cc`

> this post belongs to a github project that have a `nest.js` server, but currently is not created, when I have the link I update this post

- [Stack Overflow Link](https://stackoverflow.com/questions/57617080/how-to-create-a-common-package-to-share-common-logic-in-convector-packages/57617109#57617109)

first we start to create a lerna package for typescript, by hand

### Create lerna common package `@solidary-chain/common-cc`

`packages/common/tsconfig.json`

```json
{
  "extends": "../../tsconfig.json",
  "compilerOptions": {
    "outDir": "./dist",
    "rootDir": "."
  },
  "include": [
    "./src/**/*"
  ]
}
```

`packages/common/package.json`

```json
{
  "name": "@solidary-chain/common-cc",
  "version": "0.1.0",
  "main": "dist/src/index",
  "types": "dist/src/index",
  "files": [
    "dist"
  ],
  "scripts": {
    "build": "npm run clean && tsc",
    "clean": "rm -rf ./dist",
    "prepublishOnly": "npm run build"
  },
  "devDependencies": {
    "typescript": "3.4.3"
  }
}
```

> Note: the paths `"main": "dist/src/index"` and `"types": "dist/src/index"` are important and must point to location of the index file, if we use a wrong path, we get errors using the package

create the index to export package files

`packages/common/src/index.ts`

```typescript
export * from './constants';
```

`packages/common/src/constants.ts`

```typescript
// convector model
const CONVECTOR_MODEL_PATH_PREFIX: string = 'com.chain.solidary.model';
const CONVECTOR_MODEL_PATH_PARTICIPANT: string = `${CONVECTOR_MODEL_PATH_PREFIX}.participant`;
const CONVECTOR_MODEL_PATH_PERSON: string = `${CONVECTOR_MODEL_PATH_PREFIX}.person`;
const CONVECTOR_MODEL_PATH_ATTRIBUTE: string = `${CONVECTOR_MODEL_PATH_PREFIX}.attribute`;
const CONVECTOR_MODEL_PATH_X509IDENTITY: string = `${CONVECTOR_MODEL_PATH_PREFIX}.x509identity`;

export const appConstants = {
  CONVECTOR_MODEL_PATH_PARTICIPANT,
  CONVECTOR_MODEL_PATH_PERSON,
  CONVECTOR_MODEL_PATH_ATTRIBUTE,
  CONVECTOR_MODEL_PATH_X509IDENTITY,
};
```

now add the common package to all packages in monorepo

```shell
# add to all packages (without scope)
$ npx lerna add @solidary-chain/common-cc@0.1.0
# to prevent some problems always use same version has in local package
# clean and bootstrap
$ npx lerna clean -y && npx lerna bootstrap
```

optional can use `--scope` to add only to desired packages

```shell
# add to all packages (with scope)
$ npx lerna add @solidary-chain/common-cc@0.1.0 --scope @solidary-chain/server-rest --no-bootstrap
$ npx lerna add @solidary-chain/common-cc@0.1.0 --scope @solidary-chain/participant-cc --no-bootstrap
$ npx lerna add @solidary-chain/common-cc@0.1.0 --scope @solidary-chain/person-cc --no-bootstrap
# clean and bootstrap
$ npx lerna clean -y && npx lerna bootstrap --hoist
```

now test `@solidary-chain/common-cc` in server, add this lines to top of `packages/server-rest/src/app.ts`
to confirm that everything is working has expected

> Note: if don't have a server, skip this step right to **Use common package inside ChainCode** section

```typescript
import { appConstants as c } from '@solidary-chain/common-cc';
debugger;
Logger.log(JSON.stringify(c, undefined, 2));
```

now launch server with debugger, and inspect `c` object or view log result

```shell
$ npx lerna run start:debug --scope @solidary-chain/server-rest --stream
```

if outputs appConstants we are ready to go, and common package works has expected

### Use common package inside ChainCode

To use common package inside chaincode, is very tricky, and I lost a few hours to get it work, thanks to Walter and Diego from WorldSibu I get it.
The problem is that currently, in convector there is no easy way to use packages, that are not controllers, for this to work we must create a fake controller in `@solidary-chain/common-cc` to put it to work

first install required controller dependency in our `@solidary-chain/common-cc`, this is required ut use `{ Controller, Invokable }`

```shell
# install dependency
$ npx lerna add @worldsibu/convector-core --scope @solidary-chain/common-cc
```

next we must create a fake controller in `packages/common/src/common.controller.ts`

```typescript
import { Controller, Invokable } from '@worldsibu/convector-core';

@Controller('common')
export class CommonController {
  @Invokable()
  public async greeting() {
    return 'Hello from CommonController';
  }
}
```

don't forget to add `export * from './common.controller';` to `packages/common/src/index.ts` to export controller

```typescript
export * from './constants';
export * from './common.controller';
```

after that we must change `chaincode.config.json` to add the fake controller, this is a hell of a hack, we use a fake controller to force the `@solidary-chain/common-cc` to be copied inside `chaincode-person` dir, without this, the `@solidary-chain/common-cc` is not copied and we have a broken chain code when we try deploy it with `cc:start` or `cc:upgrade` it always show the annoying error `npm ERR! 404 Not Found: @solidary-chain/common-cc@0.1.0`

first change `chaincode.config.json`

> Tip: if don't have it in project, copy `org1.person.config.json` to `chaincode.config.json` and move on....

in my case I have only the legacy files `org1.participant.config.json`, `org1.person.config.json`, `org2.participant.config.json` and `org2.person.config.json`

> this files can be deleted (Diego tip)

ok let's change `chaincode.config.json` and add another controller above `person-cc`

```json
"controllers": [
  {
    "name": "participant-cc",
    "version": "file:./packages/participant-cc",
    "controller": "ParticipantController"
  },
  {
    "name": "person-cc",
    "version": "file:./packages/person-cc",
    "controller": "PersonController"
  },
  // BO : ADD THIS
  {
    "name": "@solidary-chain/common-cc",
    "version": "file:./packages/common",
    "controller": "CommonController"
  }
  // EO : ADD THIS
],
```

> Note: this is another clever tricky part, the `name` is the **package name**, like the one we use in imports, `version` is the **path location** inside of our build `chaincode-person`

before build chaincode we must change our models to use the new common constants from `@solidary-chain/common-cc` ex `c.CONVECTOR_MODEL_PATH_X509IDENTITY`, currently this common package only use simple constants, to keep it simple, the point is created common logic for all the packages, rest-server, front-end, packages-cc, cli-tools, etc

`packages/participant-cc/src/participant.model.ts`

```typescript
import { appConstants as c } from '@solidary-chain/common-cc';
...
export class x509Identities extends ConvectorModel<x509Identities>{
  @ReadOnly()
  public readonly type = c.CONVECTOR_MODEL_PATH_X509IDENTITY;
  ...
export class Participant extends ConvectorModel<Participant> {
  @ReadOnly()
  public readonly type = c.CONVECTOR_MODEL_PATH_PARTICIPANT;
  ...
```

`packages/person-cc/src/person.model.ts`

```typescript
import { appConstants as c } from '@solidary-chain/common-cc';
...
export class Attribute extends ConvectorModel<Attribute>{
  @ReadOnly()
  @Required()
  public readonly type = c.CONVECTOR_MODEL_PATH_ATTRIBUTE;
  ...
export class Person extends ConvectorModel<Person> {
  @ReadOnly()
  @Required()
  public readonly type = 'com.chain.solidary.model.person';
  ...
```

now we can `cc:package` the chaincode `chaincode-person`, this will package the chaincode with our `@solidary-chain/common-cc` inside it with packages `person-cc` and `participant-cc` using our `@solidary-chain/common-cc` constants

```shell
# first remove chaincode (optional)
$ rm chaincode-${CHAINCODE_NAME} -r
# now manually invoke package command
$ npm run cc:package -- ${CHAINCODE_NAME} org1
```

after package our chaincode is advised to check if common package is copied to `chaincode-person` folder to the right path

```shell
$ ls -la chaincode-person/packages
chaincode-person/packages/@convector-rest-sample
chaincode-person/packages/participant-cc
chaincode-person/packages/person-cc
```

another good practice is check if inside `chaincode-person` folder, in file `chaincode-person/package.json`, if our `@solidary-chain/common-cc` was added to `dependencies`, in above json block we can see `cc:package` script add line `"@solidary-chain/common-cc": "file:./package/@solidary-chain/common-cc"`, this is created based on our changes in `chaincode.config.json` remember, when we add the fake controller

```json
"dependencies": {
  "@theledger/fabric-chaincode-utils": "^4.0.1",
  "@worldsibu/convector-core": "^1.3.3",
  "@worldsibu/convector-storage-stub": "^1.3.3",
  "reflect-metadata": "^0.1.12",
  "tslib": "^1.9.0",
  "participant-cc": "file:./packages/participant-cc",
  "person-cc": "file:./packages/person-cc",
  // BO: magic line here
  "@solidary-chain/common-cc": "file:./packages/@solidary-chain/common-cc"
  // EO: magic line here
},
```

done now we can deploy our chaincode with `cc:start` or `cc:upgrade`

> Tip: if is first time use `cc:start`, if not use `cc:package`

to check that everything is fine from start, we restart our hyperledger stack, and start from the beginning, **warning it destroy all data**, if don't want to destroy data don't fire `npm run env:restart` and use `cc:upgrade`, more above

```shell
# this recreate environment and destroy all data
$ npm run env:restart
$ npm run cc:start -- ${CHAINCODE_NAME}
# seed ledger
$ npm run seed
# create couchdb  views
$ ./views/install.sh
# invoke person_create
$ npx hurl invoke ${CHAINCODE_NAME} person_create "{ \"id\": \"1-100-103\", \"firstname\": \"Pete\", \"lastname\": \"Doe\", \"username\": \"pete\", \"password\": \"12345678\", \"email\": \"pete.doe@example.com\"}" -u admin
# invoke some stuff (wait for first invoke finish)
$ npx hurl invoke ${CHAINCODE_NAME} person_getAll
```

done, everything is working has expected and we have a `@solidary-chain/common-cc` package implemented.

if we check couchdb `1-100-103` person, we can check that is using type `"type": "com.chain.solidary.model.person"` that comes from our constants in our `@solidary-chain/common-cc`, proving that it gets its value from `@solidary-chain/common-cc`, believe me, if it won't wont find `@solidary-chain/common-cc` it crash.....simple

for future changes in chaincode, upgrade it with above command

```shell
# upgrade chaincode
$ npm run cc:upgrade -- ${CHAINCODE_NAME} 1.1
```

we are done........

### Use scripts to copy other files to chaincode

another thing that I tried to hack before find the solution, is using `npm scripts` but it won't work because we need the modified `chaincode-person/package.json` with `"@solidary-chain/common-cc": "file:./packages/@solidary-chain/common-cc"` in the `dependencies`, but I try it......

leave it here, maybe can be useful for other kind of stuff, like copy other type of stuff

```json
{
  "scripts": {
    ...
    "cc:package": "f() { npm run lerna:build; chaincode-manager --update --config ./$2.$1.config.json --output ./chaincode-$1 package; npm run copy:indexes -- $1; npm run copy:package:common -- $1; }; f",
    ...
    "copy:package:common": "f () { mkdir -p ./chaincode-$1/node_modules/@solidary-chain/; cp -r ./packages/common/ ./chaincode-$1/node_modules/@solidary-chain/; }; f"
    ...
```

> note for `npm run copy:package:common -- $1;` in `"cc:package"`, and `cp -r ./packages/common/ ./chaincode-$1/node_modules/@solidary-chain/; };` in `"copy:package:common"`, it works, but won't modify `chaincode-person/package.json` with lines

```json
"dependencies": {
  "@theledger/fabric-chaincode-utils": "^4.0.1",
  "@worldsibu/convector-core": "^1.3.3",
  "@worldsibu/convector-storage-stub": "^1.3.3",
  "reflect-metadata": "^0.1.12",
  "tslib": "^1.9.0",
  "participant-cc": "file:./packages/participant-cc",
  "person-cc": "file:./packages/person-cc",
  // BO: magic line here
  "@solidary-chain/common-cc": "file:./packages/@solidary-chain/common-cc"
  // EO: magic line here
}
```

### Clean Up

to finish we can remove the legacy files `org1.participant.config.json org1.person.config.json org2.person.config.json org2.participant.config.json`, now we use the config file `chaincode.config.json` (thanks for the tip Diego)

```shell
# remove legacy files
rm org1.participant.config.json org1.person.config.json org2.person.config.json org2.participant.config.json
```

Note: don't forget to update `packages.json` `"cc:package"` with new `./chaincode.config.json` file, replace `$2.$1.config.json` with `chaincode.config.json`

`package.json`

```json
"cc:package": "f() { npm run lerna:build; chaincode-manager --update --config ./chaincode.config.json --output ./chaincode-$1 package; npm run copy:indexes -- $1; }; f",
```

## Implement UsersService with ledger Persons/Users authentication

to start implement users authentication with chaincode, and to test it with moked array of users in `users.service.ts` we create a configuration variable in `env.ts` to use moked or chaincode users.

`env.ts`

```typescript
// authService : true: moked users array, false: or ledger person(users) authentication
authServiceUseMokedUsers: process.env.AUTH_SERVICE_USE_MOKED_USERS || true
```

add to `.env` `AUTH_SERVICE_USE_MOKED_USERS=false` to use ledger authentication

next we extend `Person` model with properties for `roles`, `participant`, participant is useful to link users to participants/organizations, this way we can have duplicated usernames for different organizations, this way users don't collide

`packages/person-cc/src/person.model.ts`

```typescript
...
import { Participant } from 'participant-cc';
...
export class Person extends ConvectorModel<Person> {
  ...

  @Default(['USER'])
  @Validate(yup.array().of(yup.string()))
  public roles: Array<String>;

  @Required()
  @Validate(Participant.schema())
  public participant: FlatConvectorModel<Participant>;
}
```

next add `getParticipantByIdentity` function to utils, useful to get current participant from identity inside convector controllers, for more info read [How can I get participant/organization inside convector controllers?](https://stackoverflow.com/questions/57641763/how-can-i-get-participant-organization-inside-convector-controllers)

`packages/person-cc/src/utils.ts`

```typescript
import { appConstants as c } from '@solidary-chain/common-cc';
...
import { Participant } from 'participant-cc';
...
export const getParticipantByIdentity = async (fingerprint: string): Promise<Participant> => {
  const participant: Participant | Participant[] = await Participant.query(Participant, {
    selector: {
      type: c.CONVECTOR_MODEL_PATH_PARTICIPANT,
      identities: {
        $elemMatch: {
          fingerprint,
          status: true
        }
      }
    }
  });

  if (!!participant && !participant[0].id) {
    throw new Error('Cant find a participant with that fingerprint');
  }
  return participant[0];
}
```

next we move to `PersonController` to extend `create` method with new `participant` property, and implement a `getByUsername` chaincode method to get `Person` from username in our chaincode methods, useful for logins that use username

`packages/person-cc/src/person.controller.ts`

```typescript
import { appConstants as c } from '@solidary-chain/common-cc';
...
import { getParticipantByIdentity, hashPassword } from './utils';

@Controller('person')
export class PersonController extends ConvectorController<ChaincodeTx> {
  @Invokable()
  public async create(
    @Param(Person)
    person: Person
  ) {
    // get host participant from fingerprint
    const participant: Participant = await getParticipantByIdentity(this.sender);
    if (!!participant && !participant.id) {
      throw new Error('There is no participant with that identity');
    }

    const exists = await Person.getOne(person.id);
    if (!!exists && exists.id) {
      throw new Error('There is a person registered with that Id already');
    }

    const existsUsername = await Person.query(Person, {
      selector: {
        type: c.CONVECTOR_MODEL_PATH_PERSON,
        username: person.username,
      }
    });
    if (!!existsUsername && exists.id) {
      throw new Error('There is a person registered with that username already');
    }

    let gov = await Participant.getOne('gov');
    if (!gov || !gov.identities) {
      throw new Error('No government identity has been registered yet');
    }
    const govActiveIdentity = gov.identities.find(identity => identity.status === true);

    if (!govActiveIdentity) {
      throw new Error('No active identity found for participant');
    }
    if (this.sender !== govActiveIdentity.fingerprint) {
      throw new Error(`Just the government - ID=gov - can create people - requesting organization was ${this.sender}`);
    }

    // add participant
    person.participant = gov;
    // hashPassword before save model
    person.password = hashPassword(person.password);

    await person.save();
  }
  ...

  @Invokable()
  public async getByUsername(
    @Param(yup.string())
    username: string,
  ) {
    // get host participant from fingerprint
    const participant: Participant = await getParticipantByIdentity(this.sender);
    console.log('participant', JSON.stringify(participant, undefined, 2));

    const existing = await Person.query(Person, {
      selector: {
        type: c.CONVECTOR_MODEL_PATH_PERSON,
        username,
      }
    });
    if (!existing || !existing[0].id) {
      throw new Error(`No person exists with that username ${username}`);
    }
    return existing;
  }
}
```

we are done with `PersonController` moving forward to `PersonService` to implement `getByUsername` method, to comunicate with chaincode method with same name, implemented above

`packages/server-rest/src/person/person.service.ts`

```typescript
...
public async getByUsername(username: string): Promise<Person> {
  try {
    const user = await PersonControllerBackEnd.getByUsername(username);
    // create Person model
    const userModel = new Person((user[0]));
    return userModel;
  } catch (err) {
    throw err;
  }
}
...
```

change `findOne` method on `UsersService` to use both methods moked users and ledger, based on config `AUTH_SERVICE_USE_MOKED_USERS` environment variable

`packages/server-rest/src/users/users.service.ts`

```typescript
async findOne(username: string): Promise<User | undefined> {
  if (e.authServiceUseMokedUsers === 'true') {
    return this.users.find(user => user.username === username);
  } else {
    try {
      return await this.personService.getByUsername(username);
    } catch (err) {
      Logger.error(JSON.stringify(err));
      const message: string = (err.responses[0]) ? err.responses[0].error.message : c.API_RESPONSE_INTERNAL_SERVER_ERROR;
      throw new HttpException(message, HttpStatus.INTERNAL_SERVER_ERROR);
    }
  }
}
```

to finish authentication we update `AuthService` `validateUser` method

`packages/server-rest/src/auth/auth.service.ts`

```typescript
@Injectable()
export class AuthService {
  constructor(
    private readonly usersService: UsersService,
    private readonly jwtService: JwtService,
  ) { }

  // called by LocalStrategy
  async validateUser(username: string, pass: string): Promise<any> {
    const user = await this.usersService.findOne(username);
    let authorized: boolean;
    if (e.authServiceUseMokedUsers === 'true') {
      authorized = (user && user.password === pass);
    } else {
      authorized = this.bcryptValidate(pass, (user as Person).password);
    }

    if (authorized) {
      // protect expose password property to outside
      // use spread operator to assign password to password, and all the other user props to result
      // required .toJSON()
      const { password, ...result } = user.toJSON();
      return result;
    }
    return null;
  }

  // called by appController
  async login(user: any) {
    // note: we choose a property name of sub to hold our userId value to be consistent with JWT standards
    const payload = { sub: user.id, username: user.username };
    return {
      // generate JWT from a subset of the user object properties
      accessToken: this.jwtService.sign(payload),
    };
  }

  bcryptValidate = (password: string, hashPassword: string): boolean => {
    return bcrypt.compareSync(password, hashPassword);
  }
}
```

> now we can start testing the new network authentication

## Clean up and solve problem of `@babel/.highlight.DELETE@latest` when use lerna bootstrap

```
npm ERR! 404 Not Found - GET https://registry.npmjs.org/@babel%2f.highlight.DELETE - Not found
npm ERR! 404
npm ERR! 404  '@babel/.highlight.DELETE@latest' is not in the npm registry.
```

```shell
# clean up
$ npx lerna clean
$ rm -r node_modules
$ npm i
$ npx lerna bootstrap
```

## Solve custom nestjs packages dependencies

```shell
$ npx lerna add ./packages-nestjs/@koakh/nestjs-auth-quick-config --scope @solidary-chain/server-graphql
lerna notice cli v3.16.4
lerna info filter [ '@solidary-chain/server-graphql' ]
lerna ERR! TypeError: Invalid comparator: /media/mario/Storage/Development/BlockChain/Convector/@koakh/nestjs-easyconfig
lerna ERR!     at Comparator.parse (/media/mario/Storage/Development/BlockChain/Convector/
```

> somehow its is giving probles with old package, `npm ERR! Could not install from "../@koakh/nestjs-easyconfig" as it does not contain a package.json file.`

somehow every `package.json` of packages remains with that lost line

`"undefined": "/media/mario/Storage/Development/BlockChain/Convector/@koakh/nestjs-easyconfig"`

must remove it from every packages/**/package.json project

## Solve { Error: transaction returned with failure: {"name":"Error","status":500}

```shell
$ npx hurl invoke ${CHAINCODE_NAME} participant_register gov "Big Government" -u admin
[hurley] - gov
[hurley] - Big Government
[hurley] - Sending transaction as admin in org org1...
[hurley] - No peer ran tx successfully!
undefined
{ Error: transaction returned with failure: {"name":"Error","status":500}
    at self._endorserClient.processProposal (/media/mario/Storage/Development/@SolidaryChain/network/node_modules/fabric-client/lib/Peer.js:140:36)
    at Object.onReceiveStatus (/media/mario/Storage/Development/@SolidaryChain/network/node_modules/fabric-client/node_modules/grpc/src/client_interceptors.js:1207:9)
    at InterceptingListener._callNext (/media/mario/Storage/Development/@SolidaryChain/network/node_modules/fabric-client/node_modules/grpc/src/client_interceptors.js:568:42)
    at InterceptingListener.onReceiveStatus (/media/mario/Storage/Development/@SolidaryChain/network/node_modules/fabric-client/node_modules/grpc/src/client_interceptors.js:618:8)
    at callback (/media/mario/Storage/Development/@SolidaryChain/network/node_modules/fabric-client/node_modules/grpc/src/client_interceptors.js:845:24)
  status: 500,
  payload: <Buffer >,
  peer: 
   { url: 'grpc://localhost:7051',
     name: 'peer0.org1.hurley.lab',
     options: 
      { 'grpc.max_receive_message_length': -1,
        'grpc.max_send_message_length': -1,
        'grpc.keepalive_time_ms': 600000,
        'grpc.http2.min_time_between_pings_ms': 120000,
        'grpc.keepalive_timeout_ms': 20000,
        'grpc.http2.max_pings_without_data': 0,
        'grpc.keepalive_permit_without_calls': 1,
        name: 'peer0.org1.hurley.lab',
        'grpc.ssl_target_name_override': 'peer0.org1.hurley.lab',
        'grpc.default_authority': 'peer0.org1.hurley.lab' } },
  isProposalResponse: true }
```

enter container to check if chaincode is deployed

```shell
$ CHAINCODE_NAME=solidary-chain-chaincode
$ VERSION=1.1
$ CONTAINER=dev-peer0.org1.hurley.lab-${CHAINCODE_NAME}-${VERSION}
# enter in container
$ docker exec -it ${CONTAINER} sh
# location of chaincode inside container ${CONTAINER}
$ ls -la /usr/local/src/packages/@solidary-chain
drwxr-xr-x 5 root root 4096 Feb  1 19:38 cause-cc
drwxr-xr-x 5 root root 4096 Feb  1 19:38 common
drwxr-xr-x 5 root root 4096 Feb  1 19:38 participant-cc
drwxr-xr-x 5 root root 4096 Feb  1 19:38 person-cc
drwxr-xr-x 6 root root 4096 Feb  1 19:38 transaction-cc
```

the fix seems to be `npm run cc:package -- ${CHAINCODE_NAME} org1` and it start to work

strange after some fight, I restart other network to check it works, next I execute `npm run cc:package -- ${CHAINCODE_NAME} org1` and restart network and now everything work again!!!

> UPDATE: some times it is related to some error in chaincode, like errors in typescript, or imports, and it can't build the chaincode, and install, initiate it, this is the root cause of the problem, and we don't see it on upgrade and try to invoke something without a valid instantiated chaincode, always check off message `Instantiated Chaincode at org1` when upgrade

> UPDATE: after one hours, find that the new transaction model **with below code block** gives the error, it build ok, but it simply don't work, comment lines and start to work again, the problem is the line `@Validate(yup.InferType<typeof entitySchema>())`

```typescript
@Required()
// THIS cause the classical { Error: transaction returned with failure: {"name":"Error","status":500}
// @Validate(yup.InferType<typeof entitySchema>())
@Validate(entitySchema)
public output: Entity;
```

## Solve problem Cannot find module 'typescript/bin/tsc'

```shell
$ npx lerna run build --scope @solidary-chain/server-graphql --stream
with start:dev gives only Cannot find module 'typescript/bin/tsc'
```

above error appens because of a missing package, to debug launch `lerna run start --scope @solidary-chain/server-graphql` and start to figure what package is missing

```shell
$ lerna run start --scope @solidary-chain/server-graphql
uncaughtException: Cannot find module 'passport-jwt'
Error: Cannot find module 'passport-jwt'
# install missing packages
$ npx lerna add passport-jwt --scope @solidary-chain/server-graphql
$ npx lerna add env-cmd -D --scope @solidary-chain/server-graphql
```

another problem is can't launch scripts that are using tsc-watch, ex `start:dev` and `start:debug` the problem is the missing `tsc-watch`

```shell
$ tsc-watch -p tsconfig.build.json
Cannot find module 'typescript/bin/tsc'
# install it and the problem is fixed
$ npx lerna add tsc-watch -D --scope @solidary-chain/server-graphql
```

we can clean all, and bootstrap to chek if all packages are in `package.json files` with

```shell
# to check that all package are in package.json launch
$ npx lerna clean -y && npx lerna bootstrap --hoist
lerna success Bootstrapped 5 packages
```

## Problem tests/participant.spec.ts(30,11): error TS1005: ':' expected

```shell
$ lerna boostsrap
tests/participant.spec.ts(30,11): error TS1005: ':' expected.
tests/participant.spec.ts(30,22): error TS1005: ',' expected.
tests/participant.spec.ts(31,11): error TS1005: ':' expected.
tests/participant.spec.ts(31,59): error TS1005: ',' expected.
tests/participant.spec.ts(33,11): error TS1005: ':' expected.
tests/participant.spec.ts(33,34): error TS1005: ',' expected.
```

```shell
# fix build below packages and launch lerna bootstrap ignoring above errors, everything works
$ npx lerna run build --scope @solidary-chain/common-cc --stream
$ npx lerna run build --scope @solidary-chain/person-cc --stream
$ npx lerna run build --scope @solidary-chain/participant-cc --stream
```

## Add new transaction-cc module to chaincode

```shell
# in network folder (don't add -cc is automatically added by convector)
$ conv generate chaincode transaction
CREATE packages/transaction-cc/tests/transaction.spec.ts (1241 bytes)
CREATE packages/transaction-cc/src/index.ts (78 bytes)
CREATE packages/transaction-cc/package.json (885 bytes)
CREATE packages/transaction-cc/tsconfig.json (168 bytes)
CREATE packages/transaction-cc/src/transaction.model.ts (503 bytes)
CREATE packages/transaction-cc/src/transaction.controller.ts (461 bytes)
CREATE org1.transaction.config.json (823 bytes)
CREATE org2.transaction.config.json (823 bytes)
```

edit `packages/transaction-cc/package.json` and change `"name": "transaction-cc"` to `"name": "@solidary-chain/transaction-cc"`

```shell
$ code packages/asset-cc/package.json
```

add to `chaincode.config.json`

```shell
$ code chaincode.config.json
```

```json
{
  "name": "@solidary-chain/transaction-cc",
  "version": "file:./packages/transaction-cc",
  "controller": "TransactionController"
},
```

```shell
MODULE=transaction
# try to build it with
$ npx lerna run build --scope @solidary-chain/${MODULE}-cc
# add dependencies
$ npx lerna add @solidary-chain/common-cc --scope @solidary-chain/${MODULE}-cc
$ npx lerna add @solidary-chain/person-cc --scope @solidary-chain/${MODULE}-cc
$ npx lerna add @solidary-chain/participant-cc --scope @solidary-chain/${MODULE}-cc
# third party
$ npx lerna add yup@^0.28.1 --scope @solidary-chain/${MODULE}-cc
```

add model to `packages/common-cc/src/constants.ts`

```typescript
const CONVECTOR_MODEL_PATH_TRANSACTION: string = `${CONVECTOR_MODEL_PATH_PREFIX}.transaction`;
...
export const appConstants = {
  CONVECTOR_MODEL_PATH_TRANSACTION,
  ...
```

```shell
# rebuild common package
$ npx lerna run build --scope @solidary-chain/common-cc
```

change `packages/transaction-cc/src/transaction.model.ts`

```typescript
export class Transaction extends ConvectorModel<Transaction> {
  @ReadOnly()
  public readonly type = c.CONVECTOR_MODEL_PATH_TRANSACTION;
...
```

copy, from other peoject and update it to `Transaction` model

- packages/MODEL-cc/src/transaction.controller.ts
- packages/MODEL-cc/src/transaction.model.ts
- packages/MODEL-cc/src/types.ts
- packages/MODEL-cc/src/utils.ts

### add to graphql server

```shell
# add the chaincode package to graphql package
$ npx lerna add @solidary-chain/${MODULE}-cc --scope @solidary-chain/server-graphql
```

add Controlers `packages/server-graphql/src/convector.ts`

```shell
$ code packages/server-graphql/src/convector.ts
```

```typescript
import { TransactionController } from '@solidary-chain/transaction-cc';
...
export const TransactionControllerBackEnd = ClientFactory(TransactionController, adapter);
```

now add modules to `app.module.ts`

first clone one nestjs module to `transaction` and change all references to old module name, and change all filenames to

```shell
# now change app.module.ts, and add new nestjs module
$ code packages/server-graphql/src/app.module.ts
```

```typescript
@Module({
  imports: [
    ...
    TransactionModule,
```

`packages/server-graphql/src/transaction/transaction.service.ts`
Property 'register' does not exist on type 'ConvectorControllerClient<TransactionController>'

> NOTE: require to `./restartEnv.sh` else we get below error, OR OTHER problematic 500 ERRORS, and its a opurtunity to always test and restartEnv.sh

`{ Error: transaction returned with failure: {"name":"Error","status":400,"message":"no function of name: cause_create found","stack":"Error: no function of name: cause_create found"}`

```shell
# rebuild again before upgrade chaincode
$ npx lerna run build --scope @solidary-chain/transaction-cc
```

### Add new package to other files

`upgrade-chaincode.sh`

`backup.sh`

`touch packages/transaction-cc/node_modules/${FILE_EXCLUDE}`

> To finish add Some Seed and Invoke some things

## GraphQL ComplexQuery problem: How to send arbitrayGraphQL and ComplexQuery and the big sort problem

- [Cloudant: No index exists for this sort, try indexing by the sort fields](https://stackoverflow.com/questions/46689286/cloudant-no-index-exists-for-this-sort-try-indexing-by-the-sort-fields)
- [1.3.7. /db/_index](https://docs.couchdb.org/en/3.0.0/api/database/find.html#post--db-_index)
- 
the problem is just that, when we try to create a ComplexQuery graphql endpoint we found that when we use anything inside `sort` field it crash with error `error handling CouchDB request. Error:no_usable_index,  Status Code:400,  Reason:No index exists for this sort, try indexing by the sort fields.',`, the problem is that everything work, couchdb queries and even hurley request `npx hurl invoke ${CHAINCODE_NAME} cause_getComplexQuery "{\"filter\":{\"startDate\":{\"\$lte\":1582414657},\"endDate\":{\"\$gte\":1582414657}},\"sort\":[{\"name\":\"asc\"}]}"` with exact same payload `filter` and `sort`, after a an hour hitting with head I found that the solution is that **we must create the index in both running containers**, and when we start to implement we only create in one container....this is the best way to learn, hit the head on the wall

> side note: to use sort we require to NEED TO CREATE INDEXS in every container

```shell
$ docker container ls --filter "name=couchdb.peer0.org" --format '{{.Names}}, {{.Ports}}'
couchdb.peer0.org2.hurley.lab, 4369/tcp, 9100/tcp, 0.0.0.0:5184->5984/tcp
couchdb.peer0.org1.hurley.lab, 4369/tcp, 9100/tcp, 0.0.0.0:5084->5984/tcp
```

- [http://localhost:5084/_utils/#database/ch1_solidary-chain-chaincode/_index](http://localhost:5184/_utils/#database/ch1_solidary-chain-chaincode/_index)
- [http://localhost:5184/_utils/#database/ch1_solidary-chain-chaincode/_index](http://localhost:5184/_utils/#database/ch1_solidary-chain-chaincode/_index)

create index on both containers/couchdb

```shell
$ ORG_PORT=5084
# ORG_PORT=5184
$ curl --request POST \
  --url http://localhost:${ORG_PORT}/ch1_solidary-chain-chaincode//_index \
  --header 'content-type: application/json' \
  --data '{
   "index": {
      "fields": [
         "name"
      ]
   },
   "name": "name-json-index",
   "type": "json"
}'
```

and it simply start to work! **the solution is we need the sort in both containers**, the strange thing is why hurley works and graphql request not!

graphql working payload

```json
{
  "getByComplexQueryInput": {
    "filter":{
      "startDate":{"$lte":1582414657},
      "endDate":{"$gte":1582414657}
    },
    "sort":[
      {"name":"asc"}
    ]
  }
}
```

add `index` to both organizations/containers in `views\install.sh`

```shell
$ curl -X POST "${COUCH_URL_ORG1}/${DB_PATH}/_index" \
  --header 'content-type: application/json' \
  --data '{
  "index": {
    "fields": [
      "name"
    ]
  },
  "name": "name-json-index",
  "type": "json"
}'
```

## Participant changeIdentity / require "chaincodeAdmin" with `attrs."admin": "true"`

how to prevent the below error

```shell
$ npx hurl invoke ${CHAINCODE_NAME} participant_changeIdentity great newIdentity -u admin
{ Error: transaction returned with failure: {"name":"Error","status":500,"message":"Unauthorized. Requester identity is not an admin"}
```

to invoke this **specific chaincode endpoint** we require a special user to interact with chain,
thas as the attribute property `admin`, for this we use the node script from [Examples on how to handle chain identities on business applications](https://raw.githubusercontent.com/worldsibu/convector-identity-patterns/master/packages/administrative/registerIdentitiesManager.js)

this script is **very very useful** to create the `chaincodeAdmin` that has the  `attrs."admin": "true"` property used in `changeIdentity` in `let isAdmin = this.fullIdentity.getAttributeValue('admin');`

```shell
# first the env variables
$ CHAINCODE_NAME=solidary-chain-chaincode

# register a special user with an attribute Admin
$ node ./packages/administrative/registerIdentitiesManager.js
Store path:/home/mario/hyperledger-fabric-network/.hfc-org1
Successfully loaded admin from persistence
Successfully registered chaincodeAdmin - secret:huczSRRXwfPS
Successfully enrolled member user "chaincodeAdmin"
chaincodeAdmin was successfully registered and enrolled and is ready to interact with the fabric network

# generate x509 identity (above block from readme)
# Let's go back to the participant chaincode and set the x509 identity through `changeIdentity` to the valid x509 identity
# In your real application this can be automated
$ node -e "console.log(JSON.parse(require('fs').readFileSync(require('path').resolve(require('os').homedir(), 'hyperledger-fabric-network/.hfc-org1/user1'), 'utf8')).enrollment.identity.certificate)" | openssl x509 -fingerprint -noout | cut -d '=' -f2 ;

$ ACTUAL_IDENTITY="8F:9E:4F:33:01:8A:8C:9B:51:DA:98:2A:E2:17:A2:BD:F7:CF:31:72"

# The result will look like: 6C:B0:F8:D8:1B:08:3F:BA:18:F7:8B:6E:AB:77:53:97:C1:2F:71:14
# Copy the value and paste it where it says "actualIdentity"
$ npx hurl invoke ${CHAINCODE_NAME} participant_changeIdentity johndoe ${ACTUAL_IDENTITY} -u chaincodeAdmin

[hurley] - johndoe
[hurley] - 8F:9E:4F:33:01:8A:8C:9B:51:DA:98:2A:E2:17:A2:BD:F7:CF:31:72
[hurley] - Sending transaction as chaincodeAdmin in org org1...
[hurley] - No peer ran tx successfully!
undefined
{ Error: make sure the chaincode identities has been successfully instantiated and try again: chaincode identities not found
```

- [Calculate Fingerprint](https://www.samltool.com/fingerprint.php)

```typescript
@Required()
@Validate(yup.array(x509Identities.schema()))
public identities: Array<FlatConvectorModel<x509Identities>>;

JSON.stringify(this.fullIdentity.attrs, null, 2)
"{
  "admin": "true",
  "hf.Affiliation": "",
  "hf.EnrollmentID": "chaincodeAdmin",
  "hf.Type": "client"
}"
```

### Debug Fingerprints

script to extract fingerprint from wallet, and compare it with couchdb etc

final scripts are in:

- `@SolidaryChain/solidarychain-production-network/fabric-samples/5node2channel/wallet/fabcar/javascript/getFingerprint.sh`
- `@SolidaryChain/solidarychain-production-network/fabric-samples/5node2channel/wallet/fabcar/javascript/changeParticipantFingerprint.js`

```shell
...
$ ${BASE_CMD} -c "{ \"Args\" : [\"participant_createWithParameters\", \"${GOV_ID}\", \"${GOV_CODE}\", \"${GOV_NAME}\" ] }"
$ ${BASE_CMD} -c "{ \"Args\" : [\"participant_get\", \"${GOV_ID}\" ] }"
fingerprint\":\"C1:93:E5:55:A8:1C:30:FD:16:50:98:A9:07:57:26:F7:1E:07:E4:83

...
$ ${BASE_CMD} -c "{ \"Args\" : [\"person_create\", \"${PAYLOAD}\" ] }"
$ ${BASE_CMD} -c "{ \"Args\" : [\"person_get\", \"${ID}\" ] }"
fingerprint\":\"C1:93:E5:55:A8:1C:30:FD:16:50:98:A9:07:57:26:F7:1E:07:E4:83

couchdb of gov fingerprint
"fingerprint": "C1:93:E5:55:A8:1C:30:FD:16:50:98:A9:07:57:26:F7:1E:07:E4:83",

# admin wallet fingerprint, extract with below node command
$ USER=admin
$ FILE_PATH=/srv/docker/hyperledger-fabric-extra_hosts-5orgs/fabric-samples/5node2channel/wallet/fabcar/javascript/generated/wallets/.hfc-org1/${USER}
$ FINGERPRINT=$(node -e "console.log(JSON.parse(require('fs').readFileSync('${FILE_PATH}', 'utf8')).enrollment.identity.certificate)" | openssl x509 -fingerprint -noout | cut -d '=' -f2 ;)
# wallet has other fingerprint
$ echo ${FINGERPRINT}
10:0A:75:F5:65:EB:3B:A4:0F:F7:35:32:D2:47:40:D2:70:7F:B3:2D
# from graphql and wallet have the same fingerprint
10:0A:75:F5:65:EB:3B:A4:0F:F7:35:32:D2:47:40:D2:70:7F:B3:2D

we have 3 diferent fingerprints ???
```

after we change gov fingerprint we have

```json
"identities": [
  {
    "fingerprint": "C1:93:E5:55:A8:1C:30:FD:16:50:98:A9:07:57:26:F7:1E:07:E4:83",
    "status": false
  },
  {
    "fingerprint": "43:30:E3:83:E9:98:49:6D:D9:AD:70:64:A8:E4:4F:83:0A:B1:4C:05",
    "status": true
  }
],
```

## Change Gov participant FingerPrint (Notes from TLDR.md production network)

> NOTES: above are some notes only we now use `fabric-samples/5node2channel/update-fingerprints.sh` after deploy chaincode, view `fabric-samples/5node2channel/TLDR.md`

used files

- `@SolidaryChain/solidarychain-production-network/fabric-samples/5node2channel/wallet/fabcar/javascript/getFingerprint.sh`
- `@SolidaryChain/solidarychain-production-network/fabric-samples/5node2channel/wallet/fabcar/javascript/changeParticipantFingerprint.js`
- `/home/mario/Development/@SolidaryChain/solidarychain-development-monorepo/packages/server-graphql/network.env`

create `gov` user and this is the one that we need to change fingerprint, the user that is used in graphql connection profile with `IDENTITY=gov`

- `@SolidaryChain/solidarychain-production-network/fabric-samples/5node2channel/wallet/fabcar/javascript/getFingerprint.sh`
- `@SolidaryChain/solidarychain-production-network/fabric-samples/5node2channel/wallet/fabcar/javascript/changeParticipantFingerprint.js`

- `/home/mario/Development/@SolidaryChain/solidarychain-development-monorepo/packages/server-graphql/network.env`

```shell
IDENTITY=gov
KEY_STORE=/home/mario/Development/@SolidaryChain/solidarychain-production-network/fabric-samples/5node2channel/wallet/fabcar/javascript/wallets/gov
```

> NOTES: gov user is created in `./generate-wallets-and-connection-file.sh`, we only need to change its FingerPrint after deployChaincodeToNetwork

```shell
# generate gov user
$ cd ${FABRIC_SAMPLES}/5node2channel/wallet/fabcar/javascript
$ node registerUser.js gov
registerUser "gov"
Wallet path: /srv/docker/hyperledger-fabric-extra_hosts-5orgs/fabric-samples/5node2channel/wallet/fabcar/javascript/wallets
Successfully registered and enrolled admin user "gov" and imported it into the wallet
# confirm wallets
$ tree wallets
# get gov wallet fingerprint
$ FINGERPRINT=$(./getFingerprint.sh wallets/gov/gov)
$ echo ${FINGERPRINT}
59:F5:DF:50:8B:5B:C6:27:25:92:C7:CC:9F:F9:E1:D9:33:83:AE:89
# check existing gov identity
$ curl -s --user admin:admin  http://${PEER0_ORG1_IP}:5984/channelall_solidary-chain-chaincode/${GOV_ID} | jq ".identities"
[
  {
    "fingerprint": "72:EA:CA:9B:A1:BD:A6:1A:26:4C:9D:90:EF:58:8E:D9:B0:01:17:34",
    "status": true
  }
]

# change gov fingerprint
$ node changeParticipantFingerprint.js ${GOV_ID} ${FINGERPRINT}
Wallet path: /srv/docker/hyperledger-fabric-extra_hosts-5orgs/fabric-samples/5node2channel/wallet/fabcar/javascript/wallets
createTransaction result {
  "type": "Buffer",
# check existing gov identity
$ curl -s --user admin:admin  http://${PEER0_ORG1_IP}:5984/channelall_solidary-chain-chaincode/${GOV_ID} | jq ".identities"
[
  {
    "fingerprint": "72:EA:CA:9B:A1:BD:A6:1A:26:4C:9D:90:EF:58:8E:D9:B0:01:17:34",
    "status": false
  },
  {
    "fingerprint": "59:F5:DF:50:8B:5B:C6:27:25:92:C7:CC:9F:F9:E1:D9:33:83:AE:89",
    "status": true
  }
]
```

```shell
IDENTITY=gov
KEY_STORE=/home/mario/Development/@SolidaryChain/solidarychain-production-network/fabric-samples/5node2channel/wallet/fabcar/javascript/wallets/gov
```

## Debug restartEnv.sh : chaincode works in debug bug not with restartEnv.sh

> warning for barrel files in modules, don't use never  `from '.'` ex `import { getEntity } from '.';` it breaks chainCode even it it work in node sutside of fabric, it simply don't work

somehow `restartEnv.sh` stop working when try invoke something with error

```shell
$ npx hurl invoke ${CHAINCODE_NAME} participant_register gov "Big Government" -u admin
[hurley] - gov
[hurley] - Big Government
[hurley] - Sending transaction as admin in org org1...
[hurley] - No peer ran tx successfully!
undefined
{ Error: transaction returned with failure: {"name":"Error","status":500}
    at self._endorserClient.processProposal (/media/mario/Storage/Development/@SolidaryChain/network/node_modules/fabric-client/lib/Peer.js:140:36)
    at Object.onReceiveStatus (/media/mario/Storage/Development/@SolidaryChain/network/node_modules/fabric-client/node_modules/grpc/src/client_interceptors.js:1207:9)
    at InterceptingListener._callNext (/media/mario/Storage/Development/@SolidaryChain/network/node_modules/fabric-client/node_modules/grpc/src/client_interceptors.js:568:42)
    at InterceptingListener.onReceiveStatus (/media/mario/Storage/Development/@SolidaryChain/network/node_modules/fabric-client/node_modules/grpc/src/client_interceptors.js:618:8)
    at callback (/media/mario/Storage/Development/@SolidaryChain/network/node_modules/fabric-client/node_modules/grpc/src/client_interceptors.js:845:24)
  status: 500,
  payload: <Buffer >,
  peer: 
   { url: 'grpc://localhost:7051',
     name: 'peer0.org1.hurley.lab',
     options: 
      { 'grpc.max_receive_message_length': -1,
        'grpc.max_send_message_length': -1,
        'grpc.keepalive_time_ms': 600000,
        'grpc.http2.min_time_between_pings_ms': 120000,
        'grpc.keepalive_timeout_ms': 20000,
        'grpc.http2.max_pings_without_data': 0,
        'grpc.keepalive_permit_without_calls': 1,
        name: 'peer0.org1.hurley.lab',
        'grpc.ssl_target_name_override': 'peer0.org1.hurley.lab',
        'grpc.default_authority': 'peer0.org1.hurley.lab' } },
  isProposalResponse: true }
```

the solution this problems is caused by using `type-graphql` and `PaginationArgs` inside `common-cc`, it seems a drag & drop to old `packages/common` and not to `packages/server-graphql/src/common`,this stupid errors hurts, when we lost a few sacred hours for lack of attention, the file belong to `packages/server-graphql/src/common/dto/pagination.args.ts`

```typescript
import { Max, Min } from 'class-validator';
import { ArgsType, Field, Int } from 'type-graphql';

@ArgsType()
export class PaginationArgs {
  @Field(type => Int)
  @Min(0)
  skip: number = 0;

  @Field(type => Int)
  @Min(1)
  @Max(50)
  take: number = 25;
}
```

## Hurley and fix Globall install

> UPDATE 2020-11-17 19:28:01: after having this error, disabling AUTO ATACH solves the problem, just disable it and launch `npm run cc:start:debug -- ${CHAINCODE_NAME}` and it starts to work again

```shell
# install
$ npm i -g @worldsibu/hurley
npm WARN deprecated core-js@2.6.11: core-js@<3 is no longer maintained and not recommended for usage due to the number of issues. Please, upgrade your dependencies to the actual version of core-js@3.
npm WARN deprecated ts-simple-ast@11.3.0: NOTICE: ts-simple-ast has been renamed to ts-morph and version reset to 1.0.0. Switch at your leisure...
npm WARN deprecated request@2.88.2: request has been deprecated, see https://github.com/request/request/issues/3142
/usr/local/bin/hurl -> /usr/local/lib/node_modules/@worldsibu/hurley/dist/command.js

> @ampretia/x509@0.4.7 install /usr/local/lib/node_modules/@worldsibu/hurley/node_modules/fabric-shim/node_modules/@ampretia/x509
> node-gyp rebuild

gyp ERR! clean error
gyp ERR! stack Error: EACCES: permission denied, rmdir 'build'
gyp ERR! System Linux 4.14.0-deepin2-amd64
gyp ERR! command "/usr/local/bin/node" "/usr/local/lib/node_modules/npm/node_modules/node-gyp/bin/node-gyp.js" "rebuild"
gyp ERR! cwd /usr/local/lib/node_modules/@worldsibu/hurley/node_modules/fabric-shim/node_modules/@ampretia/x509
gyp ERR! node -v v8.16.0
gyp ERR! node-gyp -v v3.8.0
gyp ERR! not ok 
npm ERR! code ELIFECYCLE
npm ERR! errno 1

# fix use --unsafe-perm - it starts to rebuild
$ npm i -g @worldsibu/hurley --unsafe-perm
# upgrade
$ npm upgrade -g @worldsibu/hurley
# get the version of your Hurley installation.
$ hurl --version
1.14

# Basic network management

# Start a new blockchain network with 2 organizations, 2 users per organization, and 1 channel, localted at ~/hyperledger-fabric-network
$ npx hurl new
...
[hurley] - You can find the network topology (ports, names) here: /home/mario/hyperledger-fabric-network/docker-compose.yaml
# deploy chaincode
$ npm run cc:start -- solidary-chain-chaincode
...
Instantiated Chaincode at org1
```

## Lerna Fix problem of install dependencies

```shell
# better way is: resolves problem of person to participant dependecies etc
$ rm node_modules -r && npm i
```

## After Update to new Packages we have Conversion of type 'FlatConvectorModel<Asset>[]' to type 'Asset[]' may be a mistake because neither type sufficiently overlaps with the other

```
Conversion of type 'FlatConvectorModel<Asset>[]' to type 'Asset[]' may be a mistake because neither type sufficiently overlaps with the other. If this was intentional, convert the expression to 'unknown' first.
  Property 'id' is missing in type 'FlatConvectorModel<Asset>' but required in type 'Asset'.ts(2352)
asset.model.ts(13, 10): 'id' is declared here.
```

```typescript
// just add [] to Array<FlatConvectorModel<AssetConvectorModel>>
const convectorModel: Array<FlatConvectorModel<AssetConvectorModel[]>> = await AssetControllerBackEnd.getAll();
```

## Class-validator

- [IsOptional support for null](https://github.com/epiphone/class-validator-jsonschema/issues/9)

Checks if given value is empty (=== null, === undefined) and if so, ignores all the validators on the property.

and this library should naturally match class-validator's definition as closely as possible

```typescript
@Field({ nullable: true })
@IsOptional()
public location: string;
```

## Problem on create person can't find participant fingerprint? comes from `this.sender`

after restart laptop....another problem when restart network

```shell
$ npx hurl invoke ${CHAINCODE_NAME} person_create "${PAYLOAD}" -u admin
{ Error: transaction returned with failure: {"name":"Error","status":500,"message":"Cant find a participant with that fingerprint"}
```

> the fucking problem this time is trying to use `@Param(Participant)` like we use in other models without problem

`packages/participant-cc/src/participant.controller.ts`

```typescript
@Invokable()
public async create(
  // TODO: use both
  @Param(yup.string())
  id: string,
  @Param(yup.string())
  code: string,
  @Param(yup.string())
  name: string,
  // TODO: when use this, even if it not used we get the infamous : { Error: transaction returned with failure: {"name":"Error","status":500,"message":"Cant find a participant with that fingerprint"}
  // @Param(Participant)
  // participant: Participant,
) {
```

if we uncomment above block, PUTF welcome to hell

UPDATE: check working version of Participant.create notes

## Problem again with "Cant find a participant with that fingerprint"

`{\"name\":\"Error\",\"status\":500,\"message\":\"Cant find a participant with that fingerprint\"}`

restarted network, and fails create cause, but after a while it start to work, under inpection, for now it works with all models

## WIP UNSOLVED: Problem on create person can't find participant fingerprint? comes from `this.sender`

now seems that only in `person.controller` this is `undefined`? and in production network

```shell
"error": "Cannot read property 'sender' of undefined"
```

hello when we use hurley, it have a participant with identity `gov` used for ex to create persons in examples
in my production network I have the same convector chainCode, 
I seed some data with `CA_FILE` like bellow command
```
GOV_ID="c8ca045c-9d1b-407f-b9ae-31711758f2d0"
GOV_CODE="gov"
GOV_NAME="Big Government"
docker exec cli peer chaincode invoke -C ${CHANNEL_ALL} -n ${CHAINCODE_NAME} --tls --cafile ${CA_FILE}" -c "{ \"Args\" : [\"participant_createWithParameters\", \"${GOV_ID}\", \"${GOV_CODE}\", \"${GOV_NAME}\" ] }"
```
and it creates the gov participant with `gov` is and fingerprint `FINGERPRINT HERE`
I generate a wallet and use node sdk to create some invokes, but what happens is that when I invoke something it used other fingerprint than used with `peer chaincode invoke`, the question is how can I generate a identity user wallet to match the `gov participant id gov`

## Problem `(node:32043) UnhandledPromiseRejectionWarning: TypeError: Cannot read property 'curve' of undefined`

- [Cannot read property 'curve' of undefined, while running hyperledger fabric project](https://stackoverflow.com/questions/54434165/cannot-read-property-curve-of-undefined-while-running-hyperledger-fabric-proj)

> UPDATE: 2020-11-05 22:40:33, seems that move and delete folder and rsync the folder is the same, what maybe put this to work is down and restart graphql again, this is not closed yet

```shell
$ cd /srv/docker/hyperledger-fabric-extra_hosts-5orgs/fabric-samples/5node2channel/server-graphql
$ mv wallets /tmp
# sync wallets again
$ ./deployServerToNode.sh
# run server-graphql again and now we have
solidarychain-server-graphql    | [Nest] 25   - 2020-11-05 22:39:53   graphql server started, endpointexposed at https://localhost:443/graphql
solidarychain-server-graphql    | [Nest] 25   - 2020-11-05 22:39:53   Context path with cryptographic materials exists +2ms
```

skip thais after use ablove update

1. look for the folder where enrolled user certificates are placed
2. delete that folder
3. Tear down the network (stop and remove all the running containers )
4. Again Register and enroll users in the network.

> NOTES: just restart network, and move on

## Error: Failed to load gRPC binary module because it was not installed for the current system

> TIP: this occurs when we are not used same node version, the best way to solve this is usign `node 8.16.0`

```
Error: Failed to load gRPC binary module because it was not installed for the current system
Expected directory: node-v57-linux-x64-glibc
Found: [node-v59-linux-x64-glibc]
This problem can often be fixed by running "npm rebuild" on the current system
Original error: Cannot find module '/usr/local/lib/node_modules/@worldsibu/hurley/node_modules/grpc/src/node/extension_binary/node-v57-linux-x64-glibc/grpc_node.node'
```

```shell
# fix
$ cd /usr/local/lib/node_modules/@worldsibu/hurley/node_modules/
$ npm rebuild
```

### require await ele Error: PUT_STATE failed: transaction ID: ...: no ledger context

In my case, it occurred because the result from my smartcontract was returned faster than a promise resolved. If it's also a case for you, add a missing await somewhere.

## Problem: Jest error TS1005: ';' expected.

```shell
$ npm i
../../node_modules/jest-diff/build/diffLines.d.ts:8:34 - error TS1005: ';' expected.
8 import type { DiffOptions } from './types';
fix :https://github.com/facebook/jest/issues/9703
$ tsc -v
Version 3.4.5
It looks like you need typescript > 3.8.0
$ npx tsc --version
Version 3.8.3
```

remove

```json
"@types/jest-diff": {
  "version": "24.3.0",
  "resolved": "https://registry.npmjs.org/@types/jest-diff/-/jest-diff-24.3.0.tgz",
  "integrity": "sha512-vx1CRDeDUwQ0Pc7v+hS61O1ETA81kD04IMEC0hS1kPyVtHDdZrokAvpF7MT9VI/fVSzicelUZNCepDvhRV1PeA==",
  "requires": {
    "jest-diff": "*"
  }
},
```

from solidarychain-development-monorepo/package-lock.json and to finish with `npm i `

## Problem launching Hurley with deprecated `hyperledger/fabric-ccenv`

```shell
$ ./restartEnv.sh
...
Error: could not assemble transaction, err proposal response was not successful, error code 500, msg error starting container: error starting container: Failed to generate platform-specific docker build: Failed to pull hyperledger/fabric-ccenv:latest: API error (404): manifest for hyperledger/fabric-ccenv:latest not found: manifest unknown: manifest unknown
[hurley] - Found error while running script!
```

## Problem enroll admin and users

```shell
$ npm run env:restart 
Registering admin for org1
2020-10-31T22:53:27.415Z - error: [FabricCAClientService.js]: Failed to enroll admin, error:%o message=Calling enrollment endpoint failed with error [Error: read ECONNRESET], stack=Error: Calling enrollment endpoint failed with error [Error: read ECONNRESET]
    at ClientRequest.request.on (/media/mario/storage/Documents/Development/@SolidaryChain/solidarychain-development-monorepo/node_modules/fabric-client/node_modules/fabric-ca-client/lib/FabricCAClient.js:487:12)
    at emitOne (events.js:116:13)
    at ClientRequest.emit (events.js:211:7)
    at Socket.socketErrorListener (_http_client.js:401:9)
    at emitOne (events.js:116:13)
    at Socket.emit (events.js:211:7)
    at emitErrorNT (internal/streams/destroy.js:66:8)
    at _combinedTickCallback (internal/process/next_tick.js:139:11)
    at process._tickCallback (internal/process/next_tick.js:181:9)
(node:30254) UnhandledPromiseRejectionWarning: Error: Calling enrollment endpoint failed with error [Error: read ECONNRESET]
    at ClientRequest.request.on (/media/mario/storage/Documents/Development/@SolidaryChain/solidarychain-development-monorepo/node_modules/fabric-client/node_modules/fabric-ca-client/lib/FabricCAClient.js:487:12)
```

```shell
# launch script from hyperledger-fabric-network gives a better error 
# Error: Calling enrollment endpoint failed with error [Error: connect ECONNREFUSED 127.0.0.1:7054]
$ cd ~/hyperledger-fabric-network
$ ./restart.sh
```

seems that the reason is the `ca.org1.hurley.lab` won't run

to fix clean all with `docker system prune`, and mannually clean systen and use `hurl new` to create the network, and not `npm run env:restart`

now it works and boot **ca** generate users

```shell
$ docker ps --format "table {{.Names}}\t{{.Ports}}"
NAMES                           PORTS
peer0.org1.hurley.lab           0.0.0.0:7051-7053->7051-7053/tcp
couchdb.peer0.org1.hurley.lab   4369/tcp, 9100/tcp, 0.0.0.0:5084->5984/tcp
orderer.hurley.lab              0.0.0.0:7050->7050/tcp
ca.org1.hurley.lab              0.0.0.0:7054->7054/tcp

$ tree /home/mario/hyperledger-fabric-network/.hfc-org1/
/home/mario/hyperledger-fabric-network/.hfc-org1/
├── 6de1afe6cc76486f2abb4bc31215d1ed5cc13b8a77dd5d4df8d9ab4275e1f8bd-priv
├── 6de1afe6cc76486f2abb4bc31215d1ed5cc13b8a77dd5d4df8d9ab4275e1f8bd-pub
├── 9dbaae75fb28e8c58bd867a8d527b997d9c29182f22cc8d7d0cdcd97e81274bc-priv
├── 9dbaae75fb28e8c58bd867a8d527b997d9c29182f22cc8d7d0cdcd97e81274bc-pub
├── admin
└── user1
```

## error code 500, msg could not find chaincode with name 'solidary-chain-chaincode'

```shell
$ npm run env:clean
$ ./deployChaincodeToNetwork.sh

Installing Chaincode solidary-chain-chaincode version 1.3 at org1
2021-01-23 16:48:30.234 WET [chaincodeCmd] checkChaincodeCmdParams -> INFO 001 Using default escc
2021-01-23 16:48:30.234 WET [chaincodeCmd] checkChaincodeCmdParams -> INFO 002 Using default vscc
2021-01-23 16:48:30.284 WET [chaincodeCmd] install -> INFO 003 Installed remotely response:<status:200 payload:"OK" > 
Installed Chaincode solidary-chain-chaincode version 1.3  at org1
Upgrading Chaincode solidary-chain-chaincode version 1.3 at org1 for channel ch1
It may take a few minutes depending on the chaincode dependencies
2021-01-23 16:48:40.361 WET [chaincodeCmd] checkChaincodeCmdParams -> INFO 001 Using default escc
2021-01-23 16:48:40.361 WET [chaincodeCmd] checkChaincodeCmdParams -> INFO 002 Using default vscc
Error: could not assemble transaction, err proposal response was not successful, error code 500, msg could not find chaincode with name 'solidary-chain-chaincode'
[hurley] - Found error while running script!
(node:14305) UnhandledPromiseRejectionWarning: Error: Errors found in script, stopping execution
    at Object.<anonymous> (/media/mario/storage/Home/Documents/Development/@SolidaryChain/solidarychain-development-monorepo/node_modules/@worldsibu/hurley/dist/utils/sysWrapper.js:116:27)
    at step (/media/mario/storage/Home/Documents/Development/@SolidaryChain/solidarychain-development-monorepo/node_modules/tslib/tslib.js:136:27)
    at Object.next (/media/mario/storage/Home/Documents/Development/@SolidaryChain/solidarychain-development-monorepo/node_modules/tslib/tslib.js:117:57)
    at /media/mario/storage/Home/Documents/Development/@SolidaryChain/solidarychain-development-monorepo/node_modules/tslib/tslib.js:110:75
    at new Promise (<anonymous>)
    at Object.__awaiter (/media/mario/storage/Home/Documents/Development/@SolidaryChain/solidarychain-development-monorepo/node_modules/tslib/tslib.js:106:16)
    at Object.execContent (/media/mario/storage/Home/Documents/Development/@SolidaryChain/solidarychain-development-monorepo/node_modules/@worldsibu/hurley/dist/utils/sysWrapper.js:112:24)
    at UpgradeChaincodeShGenerator.BaseGenerator.run (/media/mario/storage/Home/Documents/Development/@SolidaryChain/solidarychain-development-monorepo/node_modules/@worldsibu/hurley/dist/generators/base.js:18:40)
    at ChaincodeGenerator.upgrade (/media/mario/storage/Home/Documents/Development/@SolidaryChain/solidarychain-development-monorepo/node_modules/@worldsibu/hurley/dist/generators/chaincodegenerator.js:62:35)
    at ChaincodeCLI.<anonymous> (/media/mario/storage/Home/Documents/Development/@SolidaryChain/solidarychain-development-monorepo/node_modules/@worldsibu/hurley/dist/cli.js:397:55)
(node:14305) UnhandledPromiseRejectionWarning: Unhandled promise rejection. This error originated either by throwing inside of an async function without a catch block, or by rejecting a promise which was not handled with .catch(). (rejection id: 3)
(node:14305) [DEP0018] DeprecationWarning: Unhandled promise rejections are deprecated. In the future, promise rejections that are not handled will terminate the Node.js process with a non-zero exit code.
bring peer0.org1.hurley.lab packaged solidary-chain-chaincode.1.3 to local file system sccc.pak
Press any key to continue

# notethis occurs because we clean up or restart hurley network, and try use `./deployChaincodeToNetwork.sh` with a version greater that `1.0`, and it works in upgrade, but without start version, for this to work fix with

# generate starter version
npm run cc:start -- ${CHAINCODE_CONVECTOR}
[hurley] - installing smart contract located at /media/mario/storage/Home/Documents/Development/@SolidaryChain/solidarychain-development-monorepo/chaincode-solidary-chain-chaincode
Installing Chaincode solidary-chain-chaincode version 1.0 at org1
2021-01-23 16:53:37.666 WET [chaincodeCmd] checkChaincodeCmdParams -> INFO 001 Using default escc
2021-01-23 16:53:37.666 WET [chaincodeCmd] checkChaincodeCmdParams -> INFO 002 Using default vscc
2021-01-23 16:53:37.728 WET [chaincodeCmd] install -> INFO 003 Installed remotely response:<status:200 payload:"OK" > 
Installed Chaincode solidary-chain-chaincode version 1.0 at org1
Instantiating Chaincode at org1 for channel ch1
It may take a few minutes depending on the chaincode dependencies
2021-01-23 16:53:47.804 WET [chaincodeCmd] checkChaincodeCmdParams -> INFO 001 Using default escc
2021-01-23 16:53:47.804 WET [chaincodeCmd] checkChaincodeCmdParams -> INFO 002 Using default vscc
Instantiated Chaincode at org1

# now deployChaincodeToNetwork ex with version 1.3
$ ./deployChaincodeToNetwork.sh

$ ssh -t 192.168.1.61 "docker exec cli peer chaincode list -C channelall --instantiated" | grep solidary-chain-chaincode
Name: solidary-chain-chaincode, Version: 1.3, Path: /media/mario/storage/Home/Documents/Development/@SolidaryChain/solidarychain-development-monorepo/chaincode-solidary-chain-chaincode, Escc: escc, Vscc: vscc
```

> It fails with same error, bu chaincode is deployed in production and works??? another one that leaves to haunt in future
