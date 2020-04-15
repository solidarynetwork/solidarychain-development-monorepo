import { ConvectorModel, ReadOnly, Required, Validate } from '@worldsibu/convector-core';
import * as yup from 'yup';
import { appConstants as c } from './constants';

export class EntityBalance extends ConvectorModel<EntityBalance>{
  @ReadOnly()
  @Required()
  public readonly type = c.CONVECTOR_MODEL_PATH_ENTITY_BALANCE;

  @Required()
  @Validate(yup.number())
  public debit: number;
  
  @Required()
  @Validate(yup.number())
  public credit: number;

  @Required()
  @Validate(yup.number())
  public balance: number;
}