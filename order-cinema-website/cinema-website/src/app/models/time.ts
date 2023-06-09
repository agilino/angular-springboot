import { Department } from "./department";

export interface Time{
    id: string;
    from: Date;
    to: Date;
    department: Department;
}

export interface ShowTime{
  from: string;
  day: string;
  department: Department;
}
