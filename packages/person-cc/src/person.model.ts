import { appConstants as c, UserRoles, x509Identities, GenericBalance, Goods, CurrentUser, getCurrentUserFilter } from '@solidary-chain/common-cc';
import { Participant } from '@solidary-chain/participant-cc';
import { ConvectorModel, Default, FlatConvectorModel, ReadOnly, Required, Validate } from '@worldsibu/convector-core';
import * as yup from 'yup';
import { PersonAttribute } from './person-attribute.model';

export class Person extends ConvectorModel<Person> {
  @ReadOnly()
  @Required()
  public readonly type = c.CONVECTOR_MODEL_PATH_PERSON;

  // non citizenCard data

  @Validate(yup.string()
    .min(4, c.YUP_MESSAGE_USERNAME_TO_SHORT)
    .max(16, c.YUP_MESSAGE_USERNAME_TO_LONG)
  )
  public username: string;

  @Required()
  @Validate(yup.string()
    .min(8, c.YUP_MESSAGE_PASSWORD_TO_SHORT)
    .matches(c.REGEX_PASSWORD, c.YUP_MESSAGE_INVALID_PASSWORD)
  )
  public password: string;

  @Validate(yup.string().matches(c.REGEX_EMAIL, c.YUP_MESSAGE_INVALID_EMAIL))
  public email: string;

  @Validate(yup.array(PersonAttribute.schema()))
  public attributes: Array<PersonAttribute>;

  @Default([UserRoles.ROLE_USER])
  @Validate(yup.array().of(yup.string()))
  public roles: Array<String>;

  @Required()
  @Validate(Participant.schema())
  public participant: FlatConvectorModel<Participant>;

  @Required()
  @Validate(yup.array(x509Identities.schema()))
  public identities: Array<FlatConvectorModel<x509Identities>>;

  @Validate(yup.object().nullable())
  public metaData: any;

  @Validate(yup.object().nullable())
  public metaDataInternal: any;

  @Required()
  @Validate(yup.number())
  public createdDate: number;

  @Required()
  @Validate(GenericBalance.schema())
  public fundsBalance: GenericBalance;

  @Required()
  @Validate(GenericBalance.schema())
  public volunteeringHoursBalance: GenericBalance;

  @Required()
  @Validate(yup.array(Goods.schema()))
  public goodsStock: Array<FlatConvectorModel<Goods>>;

  // extended non citizenCard data

  @Required()
  @Validate(yup.number())
  public registrationDate: number;

  @Validate(yup.string().matches(c.REGEX_PHONE_NUMBER, c.YUP_MESSAGE_INVALID_PHONE_NUMBER))
  public mobilePhone: string;

  @Validate(yup.string())
  public postal: string;

  @Validate(yup.string())
  public city: string;

  @Validate(yup.string())
  public region: string;

  @Validate(yup.string())
  public geoLocation: string;

  @Validate(yup.string())
  public timezone: string;

  @Validate(yup.string())
  public personalInfo: string;

  // store future profile and reputation average object
  @Validate(yup.object().nullable())
  public profile: any;

  // citizenCard data

  // Mário Alberto
  // @Required()
  @Validate(yup.string())
  public firstName: string;

  // Mendes Monteiro
  // @Required()
  @Validate(yup.string())
  public lastName: string;

  // M
  // @Required()
  @Validate(yup.string().max(20))
  public gender: string;

  // 1,81
  // @Required()
  @Validate(yup.string())
  public height: number;

  // Alberto
  // @Required()
  @Validate(yup.string())
  public fatherFirstName: string;

  // De Andrade Monteiro
  // @Required()
  @Validate(yup.string())
  public fatherLastName: string;

  // Maria Da Graça De Oliveira Mendes
  // @Required()
  @Validate(yup.string())
  public motherFirstName: string;

  // Monteiro
  // @Required()
  @Validate(yup.string())
  public motherLastName: string;

  // 19 12 1971
  // @Required()
  @Validate(yup.number())
  public birthDate: number;

  // PRT
  // @Required()
  @Validate(yup.string())
  public nationality: string;

  // PRT
  // @Required()
  @Validate(yup.string())
  public country: string;

  // 09879462 0 ZZ3
  // @Required()
  @Validate(yup.string())
  public documentNumber: string;

  // Cartão De Cidadão
  // @Required()
  @Validate(yup.string())
  public documentType: string;

  // 006.007.23
  // @Required()
  @Validate(yup.string())
  public cardVersion: string;

  // 08 05 2018
  // @Required()
  @Validate(yup.number())
  public emissionDate: number;

  // 08 05 2028
  // @Required()
  @Validate(yup.number())
  public expirationDate: number;

  // República Portuguesa
  // @Required()
  @Validate(yup.string())
  public emittingEntity: string;

  // 098794620
  // @Required()
  @Validate(yup.string())
  public identityNumber: string;

  // 182692124
  // @Required()
  @Validate(yup.string().matches(c.REGEX_FISCAL_NUMBER, c.YUP_MESSAGE_INVALID_FISCAL_NUMBER))
  public fiscalNumber: string;

  // 11103478242
  // @Required()
  @Validate(yup.string())
  public socialSecurityNumber: string;

  // 285191659
  // @Required()
  @Validate(yup.string())
  public beneficiaryNumber: string;

  // 0000036014662658
  // @Required()
  @Validate(yup.string())
  public pan: string;

  // CRCiv. Figueira da Foz
  // @Required()
  @Validate(yup.string())
  public requestLocation: string;

  // @Required()
  @Validate(yup.string()/*.nullable()*/)
  public otherInformation: string;

  // above implementation is equal in all models, only change the type and CONVECTOR_MODEL_PATH_${MODEL}

  // custom static implementation getById
  public static async getById(id: string, user: CurrentUser): Promise<Person> {
    let resultSet: Person | Person[] = await this.getByFilter({ filter: { _id: id } }, user);
    // try get by code
    if (!resultSet[0]) {
      resultSet = await this.getByFilter({ filter: { 'fiscalNumber': id } }, user);
    }
    // try get by fiscalNumber
    if (!resultSet[0]) {
      resultSet = await this.getByFilter({ filter: { 'mobilePhone': id } }, user);
    }
    if (!resultSet || !resultSet[0] || !resultSet[0].id) {
      throw new Error(`No ${Person.name.toLowerCase()} exists with that id ${id}`);
    }
    // return only one record in findById
    return resultSet[0];
  }

  // custom static implementation getByField
  public static async getByField(fieldName: string, fieldValue: string, user: CurrentUser): Promise<Person | Person[]> {
    const resultSet: Person | Person[] = await this.getByFilter({ filter: { [fieldName]: fieldValue } }, user);
    if (!resultSet || !resultSet[0] || !resultSet[0].id) {
      throw new Error(`No ${Person.name.toLowerCase()} exists with that fieldName: ${fieldName} and fieldValue ${fieldValue}`);
    }
    // return recordSet
    return resultSet;
  }

  // custom static implementation getByFilter
  public static async getByFilter(queryParams: { filter?: any, sort?: any }, user: CurrentUser): Promise<Person | Person[]> {
    const userFilter = getCurrentUserFilter(user);
    const complexQuery: any = {
      selector: {
        type: c.CONVECTOR_MODEL_PATH_PERSON,
        // add userFilter
        ...userFilter,
        // spread arbitrary query filter
        ...queryParams.filter,
      },
      // fields: (queryParams.fields) ? queryParams.fields : undefined,
      sort: (queryParams.sort) ? queryParams.sort : undefined,
    };
    const resultSet: Person | Person[] = await Person.query(Person, complexQuery);
    // return recordSet
    return resultSet;
  }
}
