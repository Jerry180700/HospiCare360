DoctorSpecialty.destroy_all
User.destroy_all
Specialty.destroy_all

cardiology = Specialty.create(
  name: "Cardiology"
)
pediatrics = Specialty.create(
  name: "Pediatrics"
)
obstretics = Specialty.create(
  name: "Obstretics"
)
anesthesiologist = Specialty.create(
  name: "Anesthesiologist"
)
surgeon = Specialty.create(
  name: "Surgeon"
)

user_doctor1 = User.create(
  email: "gerardo@gmail.com",
  first_name: "Gerardo",
  last_name: "Velasco",
  type: "Doctor",
  password: "123456"
)

user_doctor2 = User.create(
  email: "alejandro@gmail.com",
  first_name: "Alejandro",
  last_name: "Flores",
  type: "Doctor",
  password: "123456"
)

user_doctor3 = User.create(
  email: "erika@gmail.com",
  first_name: "Erika",
  last_name: "Tezanos",
  type: "Doctor",
  password: "123456"
)
user_doctor4 = User.create(
  email: "daniel@gmail.com",
  first_name: "Daniel",
  last_name: "Ponce",
  type: "Doctor",
  password: "123456"
)
user_doctor5 = User.create(
  email: "Lisseth@gmail.com",
  first_name: "Lisseth",
  last_name: "Damasco",
  type: "Doctor",
  password: "123456"
)
user_doctor6 = User.create(
  email: "santiago@gmail.com",
  first_name: "Santiago",
  last_name: "Velarde",
  type: "Doctor",
  password: "123456"
)
user_doctor7 = User.create(
  email: "laura@gmail.com",
  first_name: "Laura",
  last_name: "Perez",
  type: "Doctor",
  password: "123456"
)
user_doctor8 = User.create(
  email: "jose@gmail.com",
  first_name: "Jose",
  last_name: "Tovar",
  type: "Doctor",
  password: "123456"
)
user_doctor9 = User.create(
  email: "areli@gmail.com",
  first_name: "Areli",
  last_name: "Carbajal",
  type: "Doctor",
  password: "123456"
)
user_doctor10 = User.create(
  email: "raul@gmail.com",
  first_name: "Raul",
  last_name: "Vazquez",
  type: "Doctor",
  password: "123456"
)

# Doctor Specialty
DoctorSpecialty.create(
  doctor: user_doctor1,
  specialty: cardiology
)
DoctorSpecialty.create(
  doctor: user_doctor2,
  specialty: pediatrics
)
DoctorSpecialty.create(
  doctor: user_doctor3,
  specialty: obstretics
)
DoctorSpecialty.create(
  doctor: user_doctor4,
  specialty: anesthesiologist
)
DoctorSpecialty.create(
  doctor: user_doctor5,
  specialty: surgeon
)
DoctorSpecialty.create(
  doctor: user_doctor6,
  specialty: cardiology
)
DoctorSpecialty.create(
  doctor: user_doctor7,
  specialty: pediatrics
)
DoctorSpecialty.create(
  doctor: user_doctor8,
  specialty: obstretics
)
DoctorSpecialty.create(
  doctor: user_doctor9,
  specialty: anesthesiologist
)
DoctorSpecialty.create(
  doctor: user_doctor10,
  specialty: surgeon
)

# Enfermeras
User.create(
  email: "gustavonurse@gmail.com",
  first_name: "Gustavo",
  last_name: "Gutierrez",
  type: "Nurse",
  password: "123456"
)
User.create(
  email: "leticianurse@gmail.com",
  first_name: "Leticia",
  last_name: "Gonzalez",
  type: "Nurse",
  password: "123456"
)
User.create(
  email: "patricianurse@gmail.com",
  first_name: "Patricia",
  last_name: "Flores",
  type: "Nurse",
  password: "123456"
)
User.create(
  email: "isaelnurse@gmail.com",
  first_name: "Isael",
  last_name: "Vazquez",
  type: "Nurse",
  password: "123456"
)
User.create(
  email: "shanicenurse@gmail.com",
  first_name: "Shanice",
  last_name: "Torres",
  type: "Nurse",
  password: "123456"
)

# Patients

user_patient1 = User.create(
  email: "janet@gmail.com",
  first_name: "Janet",
  last_name: "Torres",
  type: "Patient",
  password: "123456"
)
user_patient2 = User.create(
  email: "peter@gmail.com",
  first_name: "Peter",
  last_name: "Gonzalez",
  type: "Patient",
  password: "123456"
)
user_patient3 = User.create(
  email: "laura@gmail.com",
  first_name: "Laura",
  last_name: "Rojas",
  type: "Patient",
  password: "123456"
)
user_patient4 = User.create(
  email: "maria@gmail.com",
  first_name: "Maria",
  last_name: "Ramirez",
  type: "Patient",
  password: "123456"
)
user_patient5 = User.create(
  email: "john@gmail.com",
  first_name: "John",
  last_name: "Smith",
  type: "Patient",
  password: "123456"
)
user_patient6 = User.create(
  email: "diana@gmail.com",
  first_name: "Diana",
  last_name: "Lopez",
  type: "Patient",
  password: "123456"
)
user_patient7 = User.create(
  email: "carlos@gmail.com",
  first_name: "Carlos",
  last_name: "Mendez",
  type: "Patient",
  password: "123456"
)
user_patient8 = User.create(
  email: "ana@gmail.com",
  first_name: "Ana",
  last_name: "Rodriguez",
  type: "Patient",
  password: "123456"
)
user_patient9 = User.create(
  email: "andres@gmail.com",
  first_name: "Andres",
  last_name: "Garcia",
  type: "Patient",
  password: "123456"
)
user_patient10 = User.create(
  email: "sofia@gmail.com",
  first_name: "Sofia",
  last_name: "Martinez",
  type: "Patient",
  password: "123456"
)

# Resumes

resume_patient1 = Resume.create(
  birth_date: "1985-06-15",
  check_in: "2023-09-01",
  check_out: "2023-09-10",
  description: "Paciente con síntomas de gripe",
  gender: "F",
  height: 165,
  nationality: "Mexican",
  weight: 60
)
resume_patient2 = Resume.create(
  birth_date: "1990-02-20",
  check_in: "2023-08-25",
  check_out: "2023-09-05",
  description: "Paciente con fractura de brazo",
  gender: "M",
  height: 175,
  nationality: "Mexican",
  weight: 80
)
resume_patient3 = Resume.create(
  birth_date: "1995-07-12",
  check_in: "2023-07-15",
  check_out: "2023-07-20",
  description: "Paciente con infección de oído",
  gender: "F",
  height: 160,
  nationality: "Mexican",
  weight: 55
)
resume_patient4 = Resume.create(
  birth_date: "1998-04-23",
  check_in: "2023-06-10",
  check_out: "2023-06-15",
  description: "Paciente con dolor abdominal",
  gender: "F",
  height: 170,
  nationality: "Mexican",
  weight: 65
)
resume_patient5 = Resume.create(
  birth_date: "1987-11-03",
  check_in: "2023-08-01",
  check_out: "2023-08-10",
  description: "Paciente con dolor de espalda",
  gender: "M",
  height: 180,
  nationality: "American",
  weight: 85
)
resume_patient6 = Resume.create(
  birth_date: "1992-03-14",
  check_in: "2023-09-05",
  check_out: "2023-09-12",
  description: "Paciente con migraña crónica",
  gender: "F",
  height: 162,
  nationality: "Mexican",
  weight: 58
)
resume_patient7 = Resume.create(
  birth_date: "1989-05-19",
  check_in: "2023-07-01",
  check_out: "2023-07-10",
  description: "Paciente con lesión en la rodilla",
  gender: "M",
  height: 178,
  nationality: "Colombian",
  weight: 82
)
resume_patient8 = Resume.create(
  birth_date: "1994-10-07",
  check_in: "2023-08-12",
  check_out: "2023-08-18",
  description: "Paciente con dolor de garganta",
  gender: "F",
  height: 165,
  nationality: "Mexican",
  weight: 62
)
resume_patient9 = Resume.create(
  birth_date: "1991-01-27",
  check_in: "2023-06-15",
  check_out: "2023-06-22",
  description: "Paciente con luxación de tobillo",
  gender: "M",
  height: 182,
  nationality: "Argentinian",
  weight: 90
)
resume_patient10 = Resume.create(
  birth_date: "1986-09-11",
  check_in: "2023-05-20",
  check_out: "2023-05-30",
  description: "Paciente con hipertensión",
  gender: "F",
  height: 168,
  nationality: "Mexican",
  weight: 65
)

# MedicalResumes

MedicalResume.create(
  resume: resume_patient1,
  user: user_patient1
)
MedicalResume.create(
  resume: resume_patient2,
  user: user_patient2
)
MedicalResume.create(
  resume: resume_patient3,
  user: user_patient3
)
MedicalResume.create(
  resume: resume_patient4,
  user: user_patient4
)
MedicalResume.create(
  resume: resume_patient5,
  user: user_patient5
)
MedicalResume.create(
  resume: resume_patient6,
  user: user_patient6
)
MedicalResume.create(
  resume: resume_patient7,
  user: user_patient7
)
MedicalResume.create(
  resume: resume_patient8,
  user: user_patient8
)
MedicalResume.create(
  resume: resume_patient9,
  user: user_patient9
)
MedicalResume.create(
  resume: resume_patient10,
  user: user_patient10
)
