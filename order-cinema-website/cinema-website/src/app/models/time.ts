import { Department } from "./department";

export interface Time{
    id: string;
    from: Date;
    to: Date;
    department: Department;
}

export interface ShowTime{
  id: string;
  from: string;
  day: string;
  department: Department;
}

export interface GroupedShowTime{
  id: string;
  showtimes: ShowTimeInGroup[];
  day: string;
  department: Department;
}

export interface ShowTimeInGroup{
  id: string;
  from: string;
}
