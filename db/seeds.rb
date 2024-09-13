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
  name: "anesthesiologist"
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
user_nurse1 = User.create(
  email: "gustavonurse@gmail.com",
  first_name: "Gustavo",
  last_name: "Gutierrez",
  type: "Nurse",
  password: "123456"
)

user_nurse2 = User.create(
  email: "leticianurse@gmail.com",
  first_name: "Leticia",
  last_name: "Gonzalez",
  type: "Nurse",
  password: "123456"
)

user_nurse3 = User.create(
  email: "patricianurse@gmail.com",
  first_name: "Patricia",
  last_name: "Flores",
  type: "Nurse",
  password: "123456"
)

user_nurse4 = User.create(
  email: "isaelnurse@gmail.com",
  first_name: "Isael",
  last_name: "Vazquez",
  type: "Nurse",
  password: "123456"
)

user_nurse5 = User.create(
  email: "shanicenurse@gmail.com",
  first_name: "Shanice",
  last_name: "Torres",
  type: "Nurse",
  password: "123456"
)

# Pacientes
user_patient1 = User.create(
  email: "janet@gmail.com",
  first_name: "Janet",
  last_name: "Torres",
  type: "Patient",
  password: "123456"
)

user_patient2 = User.create(
  email: "juditht@gmail.com",
  first_name: "Judith",
  last_name: "Carmona",
  type: "Patient",
  password: "123456"
)

user_patient3 = User.create(
  email: "sebastian@gmail.com",
  first_name: "Sebastian",
  last_name: "Valencia",
  type: "Patient",
  password: "123456"
)

user_patient4 = User.create(
  email: "araceli@gmail.com",
  first_name: "Araceli",
  last_name: "Miller",
  type: "Patient",
  password: "123456"
)

user_patient5 = User.create(
  email: "mia@gmail.com",
  first_name: "Mia",
  last_name: "Rojas",
  type: "Patient",
  password: "123456"
)

user_patient6 = User.create(
  email: "ricardo@gmail.com",
  first_name: "Ricardo",
  last_name: "Castro",
  type: "Patient",
  password: "123456"
)

user_patient7 = User.create(
  email: "cristian@gmail.com",
  first_name: "Cristian",
  last_name: "Mendoza",
  type: "Patient",
  password: "123456"
)

user_patient8 = User.create(
  email: "carlos@gmail.com",
  first_name: "Carlos",
  last_name: "Serrano",
  type: "Patient",
  password: "123456"
)

user_patient9 = User.create(
  email: "veronica@gmail.com",
  first_name: "Veronica",
  last_name: "Jaimes",
  type: "Patient",
  password: "123456"
)

user_patient10 = User.create(
  email: "janet@gmail.com",
  first_name: "Janet",
  last_name: "Torres",
  type: "Patient",
  password: "123456"
)

patient_resume1 = Resume.create(
  birth_date: Faker::Date.between(from: '2014-09-23', to: '2014-09-25'),
  gender: "Femenino",
  nationality: "Mexicana",
  height: 1.6,
  weight: 50,
  description: "Se trata paciente por dolor lumbar",
  check_in: Faker::Date.between(from: '2014-09-23', to: '2014-09-25'),
  check_out: Faker::Date.between(from: '2014-09-23', to: '2014-09-25')
)

patient_resume2 = Resume.create(
  birth_date: '1985-04-12',
  gender: "Femenino",
  nationality: "Mexicana",
  height: 1.65,
  weight: 55,
  description: "Paciente con dolor en la rodilla.",
  check_in: '2023-02-01',
  check_out: '2023-02-07'
)

patient_resume3 = Resume.create(
  birth_date: '1990-08-23',
  gender: "Masculino",
  nationality: "Española",
  height: 1.80,
  weight: 75,
  description: "Paciente con síntomas de fiebre alta.",
  check_in: '2023-03-05',
  check_out: '2023-03-10'
)

patient_resume4 = Resume.create(
  birth_date: '1978-11-30',
  gender: "Femenino",
  nationality: "Colombiana",
  height: 1.60,
  weight: 60,
  description: "Paciente con tos persistente.",
  check_in: '2023-04-10',
  check_out: '2023-04-15'
)

patient_resume5 = Resume.create(
  birth_date: '1982-07-15',
  gender: "Masculino",
  nationality: "Peruano",
  height: 1.75,
  weight: 70,
  description: "Paciente con dolor en el pecho.",
  check_in: '2023-05-20',
  check_out: '2023-05-25'
)

patient_resume6 = Resume.create(
  birth_date: '1995-12-05',
  gender: "Femenino",
  nationality: "Argentin",
  height: 1.70,
  weight: 65,
  description: "Paciente con migraña frecuente.",
  check_in: '2023-06-10',
  check_out: '2023-06-15'
)

patient_resume7 = Resume.create(
  birth_date: '1988-09-10',
  gender: "Masculino",
  nationality: "Chileno",
  height: 1.85,
  weight: 80,
  description: "Paciente con problemas digestivos.",
  check_in: '2023-07-05',
  check_out: '2023-07-12'
)

patient_resume8 = Resume.create(
  birth_date: '1992-03-25',
  gender: "Femenino",
  nationality: "Uruguaya",
  height: 1.68,
  weight: 58,
  description: "Paciente con dolor muscular.",
  check_in: '2023-08-10',
  check_out: '2023-08-15'
)

patient_resume9 = Resume.create(
  birth_date: '1980-01-30',
  gender: "Masculino",
  nationality: "Venezolana",
  height: 1.77,
  weight: 72,
  description: "Paciente con fatiga crónica.",
  check_in: '2023-09-05',
  check_out: '2023-09-10'
)

patient_resume10 = Resume.create(
  birth_date: '1996-06-20',
  gender: "Femenino",
  nationality: "Boliviana",
  height: 1.62,
  weight: 57,
  description: "Paciente con dificultad para respirar.",
  check_in: '2023-10-05',
  check_out: '2023-10-10'
)

MedicalResume.create(
  user: user_patient10,
  resume: patient_resume1
)
MedicalResume.create(
  user: user_patient9,
  resume: patient_resume2
)
MedicalResume.create(
  user: user_patient8,
  resume: patient_resume3
)
MedicalResume.create(
  user: user_patient7,
  resume: patient_resume4
)
MedicalResume.create(
  user: user_patient6,
  resume: patient_resume5
)
MedicalResume.create(
  user: user_patient5,
  resume: patient_resume6
)
MedicalResume.create(
  user: user_patient4,
  resume: patient_resume7
)
MedicalResume.create(
  user: user_patient3,
  resume: patient_resume8
)
MedicalResume.create(
  user: user_patient2,
  resume: patient_resume9
)
MedicalResume.create(
  user: user_patient1,
  resume: patient_resume10
)
