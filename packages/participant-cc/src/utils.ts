import * as bcrypt from 'bcrypt';
import { appConstants as c } from '@solidary-network/common-cc';
import { Participant } from './participant.model';

// duplicated with 
// packages/person-cc/src/utils.ts
// packages/participant-cc/src/utils.ts

const bcryptSaltRounds: number = 10;

export const hashPassword = (password: string): string => {
  return bcrypt.hashSync(password, bcryptSaltRounds);
};

/**
 * get Participant by Identity/Fingerprint
 */
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

  // TODO: if (!!participant && !participant[0].id) {
  if (!participant || !participant[0] || !participant[0].id) {
    throw new Error('Cant find a participant with that fingerprint');
  }
  return participant[0];
}

/**
 * every model has is checkUniqueField implementation with its type
 * richQuery helper to check unique fields on model Participant
 */
export const checkUniqueField = async (fieldName: string, fieldValue: string) => {
  const exists = await Participant.query(Participant, {
    selector: {
      type: c.CONVECTOR_MODEL_PATH_PARTICIPANT,
      [fieldName]: fieldValue,
      // participant: {
      //   id: participant.id
      // }
    }
  });
  if ((exists as Participant[]).length > 0) {
    // remove first _ ex _id to id before display error
    const fieldDisplay: string = (fieldName.startsWith('_')) ? fieldName.substr(1, fieldName.length) : fieldName;
    throw new Error(`There is a participant registered with that ${fieldDisplay} '${fieldValue}'`);
  }
}
