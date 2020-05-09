# TODO
# person personAddAttribute
# updates:
#   partcipant:
#   person:
#   cause:
#   asset:

# vars
CHAINCODE_NAME=solidary-network-chaincode
# model type
CONVECTOR_MODEL_PATH_PREFIX=network.solidary.convector
CONVECTOR_MODEL_PATH_PARTICIPANT=${CONVECTOR_MODEL_PATH_PREFIX}.participant
CONVECTOR_MODEL_PATH_PERSON=${CONVECTOR_MODEL_PATH_PREFIX}.person
CONVECTOR_MODEL_PATH_CAUSE=${CONVECTOR_MODEL_PATH_PREFIX}.cause
CONVECTOR_MODEL_PATH_ASSET=${CONVECTOR_MODEL_PATH_PREFIX}.asset
CONVECTOR_MODEL_PATH_TRANSACTION=${CONVECTOR_MODEL_PATH_PREFIX}.transaction
CONVECTOR_MODEL_PATH_GOODS=${CONVECTOR_MODEL_PATH_PREFIX}.goods
# Participants
GOV_ID=c8ca045c-9d1b-407f-b9ae-31711758f2d0
GOV_CODE=gov
MIT_ID=61868772-4afd-4f94-af6a-8c87cf450f8e
MIT_CODE=mit
NABA_ID=b130558c-b910-4e82-b92b-caa199a047c1
NABA_CODE=nab
BADB_ID=f8596b03-492d-4d46-b54e-c4a70a037aa5
BADB_CODE=bad
GODB_ID=0fcc878a-6900-49d9-9a29-dffd9b8dae3b
GODB_CODE=gba
POPB_ID=0fcc878a-6900-49d9-9a29-dffd9b8dae3c
POPB_CODE=pop
# Persons
JOHN_ID=4ea88521-031b-4279-9165-9c10e1839001
JANE_ID=4ea88521-031b-4279-9165-9c10e1838010
MINI_ID=4ea88521-031b-4279-9165-9c10e1839053
CARL_ID=4ea88521-031b-4279-9165-9c10e1839054
# Causes
CAUSE_001=acef70e5-cd25-4533-8392-9fa57e43cf11
CAUSE_002=acef70e5-cd25-4533-8392-9fa57e43cf12
CAUSE_003=acef70e5-cd25-4533-8392-9fa57e43cf69
# Assets
ASSET_001_ID=acef70e5-cd25-4533-8392-1fa57e430001
ASSET_002_ID=acef70e5-cd25-4533-8392-1fa57e430002
# Misc
TAGS="[\"red\", \"blue\"]"
LOCATION=40.1890144,-8.5171909
METADATA="{\"key\":\"value\"}"
METADATA_INTERNAL="{\"key\":\"internal value\"}"
# amabassadors
AMBASSADORS="[\"${JOHN_ID}\", \"${JANE_ID}\"]"

# commands
# npx hurl invoke ${CHAINCODE_NAME} participant_getAll
# npx hurl invoke ${CHAINCODE_NAME} person_getAll
# npx hurl invoke ${CHAINCODE_NAME} person_get 4ea88521-031b-4279-9165-9c10e1839001
# npx hurl invoke ${CHAINCODE_NAME} person_getByUsername johndoe
# npx hurl invoke ${CHAINCODE_NAME} cause_getAll
# npx hurl invoke ${CHAINCODE_NAME} asset_getAll
# npx hurl invoke ${CHAINCODE_NAME} transaction_getAll

# invoke with user `admin` uses `gov`
# invoke without specify user and org default to: user1 in org org1...

      # # gov: this is the first participant, must be created without user -u admin
      # echo "Creating participant: Big Government"
ID=${GOV_ID}
CODE=${GOV_CODE}
NAME="Big Government"
# PAYLOAD="{\"id\":\"${ID}\",\"code\":\"${CODE}\",\"name\":\"${NAME}\",\"email\":\"gov@mail.com\"}"
# # echo $PAYLOAD  | jq
# # with default user
# npx hurl invoke ${CHAINCODE_NAME} participant_create "${PAYLOAD}"
# first participant must be created with createWithParameters, if we use a model it fails, we must use here primitive string and not model objects else fails
# this way we can use user admin without fail
npx hurl invoke ${CHAINCODE_NAME} participant_createWithParameters "${GOV_ID}" "${GOV_CODE}" "${NAME}" -u admin
# npx hurl invoke ${CHAINCODE_NAME} participant_get ${GOV_ID} -u admin
# npx hurl invoke ${CHAINCODE_NAME} participant_getByCode ${GOV_CODE} -u admin

# org1
echo "Creating participant: MIT"
ID=${MIT_ID}
CODE=${MIT_CODE}
NAME="MIT"
PAYLOAD="{\"id\":\"${ID}\",\"code\":\"${CODE}\",\"name\":\"${NAME}\"}"
# echo $PAYLOAD  | jq
npx hurl invoke ${CHAINCODE_NAME} participant_create "${PAYLOAD}" -u admin
# there is no need for -u user1, it is the default
# npx hurl invoke ${CHAINCODE_NAME} participant_get ${MIT_ID}
# npx hurl invoke ${CHAINCODE_NAME} participant_getByCode ${MIT_CODE}

# org2 : thiw will use org wait a little more until dev-peer0.org2.hurley.... is up

echo "Creating participant: National Bank"
ID=${NABA_ID}
CODE=${NABA_CODE}
NAME="National Bank"
PAYLOAD="{\"id\":\"${ID}\",\"code\":\"${CODE}\",\"name\":\"${NAME}\"}"
# echo $PAYLOAD  | jq
npx hurl invoke ${CHAINCODE_NAME} participant_create "${PAYLOAD}"  -u user1 -o org1
# there is no need for -u user1, it is the default
# npx hurl invoke ${CHAINCODE_NAME} participant_get ${NABA_ID}
# npx hurl invoke ${CHAINCODE_NAME} participant_getByCode ${NABA_CODE}

# org3
echo "Creating participant: Bad Bank"
ID=${BADB_ID}
CODE=${BADB_CODE}
NAME="Bad Bank"
PAYLOAD="{\"id\":\"${ID}\",\"code\":\"${CODE}\",\"name\":\"${NAME}\"}"
# echo $PAYLOAD  | jq
npx hurl invoke ${CHAINCODE_NAME} participant_create "${PAYLOAD}" -u user1 -o org2
# there is no need for -u user1, it is the default
# npx hurl invoke ${CHAINCODE_NAME} participant_get ${BADB_ID} -u admin
# npx hurl invoke ${CHAINCODE_NAME} participant_getByCode ${BADB_CODE}

# org4
echo "Creating participant: God Bank"
ID=${GODB_ID}
CODE=${GODB_CODE}
NAME="God Bank"
PAYLOAD="{\"id\":\"${ID}\",\"code\":\"${CODE}\",\"name\":\"${NAME}\"}"
# echo $PAYLOAD  | jq
npx hurl invoke ${CHAINCODE_NAME} participant_create "${PAYLOAD}" -u user1 -o org2
# there is no need for -u user1, it is the default
# npx hurl invoke ${CHAINCODE_NAME} participant_get ${GODB_ID} -u user1 -o org2
# npx hurl invoke ${CHAINCODE_NAME} participant_getByCode ${GODB_CODE}

# create person with all data
ID=${JOHN_ID}
FIRST_NAME=John
LAST_NAME=Doe
USER_NAME=johndoe
EMAIL=${USER_NAME}@mail.com
FISCAL_NUMBER=182692124
DATE=61985472
PAYLOAD="{\"id\":\"${JOHN_ID}\",\"firstname\":\"${FIRST_NAME}\",\"lastname\":\"${LAST_NAME}\",\"beneficiaryNumber\":\"285191659\",\"birthDate\":\"${DATE}\",\"cardVersion\":\"006.007.23\",\"country\":\"PRT\",\"documentNumber\":\"09879462 0 ZZ3\",\"documentType\":\"Cartão De Cidadão\",\"emissionDate\":\"${DATE}\",\"emittingEntity\":\"República Portuguesa\",\"expirationDate\":\"${DATE}\",\"fatherFirstname\":\"Alberto\",\"fatherLastname\":\"De Andrade Monteiro\",\"fiscalNumber\":\"${FISCAL_NUMBER}\",\"gender\":\"M\",\"height\":\"1.81\",\"identityNumber\":\"098794620\",\"motherFirstname\":\"Maria Da Graça De Oliveira Mendes\",\"motherLastname\":\"Monteiro\",\"nationality\":\"PRT\",\"otherInformation\":\"\",\"pan\":\"0000036014662658\",\"requestLocation\":\"CRCiv. Figueira da Foz\",\"socialSecurityNumber\":\"11103478242\",\"username\":\"${USER_NAME}\",\"password\":\"12345678\",\"email\":\"${EMAIL}\"}"
# echo $PAYLOAD  | jq
npx hurl invoke ${CHAINCODE_NAME} person_create "${PAYLOAD}" -u admin
# npx hurl invoke ${CHAINCODE_NAME} person_get ${JOHN_ID} -u admin
# npx hurl invoke ${CHAINCODE_NAME} person_getByUsername ${USER_NAME} -u admin

# create person with all data
ID=${JANE_ID}
FIRST_NAME=Jane
LAST_NAME=Doe
USER_NAME=janedoe
EMAIL=${USER_NAME}@mail.com
FISCAL_NUMBER=582692178
DATE=61985472
PAYLOAD="{\"id\":\"${JANE_ID}\",\"firstname\":\"${FIRST_NAME}\",\"lastname\":\"${LAST_NAME}\",\"beneficiaryNumber\":\"385191659\",\"birthDate\":\"${DATE}\",\"cardVersion\":\"006.007.23\",\"country\":\"PRT\",\"documentNumber\":\"19879462 0 ZZ3\",\"documentType\":\"Cartão De Cidadão\",\"emissionDate\":\"${DATE}\",\"emittingEntity\":\"República Portuguesa\",\"expirationDate\":\"${DATE}\",\"fatherFirstname\":\"Alberto\",\"fatherLastname\":\"De Andrade Monteiro\",\"fiscalNumber\":\"${FISCAL_NUMBER}\",\"gender\":\"M\",\"height\":\"1.81\",\"identityNumber\":\"198794620\",\"motherFirstname\":\"Maria Da Graça De Oliveira Mendes\",\"motherLastname\":\"Monteiro\",\"nationality\":\"PRT\",\"otherInformation\":\"\",\"pan\":\"0000036014662658\",\"requestLocation\":\"CRCiv. Figueira da Foz\",\"socialSecurityNumber\":\"21103478242\",\"username\":\"${USER_NAME}\",\"password\":\"12345678\",\"email\":\"${EMAIL}\",\"mobilePhone\":\"351936202288\",\"postal\":\"3080-032\",\"city\":\"Figueira da Foz\",\"region\":\"Coimbra\",\"geoLocation\":\"40.1508,-8.8618\",\"timezone\":\"Europe/Lisbon\",\"personalInfo\":\"Just an ordinary man\",\"profile\":{\"data\":${METADATA}}}"
# echo $PAYLOAD  | jq
npx hurl invoke ${CHAINCODE_NAME} person_create "${PAYLOAD}" -u admin
# npx hurl invoke ${CHAINCODE_NAME} person_get ${JANE_ID} -u admin

# create person with minimal required data
ID=${MINI_ID}
FISCAL_NUMBER=182692152
# same as fiscalNumber
USER_NAME=${FISCAL_NUMBER}
PASS_WORD=12345678
PAYLOAD="{\"id\":\"${ID}\",\"fiscalNumber\":\"${FISCAL_NUMBER}\",\"username\":\"${USER_NAME}\", \"password\":\"${PASS_WORD}\"}"
# echo $PAYLOAD  | jq
npx hurl invoke ${CHAINCODE_NAME} person_create "${PAYLOAD}" -u admin
# Must be executed by user admin else it belongs to other participant.id/MIT_ID and NOT GOV_ID? - `-u admin`
# npx hurl invoke ${CHAINCODE_NAME} person_get ${ID} -u admin
# npx hurl invoke ${CHAINCODE_NAME} person_getByUsername ${USER_NAME} -u admin
# npx hurl invoke ${CHAINCODE_NAME} person_getByFiscalnumber ${FISCAL_NUMBER} -u admin

# org5 : with ambassadors : required to be after persons
echo "Creating participant: Pop Bank"
ID=${POPB_ID}
CODE=${POPB_CODE}
NAME="Pop Bank"
PAYLOAD="{\"id\":\"${ID}\",\"code\":\"${CODE}\",\"name\":\"${NAME}\",\"ambassadors\":${AMBASSADORS}}"
# echo $PAYLOAD  | jq
npx hurl invoke ${CHAINCODE_NAME} participant_create "${PAYLOAD}" -u user1 -o org2
# there is no need for -u user1, it is the default
# npx hurl invoke ${CHAINCODE_NAME} participant_get ${POPB_ID} -u user1 -o org2
# npx hurl invoke ${CHAINCODE_NAME} participant_getByCode ${POPB_CODE}

# create cause with all data (filter with date=1582414657)
ID=${CAUSE_001}
NAME=Cause001
INPUT_TYPE=${CONVECTOR_MODEL_PATH_PARTICIPANT}
INPUT_ID=${MIT_ID}
# Date and time (GMT): Wednesday, 1 January 2020 00:00:00
START_DATE=1577836800
# Date and time (GMT): Friday, 31 December 2021 23:59:59
END_DATE=1640995199
PAYLOAD="{\"id\":\"${ID}\",\"name\":\"${NAME}\",\"email\":\"cause001@mail.com\",\"startDate\":\"${START_DATE}\",\"endDate\":\"${END_DATE}\",\"location\":\"${LOCATION}\",\"tags\":${TAGS},\"ambassadors\":${AMBASSADORS},\"metaData\":${METADATA},\"input\":{\"id\":\"${INPUT_ID}\",\"type\":\"${INPUT_TYPE}\"}}"
# echo $PAYLOAD  | jq
# create and get with admin
npx hurl invoke ${CHAINCODE_NAME} cause_create "${PAYLOAD}" -u admin
# npx hurl invoke ${CHAINCODE_NAME} cause_get ${ID} -u admin

# create cause with all data (filter with date=1582414657)
ID=${CAUSE_002}
NAME=Cause002
TAGS="[\"black\", \"white\"]"
PAYLOAD="{\"id\":\"${ID}\",\"name\":\"${NAME}\",\"email\":\"cause002@mail.com\",\"startDate\":\"${START_DATE}\",\"endDate\":\"${END_DATE}\",\"location\":\"${LOCATION}\",\"tags\":${TAGS},\"ambassadors\":${AMBASSADORS},\"metaData\":${METADATA},\"input\":{\"id\":\"${INPUT_ID}\",\"type\":\"${INPUT_TYPE}\"}}"
# echo $PAYLOAD  | jq
npx hurl invoke ${CHAINCODE_NAME} cause_create "${PAYLOAD}" -u admin
# npx hurl invoke ${CHAINCODE_NAME} cause_get ${ID} -u admin

# create cause with minimal required data
ID=${CAUSE_003}
NAME=Cause003
INPUT_TYPE=${CONVECTOR_MODEL_PATH_PARTICIPANT}
INPUT_ID=${MIT_ID}
PAYLOAD="{\"id\":\"${ID}\",\"name\":\"${NAME}\",\"input\":{\"id\":\"${INPUT_ID}\",\"type\":\"${INPUT_TYPE}\"}}"
# echo $PAYLOAD  | jq
# with default user
npx hurl invoke ${CHAINCODE_NAME} cause_create "${PAYLOAD}" -u admin
# npx hurl invoke ${CHAINCODE_NAME} cause_get ${ID}

# create funds transaction : gov to john 1.11: john is ambassador of PopBank it works
ID=acef70e5-cd25-4533-8392-9fa57e43cf32
TRANSACTION_TYPE=TRANSFER_FUNDS
RESOURCE_TYPE=FUNDS
INPUT_TYPE=${CONVECTOR_MODEL_PATH_PARTICIPANT}
INPUT_ID=${POPB_ID}
OUTPUT_TYPE=${CONVECTOR_MODEL_PATH_PERSON}
OUTPUT_ID=${MINI_ID}
QUANTITY=1.11
CURRENCY=EUR
LOGGED_PERSON_ID=${JOHN_ID}
PAYLOAD="{\"id\":\"${ID}\",\"transactionType\":\"${TRANSACTION_TYPE}\",\"resourceType\":\"${RESOURCE_TYPE}\",\"input\":{\"id\":\"${INPUT_ID}\",\"type\":\"${INPUT_TYPE}\"},\"output\":{\"id\":\"${OUTPUT_ID}\",\"type\":\"${OUTPUT_TYPE}\"},\"quantity\":\"${QUANTITY}\",\"currency\":\"${CURRENCY}\",\"location\":\"${LOCATION}\",\"tags\":${TAGS},\"loggedPersonId\":\"${LOGGED_PERSON_ID}\",\"metaData\":${METADATA},\"metaDataInternal\":${METADATA_INTERNAL}}"
# echo $PAYLOAD  | jq
npx hurl invoke ${CHAINCODE_NAME} transaction_create "${PAYLOAD}" -u user1
# npx hurl invoke ${CHAINCODE_NAME} transaction_get ${ID} -u user1

# create funds transaction : Cause001 to jane 1.11: john is ambassador of Cause001 it works
ID=acef70e5-cd25-4533-8392-9fa57e43cf33
INPUT_TYPE=${CONVECTOR_MODEL_PATH_CAUSE}
INPUT_ID=${CAUSE_001}
LOGGED_PERSON_ID=${JOHN_ID}
PAYLOAD="{\"id\":\"${ID}\",\"transactionType\":\"${TRANSACTION_TYPE}\",\"resourceType\":\"${RESOURCE_TYPE}\",\"input\":{\"id\":\"${INPUT_ID}\",\"type\":\"${INPUT_TYPE}\"},\"output\":{\"id\":\"${OUTPUT_ID}\",\"type\":\"${OUTPUT_TYPE}\"},\"quantity\":\"${QUANTITY}\",\"currency\":\"${CURRENCY}\",\"location\":\"${LOCATION}\",\"loggedPersonId\":\"${LOGGED_PERSON_ID}\",\"metaData\":${METADATA},\"metaDataInternal\":${METADATA_INTERNAL}}"
# echo $PAYLOAD  | jq
npx hurl invoke ${CHAINCODE_NAME} transaction_create "${PAYLOAD}" -u admin
# npx hurl invoke ${CHAINCODE_NAME} transaction_get ${ID} -u admin

# create volunteeringHours transaction : john 10hours to Cause001
ID=acef70e5-cd25-4533-8392-9fa57e43cf34
TRANSACTION_TYPE=TRANSFER_VOLUNTEERING_HOURS
RESOURCE_TYPE=VOLUNTEERING_HOURS
INPUT_TYPE=${CONVECTOR_MODEL_PATH_PERSON}
INPUT_ID=${JOHN_ID}
OUTPUT_TYPE=${CONVECTOR_MODEL_PATH_CAUSE}
OUTPUT_ID=${CAUSE_001}
QUANTITY=10
LOGGED_PERSON_ID=${JOHN_ID}
PAYLOAD="{\"id\":\"${ID}\",\"transactionType\":\"${TRANSACTION_TYPE}\",\"resourceType\":\"${RESOURCE_TYPE}\",\"input\":{\"id\":\"${INPUT_ID}\",\"type\":\"${INPUT_TYPE}\"},\"output\":{\"id\":\"${OUTPUT_ID}\",\"type\":\"${OUTPUT_TYPE}\"},\"quantity\":\"${QUANTITY}\",\"location\":\"${LOCATION}\",\"tags\":${TAGS},\"loggedPersonId\":\"${LOGGED_PERSON_ID}\",\"metaData\":${METADATA},\"metaDataInternal\":${METADATA_INTERNAL}}"
# echo $PAYLOAD  | jq
npx hurl invoke ${CHAINCODE_NAME} transaction_create "${PAYLOAD}" -u user1
# npx hurl invoke ${CHAINCODE_NAME} transaction_get ${ID} -u user1

# create volunteeringHours transaction : jane 20hours to Cause002
ID=acef70e5-cd25-4533-8392-9fa57e43cf35
INPUT_TYPE=${CONVECTOR_MODEL_PATH_PERSON}
INPUT_ID=${JANE_ID}
OUTPUT_TYPE=${CONVECTOR_MODEL_PATH_CAUSE}
OUTPUT_ID=${CAUSE_002}
QUANTITY=20
PAYLOAD="{\"id\":\"${ID}\",\"transactionType\":\"${TRANSACTION_TYPE}\",\"resourceType\":\"${RESOURCE_TYPE}\",\"input\":{\"id\":\"${INPUT_ID}\",\"type\":\"${INPUT_TYPE}\"},\"output\":{\"id\":\"${OUTPUT_ID}\",\"type\":\"${OUTPUT_TYPE}\"},\"quantity\":\"${QUANTITY}\",\"location\":\"${LOCATION}\",\"tags\":${TAGS},\"loggedPersonId\":\"${LOGGED_PERSON_ID}\",\"metaData\":${METADATA},\"metaDataInternal\":${METADATA_INTERNAL}}"
# echo $PAYLOAD  | jq
npx hurl invoke ${CHAINCODE_NAME} transaction_create "${PAYLOAD}" -u user1
# npx hurl invoke ${CHAINCODE_NAME} transaction_get ${ID} -u user1

# create volunteeringHours transaction : jane 20hours to Cause002
ID=acef70e5-cd25-4533-8392-9fa57e43cf36
INPUT_TYPE=${CONVECTOR_MODEL_PATH_PERSON}
INPUT_ID=${JANE_ID}
QUANTITY=20
PAYLOAD="{\"id\":\"${ID}\",\"transactionType\":\"${TRANSACTION_TYPE}\",\"resourceType\":\"${RESOURCE_TYPE}\",\"input\":{\"id\":\"${INPUT_ID}\",\"type\":\"${INPUT_TYPE}\"},\"output\":{\"id\":\"${OUTPUT_ID}\",\"type\":\"${OUTPUT_TYPE}\"},\"quantity\":\"${QUANTITY}\",\"location\":\"${LOCATION}\",\"tags\":${TAGS},\"loggedPersonId\":\"${LOGGED_PERSON_ID}\",\"metaData\":${METADATA},\"metaDataInternal\":${METADATA_INTERNAL}}"
# echo $PAYLOAD  | jq
npx hurl invoke ${CHAINCODE_NAME} transaction_create "${PAYLOAD}" -u user1
# npx hurl invoke ${CHAINCODE_NAME} transaction_get ${ID} -u user1

# create asset with all data (filter with date=1582414657)
ID=${ASSET_001_ID}
NAME=Asset001
DESCRIPTION=someDescription
ASSET_TYPE=PHYSICAL_ASSET
OWNER_TYPE=${CONVECTOR_MODEL_PATH_PERSON}
OWNER_ID=${JOHN_ID}
PAYLOAD="{\"id\":\"${ID}\",\"name\":\"${NAME}\",\"description\":\"${DESCRIPTION}\",\"assetType\":\"${ASSET_TYPE}\",\"location\":\"${LOCATION}\",\"tags\":${TAGS},\"ambassadors\":${AMBASSADORS},\"metaData\":${METADATA},\"owner\":{\"id\":\"${OWNER_ID}\",\"type\":\"${OWNER_TYPE}\"}}"
# echo $PAYLOAD  | jq
npx hurl invoke ${CHAINCODE_NAME} asset_create "${PAYLOAD}" -u user1
# npx hurl invoke ${CHAINCODE_NAME} asset_get ${ID}

# create asset with minimal data (filter with date=1582414657) and with ambassadors
ID=${ASSET_002_ID}
NAME=Asset002
ASSET_TYPE=DIGITAL_ASSET
OWNER_ID=${JOHN_ID}
OWNER_TYPE=${CONVECTOR_MODEL_PATH_PERSON}
PAYLOAD="{\"id\":\"${ID}\",\"name\":\"${NAME}\",\"assetType\":\"${ASSET_TYPE}\",\"location\":\"${LOCATION}\",\"tags\":${TAGS},\"metaData\":${METADATA},\"owner\":{\"id\":\"${OWNER_ID}\",\"type\":\"${OWNER_TYPE}\"},\"ambassadors\":${AMBASSADORS}}"
# echo $PAYLOAD  | jq
npx hurl invoke ${CHAINCODE_NAME} asset_create "${PAYLOAD}" -u admin
# npx hurl invoke ${CHAINCODE_NAME} asset_get ${ID} -u admin

# transaction asset from owner johndoe, with logged user janedoe, acting has an ambassador of johndoe, transfer to cause001 | require to send input id and type even if acting has an ambassador
# here we lost asset ambassadors, when we transfer it
ID=acef70e5-cd25-4533-8392-9fa57e43cf56
TRANSACTION_TYPE=TRANSFER_ASSET
RESOURCE_TYPE=PHYSICAL_ASSET
ASSET_ID=${ASSET_001_ID}
INPUT_TYPE=${CONVECTOR_MODEL_PATH_PERSON}
INPUT_ID=${JOHN_ID}
OUTPUT_TYPE=${CONVECTOR_MODEL_PATH_CAUSE}
OUTPUT_ID=${CAUSE_001}
LOGGED_PERSON_ID=${JANE_ID}
PAYLOAD="{\"id\":\"${ID}\",\"transactionType\":\"${TRANSACTION_TYPE}\",\"resourceType\":\"${RESOURCE_TYPE}\",\"input\":{\"id\":\"${INPUT_ID}\",\"type\":\"${INPUT_TYPE}\"},\"output\":{\"id\":\"${OUTPUT_ID}\",\"type\":\"${OUTPUT_TYPE}\"},\"location\":\"${LOCATION}\",\"metaData\":${METADATA},\"metaDataInternal\":${METADATA_INTERNAL},\"assetId\":\"${ASSET_ID}\",\"loggedPersonId\":\"${LOGGED_PERSON_ID}\"}"
# echo $PAYLOAD  | jq
npx hurl invoke ${CHAINCODE_NAME} transaction_create "${PAYLOAD}" -u user1
# npx hurl invoke ${CHAINCODE_NAME} transaction_get ${ID} -u admin

# TODO: this will work in future when we have update and add new ambassadors to asset, after last transfers, we must nominate new ambassadors
# # transaction asset from cause001, with logged user janedoe, acting has an ambassador of cause001, transfer to PopBank | require to send input id and type even if acting has an ambassador
# ID=acef70e5-cd25-4533-8392-9fa57e43cf57
# INPUT_TYPE=${CONVECTOR_MODEL_PATH_CAUSE}
# INPUT_ID=${CAUSE_001}
# OUTPUT_TYPE=${CONVECTOR_MODEL_PATH_PARTICIPANT}
# OUTPUT_ID=${POPB_ID}
# LOGGED_PERSON_ID=${JANE_ID}
# PAYLOAD="{\"id\":\"${ID}\",\"transactionType\":\"${TRANSACTION_TYPE}\",\"resourceType\":\"${RESOURCE_TYPE}\",\"input\":{\"id\":\"${INPUT_ID}\",\"type\":\"${INPUT_TYPE}\"},\"output\":{\"id\":\"${OUTPUT_ID}\",\"type\":\"${OUTPUT_TYPE}\"},\"location\":\"${LOCATION}\",\"metaData\":${METADATA},\"metaDataInternal\":${METADATA_INTERNAL},\"assetId\":\"${ASSET_ID}\",\"loggedPersonId\":\"${LOGGED_PERSON_ID}\"}"
# # echo $PAYLOAD  | jq
# npx hurl invoke ${CHAINCODE_NAME} transaction_create "${PAYLOAD}" -u user1
# # npx hurl invoke ${CHAINCODE_NAME} transaction_get ${ID} -u admin

# TODO: this will work in future when we have update and add new ambassadors to asset, after last transfers, we must nominate new ambassadors
# # transaction asset from PopBank, with logged user johndoe, acting has an ambassador of PopBank, transfer to cause002 | require to send input id and type even if acting has an ambassador
# ID=acef70e5-cd25-4533-8392-9fa57e43cf61
# INPUT_TYPE=${CONVECTOR_MODEL_PATH_PARTICIPANT}
# INPUT_ID=${POPB_ID}
# OUTPUT_TYPE=${CONVECTOR_MODEL_PATH_CAUSE}
# OUTPUT_ID=${CAUSE_002}
# LOGGED_PERSON_ID=${JOHN_ID}
# PAYLOAD="{\"id\":\"${ID}\",\"transactionType\":\"${TRANSACTION_TYPE}\",\"resourceType\":\"${RESOURCE_TYPE}\",\"input\":{\"id\":\"${INPUT_ID}\",\"type\":\"${INPUT_TYPE}\"},\"output\":{\"id\":\"${OUTPUT_ID}\",\"type\":\"${OUTPUT_TYPE}\"},\"location\":\"${LOCATION}\",\"metaData\":${METADATA},\"metaDataInternal\":${METADATA_INTERNAL},\"assetId\":\"${ASSET_ID}\",\"loggedPersonId\":\"${LOGGED_PERSON_ID}\"}"
# # echo $PAYLOAD  | jq
# npx hurl invoke ${CHAINCODE_NAME} transaction_create "${PAYLOAD}"
# # npx hurl invoke ${CHAINCODE_NAME} transaction_get ${ID} -u admin

# transaction of goods: person johnDoe to cause001
ID=acef70e5-cd25-4533-8392-9fa57e43cf94
TRANSACTION_TYPE=TRANSFER_GOODS
RESOURCE_TYPE=GENERIC_GOODS
INPUT_TYPE=${CONVECTOR_MODEL_PATH_PERSON}
INPUT_ID=${JOHN_ID}
OUTPUT_TYPE=${CONVECTOR_MODEL_PATH_CAUSE}
OUTPUT_ID=${CAUSE_001}
# this must fail in type of TRANSFER_GOODS
LOGGED_PERSON_ID=${JOHN_ID}
GOODS_INPUT='[{"id":"80450045-d20d-4cdd-b937-c9bb46a48581","code": "008","barCode": "ean008","name": "name008","description": "description008","quantity": 200},{"id":"80450045-d20d-4cdd-b937-c9bb46a48582","code": "009","barCode": "ean009","name": "name009","description": "description009","quantity": 900}]'
PAYLOAD="{\"id\":\"${ID}\",\"transactionType\":\"${TRANSACTION_TYPE}\",\"resourceType\":\"${RESOURCE_TYPE}\",\"input\":{\"id\":\"${INPUT_ID}\",\"type\":\"${INPUT_TYPE}\"},\"output\":{\"id\":\"${OUTPUT_ID}\",\"type\":\"${OUTPUT_TYPE}\"},\"location\":\"${LOCATION}\",\"tags\":${TAGS},\"goodsInput\":${GOODS_INPUT},\"metaData\":${METADATA},\"metaDataInternal\":${METADATA_INTERNAL},\"loggedPersonId\":\"${LOGGED_PERSON_ID}\"}"
# echo $PAYLOAD  | jq
npx hurl invoke ${CHAINCODE_NAME} transaction_create "${PAYLOAD}" -u user1
# npx hurl invoke ${CHAINCODE_NAME} transaction_get ${ID} -u admin

# transaction of goods: person janeDoe to cause001
ID=acef70e5-cd25-4533-8392-9fa57e43cf95
INPUT_ID=${JANE_ID}
LOGGED_PERSON_ID=${JANE_ID}
GOODS_INPUT='[{"id":"80450045-d20d-4cdd-b937-c9bb46a48581","code": "010","barCode": "ean010","name": "name010","description": "description010","quantity": 10},{"id":"80450045-d20d-4cdd-b937-c9bb46a48582","code": "011","barCode": "ean011","name": "name011","description": "description011","quantity": 11}]'
PAYLOAD="{\"id\":\"${ID}\",\"transactionType\":\"${TRANSACTION_TYPE}\",\"resourceType\":\"${RESOURCE_TYPE}\",\"input\":{\"id\":\"${INPUT_ID}\",\"type\":\"${INPUT_TYPE}\"},\"output\":{\"id\":\"${OUTPUT_ID}\",\"type\":\"${OUTPUT_TYPE}\"},\"location\":\"${LOCATION}\",\"tags\":${TAGS},\"goodsInput\":${GOODS_INPUT},\"metaData\":${METADATA},\"metaDataInternal\":${METADATA_INTERNAL},\"loggedPersonId\":\"${LOGGED_PERSON_ID}\"}"
# echo $PAYLOAD  | jq
npx hurl invoke ${CHAINCODE_NAME} transaction_create "${PAYLOAD}" -u user1
# npx hurl invoke ${CHAINCODE_NAME} transaction_get ${ID} -u admin

# transaction of goods: cause001 to cause002 (must have goods in stock)
ID=acef70e5-cd25-4533-8392-9fa57e43cf16
INPUT_ID=${CAUSE_001}
INPUT_TYPE=${CONVECTOR_MODEL_PATH_CAUSE}
OUTPUT_ID=${CAUSE_002}
GOODS_INPUT='[{"id":"80450045-d20d-4cdd-b937-c9bb46a48581","code": "008","barCode": "ean008","name": "name008","description": "description008","quantity": 8},{"id":"80450045-d20d-4cdd-b937-c9bb46a48582","code": "009","barCode": "ean009","name": "name009","description": "description009","quantity": 9},{"id":"80450045-d20d-4cdd-b937-c9bb46a48581","code": "010","barCode": "ean010","name": "name010","description": "description010","quantity": 10},{"id":"80450045-d20d-4cdd-b937-c9bb46a48582","code": "011","barCode": "ean011","name": "name011","description": "description011","quantity": 11}]'
PAYLOAD="{\"id\":\"${ID}\",\"transactionType\":\"${TRANSACTION_TYPE}\",\"resourceType\":\"${RESOURCE_TYPE}\",\"input\":{\"id\":\"${INPUT_ID}\",\"type\":\"${INPUT_TYPE}\"},\"output\":{\"id\":\"${OUTPUT_ID}\",\"type\":\"${OUTPUT_TYPE}\"},\"location\":\"${LOCATION}\",\"tags\":${TAGS},\"goodsInput\":${GOODS_INPUT},\"metaData\":${METADATA},\"metaDataInternal\":${METADATA_INTERNAL},\"loggedPersonId\":\"${LOGGED_PERSON_ID}\"}"
# echo $PAYLOAD  | jq
npx hurl invoke ${CHAINCODE_NAME} transaction_create "${PAYLOAD}" -u user1
# npx hurl invoke ${CHAINCODE_NAME} transaction_get ${ID} -u admin

# transaction of goods: cause001 to cause002 (must have goods in stock)
ID=acef70e5-cd25-4533-8392-9fa57e43cf18
GOODS_INPUT='[{"id":"80450045-d20d-4cdd-b937-c9bb46a48581","code": "008","barCode": "ean008","name": "name008CHANGE-FAIL","description": "description008CHANGE-FAIL","quantity": 92},{"id":"80450045-d20d-4cdd-b937-c9bb46a48582","code": "009","barCode": "ean009","name": "name009CHANGE-FAIL","description": "description009CHANGE-FAIL","quantity": 91}]'
PAYLOAD="{\"id\":\"${ID}\",\"transactionType\":\"${TRANSACTION_TYPE}\",\"resourceType\":\"${RESOURCE_TYPE}\",\"input\":{\"id\":\"${INPUT_ID}\",\"type\":\"${INPUT_TYPE}\"},\"output\":{\"id\":\"${OUTPUT_ID}\",\"type\":\"${OUTPUT_TYPE}\"},\"location\":\"${LOCATION}\",\"tags\":${TAGS},\"goodsInput\":${GOODS_INPUT},\"metaData\":${METADATA},\"metaDataInternal\":${METADATA_INTERNAL},\"loggedPersonId\":\"${LOGGED_PERSON_ID}\"}"
# echo $PAYLOAD  | jq
npx hurl invoke ${CHAINCODE_NAME} transaction_create "${PAYLOAD}" -u user1
# npx hurl invoke ${CHAINCODE_NAME} transaction_get ${ID} -u admin

# transaction of goods: cause001 to participant gov (must have goods in stock), clean stocks, all 4 items will  be zeroed
ID=acef70e5-cd25-4533-8392-9fa57e43cf19
OUTPUT_TYPE=${CONVECTOR_MODEL_PATH_PARTICIPANT}
OUTPUT_ID=${GOV_ID}
GOODS_INPUT='[{"id":"80450045-d20d-4cdd-b937-c9bb46a48581","code": "008","barCode": "ean008","name": "name008CHANGE-FAIL","description": "description008CHANGE-FAIL","quantity": 100},{"id":"80450045-d20d-4cdd-b937-c9bb46a48582","code": "009","barCode": "ean009","name": "name009","description": "description009","quantity": 800}]'
PAYLOAD="{\"id\":\"${ID}\",\"transactionType\":\"${TRANSACTION_TYPE}\",\"resourceType\":\"${RESOURCE_TYPE}\",\"input\":{\"id\":\"${INPUT_ID}\",\"type\":\"${INPUT_TYPE}\"},\"output\":{\"id\":\"${OUTPUT_ID}\",\"type\":\"${OUTPUT_TYPE}\"},\"location\":\"${LOCATION}\",\"tags\":${TAGS},\"goodsInput\":${GOODS_INPUT},\"metaData\":${METADATA},\"metaDataInternal\":${METADATA_INTERNAL},\"loggedPersonId\":\"${LOGGED_PERSON_ID}\"}"
# echo $PAYLOAD  | jq
npx hurl invoke ${CHAINCODE_NAME} transaction_create "${PAYLOAD}" -u user1
# npx hurl invoke ${CHAINCODE_NAME} transaction_get ${ID} -u admin

# transaction of goods: cause002 to john (must have goods in stock), clean stocks, 010 and 011, leave 008 and 009 with 100units, with a ambassador
ID=acef70e5-cd25-4533-8392-9fa57e43cf20
INPUT_TYPE=${CONVECTOR_MODEL_PATH_CAUSE}
INPUT_ID=${CAUSE_002}
OUTPUT_TYPE=${CONVECTOR_MODEL_PATH_PERSON}
OUTPUT_ID=${JOHN_ID}
GOODS_INPUT='[{"id":"80450045-d20d-4cdd-b937-c9bb46a48581","code": "010","barCode": "ean010","name": "name010","description": "description010","quantity": 10},{"id":"80450045-d20d-4cdd-b937-c9bb46a48582","code": "011","barCode": "ean011","name": "name011","description": "description011","quantity": 11}]'
PAYLOAD="{\"id\":\"${ID}\",\"transactionType\":\"${TRANSACTION_TYPE}\",\"resourceType\":\"${RESOURCE_TYPE}\",\"input\":{\"id\":\"${INPUT_ID}\",\"type\":\"${INPUT_TYPE}\"},\"output\":{\"id\":\"${OUTPUT_ID}\",\"type\":\"${OUTPUT_TYPE}\"},\"location\":\"${LOCATION}\",\"tags\":${TAGS},\"goodsInput\":${GOODS_INPUT},\"metaData\":${METADATA},\"metaDataInternal\":${METADATA_INTERNAL},\"loggedPersonId\":\"${LOGGED_PERSON_ID}\"}"
# echo $PAYLOAD  | jq
npx hurl invoke ${CHAINCODE_NAME} transaction_create "${PAYLOAD}" -u user1
# npx hurl invoke ${CHAINCODE_NAME} transaction_get ${ID} -u admin

# transaction of goods: jane to john : fraction numbers
ID=acef70e5-cd25-4533-8392-9fa57e43cf21
INPUT_TYPE=${CONVECTOR_MODEL_PATH_PERSON}
INPUT_ID=${JANE_ID}
GOODS_INPUT='[{"id":"80450045-d20d-4cdd-b937-c9bb46a48581","code": "010","barCode": "ean010","name": "name010","description": "description010","quantity": 9.5},{"id":"80450045-d20d-4cdd-b937-c9bb46a48582","code": "011","barCode": "ean011","name": "name011","description": "description011","quantity": 10.11}]'
PAYLOAD="{\"id\":\"${ID}\",\"transactionType\":\"${TRANSACTION_TYPE}\",\"resourceType\":\"${RESOURCE_TYPE}\",\"input\":{\"id\":\"${INPUT_ID}\",\"type\":\"${INPUT_TYPE}\"},\"output\":{\"id\":\"${OUTPUT_ID}\",\"type\":\"${OUTPUT_TYPE}\"},\"location\":\"${LOCATION}\",\"tags\":${TAGS},\"goodsInput\":${GOODS_INPUT},\"metaData\":${METADATA},\"metaDataInternal\":${METADATA_INTERNAL},\"loggedPersonId\":\"${LOGGED_PERSON_ID}\"}"
# echo $PAYLOAD  | jq
npx hurl invoke ${CHAINCODE_NAME} transaction_create "${PAYLOAD}" -u user1
# npx hurl invoke ${CHAINCODE_NAME} transaction_get ${ID} -u admin

# todo add INDEXES to complex filters

# complex filters



# TODO: Today its seems that when we create participants it will using wallets of org, org2 etc
# see : https://gitlab.koakh.com/koakh/node-nestjs-hyperledger-convector-starter/blob/master/seed.sh



# IT WORKS if we create person with -u admin and send graphql request with certifierID id gov, 
# in this case "certifierID": "{{ participantIdGov }}" 


# TODO used to change attribute : must be created with admin user
# BF:DB:60:71:98:D2:73:D7:BF:67:A4:1F:D6:BB:15:41:5C:29:6B:68 !== 93:AB:69:90:70:9E:63:32:05:C0:CC:49:8B:A9:A6:55:DA:BC:75:9A
# if (this.sender !== participantActiveIdentity.fingerprint) {
#   throw new Error(`Requester identity cannot sign with the current certificate ${this.sender}. This means that the user requesting the tx and the user set in the param certifierId do not match`);
# }

# create person with minimal required data
ID=${CARL_ID}
FISCAL_NUMBER=182692153
# same as fiscalNumber
USER_NAME=${FISCAL_NUMBER}
PASS_WORD=12345678
PAYLOAD="{\"id\":\"${ID}\",\"fiscalNumber\":\"${FISCAL_NUMBER}\",\"username\":\"${USER_NAME}\", \"password\":\"${PASS_WORD}\"}"
# echo $PAYLOAD  | jq
npx hurl invoke ${CHAINCODE_NAME} person_create "${PAYLOAD}" -u admin

# Must be executed by user admin else it belongs to other participant.id/MIT_ID and NOT GOV_ID? - `-u admin`
# npx hurl invoke ${CHAINCODE_NAME} person_get ${ID} -u admin
# npx hurl invoke ${CHAINCODE_NAME} person_getByUsername ${USER_NAME} -u admin
# npx hurl invoke ${CHAINCODE_NAME} person_getByFiscalnumber ${FISCAL_NUMBER} -u admin

echo "Adding attribute 'birth-year' as the Big Government identity"
npx hurl invoke person person_addAttribute "1-100-100" "{\"id\": \"birth-year\", \"certifierID\": \"gov\", \"content\": \"1993\", \"issuedDate\": 1554239270 }" -u admin










# note for escaped $lte, work with sort:[{name:"asc"}] and sort:["name"]
# persisted "createdDate": "1582410746061", "name":"Big Government"
# npx hurl invoke ${CHAINCODE_NAME} participant_getComplexQuery "{\"filter\":{\"name\":\"Big Government\",\"createdDate\":{\"\$lte\":1582410746061,\"\$gte\":1582410746061}},\"sort\":[{\"name\":\"asc\"}]}"
npx hurl invoke ${CHAINCODE_NAME} participant_getComplexQuery "{\"filter\":{\"name\":\"Big Government\"},\"sort\":[{\"name\":\"asc\"}]}"
# persisted "createdDate": "1582410790588", "username": "janedoe"
npx hurl invoke ${CHAINCODE_NAME} person_getComplexQuery "{\"filter\":{\"username\":\"janedoe\",\"createdDate\":{\"\$lte\":1582410790588,\"\$gte\":1582410790588}},\"sort\":[{\"username\":\"asc\"}]}"
# persisted "startDate": "1582414657", "endDate": "1582414657", "name":"Cause002b"
npx hurl invoke ${CHAINCODE_NAME} cause_getComplexQuery "{\"filter\":{\"name\":\"Cause002b\",\"startDate\":{\"\$lte\":1582414657},\"endDate\":{\"\$gte\":1582414657}},\"sort\":[{\"name\":\"asc\"}]}"
# persisted "name":"Asset002" now use postfix code ex "Asset002 [acef70e5]"
npx hurl invoke ${CHAINCODE_NAME} asset_getComplexQuery "{\"filter\":{\"name\":\"Asset002\"},\"sort\":[{\"name\":\"asc\"}]}"
# persisted "createdDate": "1582410817579", "currency": "EUR"
npx hurl invoke ${CHAINCODE_NAME} transaction_getComplexQuery "{\"filter\":{\"currency\":\"EUR\",\"createdDate\":{\"\$lte\":1582410817579,\"\$gte\":1582410817579}},\"sort\":[{\"quantity\":\"asc\"}]}"
