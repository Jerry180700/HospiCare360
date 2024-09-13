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

user_doctorgerardo = User.create(
  email: "gerardo@gmail.com",
  first_name: "Gerardo",
  last_name: "Velasco",
  type: "Doctor",
  password: "123456"
)

user_doctor = User.create(
  email: "alejandro@gmail.com",
  first_name: "Alejandro",
  last_name: "Flores",
  type: "Doctor",
  password: "123456"
)

user_doctor = User.create(
  email: "erika@gmail.com",
  first_name: "Erika",
  last_name: "Tezanos",
  type: "Doctor",
  password: "123456"
)

user_doctor = User.create(
  email: "daniel@gmail.com",
  first_name: "Daniel",
  last_name: "Ponce",
  type: "Doctor",
  password: "123456"
)

user_doctor = User.create(
  email: "Lisseth@gmail.com",
  first_name: "Lisseth",
  last_name: "Damasco",
  type: "Doctor",
  password: "123456"
)

user_doctor = User.create(
  email: "santiago@gmail.com",
  first_name: "Santiago",
  last_name: "Velarde",
  type: "Doctor",
  password: "123456"
)

user_doctor = User.create(
  email: "laura@gmail.com",
  first_name: "Laura",
  last_name: "Perez",
  type: "Doctor",
  password: "123456"
)

user_doctor = User.create(
  email: "jose@gmail.com",
  first_name: "Jose",
  last_name: "Tovar",
  type: "Doctor",
  password: "123456"
)

user_doctor = User.create(
  email: "areli@gmail.com",
  first_name: "Areli",
  last_name: "Carbajal",
  type: "Doctor",
  password: "123456"
)

user_doctor = User.create(
  email: "raul@gmail.com",
  first_name: "Raul",
  last_name: "Vazquez",
  type: "Doctor",
  password: "123456"
)

# Doctor Specialty
DoctorSpecialty.create(
  doctor: user_doctor,
  specialty: cardiology
)
DoctorSpecialty.create(
  doctor: user_doctor,
  specialty: pediatrics
)
DoctorSpecialty.create(
  doctor: user_doctor,
  specialty: obstretics
)
DoctorSpecialty.create(
  doctor: user_doctor,
  specialty: anesthesiologist
)
DoctorSpecialty.create(
  doctor: user_doctor,
  specialty: surgeon
)


# Enfermeras
user_nurse = User.create(
  email: "gustavonurse@gmail.com",
  first_name: "Gustavo",
  last_name: "Gutierrez",
  type: "Nurse",
  password: "123456"
)

user_nurse = User.create(
  email: "leticianurse@gmail.com",
  first_name: "Leticia",
  last_name: "Gonzalez",
  type: "Nurse",
  password: "123456"
)

user_nurse = User.create(
  email: "patricianurse@gmail.com",
  first_name: "Patricia",
  last_name: "Flores",
  type: "Nurse",
  password: "123456"
)

user_nurse = User.create(
  email: "isaelnurse@gmail.com",
  first_name: "Isael",
  last_name: "Vazquez",
  type: "Nurse",
  password: "123456"
)

user_nurse = User.create(
  email: "shanicenurse@gmail.com",
  first_name: "Shanice",
  last_name: "Torres",
  type: "Nurse",
  password: "123456"
)

# Pacientes
user_patient = User.create(
  email: "janet@gmail.com",
  first_name: "Janet",
  last_name: "Torres",
  type: "Patient",
  password: "123456"
)

user_patient = User.create(
  email: "juditht@gmail.com",
  first_name: "Judith",
  last_name: "Carmona",
  type: "Patient",
  password: "123456"
)

user_patient = User.create(
  email: "sebastian@gmail.com",
  first_name: "Sebastian",
  last_name: "Valencia",
  type: "Patient",
  password: "123456"
)

user_patient = User.create(
  email: "araceli@gmail.com",
  first_name: "Araceli",
  last_name: "Miller",
  type: "Patient",
  password: "123456"
)

user_patient = User.create(
  email: "mia@gmail.com",
  first_name: "Mia",
  last_name: "Rojas",
  type: "Patient",
  password: "123456"
)

user_patient = User.create(
  email: "ricardo@gmail.com",
  first_name: "Ricardo",
  last_name: "Castro",
  type: "Patient",
  password: "123456"
)

user_patient = User.create(
  email: "cristian@gmail.com",
  first_name: "Cristian",
  last_name: "Mendoza",
  type: "Patient",
  password: "123456"
)

user_patient = User.create(
  email: "carlos@gmail.com",
  first_name: "Carlos",
  last_name: "Serrano",
  type: "Patient",
  password: "123456"
)

user_patient = User.create(
  email: "veronica@gmail.com",
  first_name: "Veronica",
  last_name: "Jaimes",
  type: "Patient",
  password: "123456"
)

user_patient = User.create(
  email: "janet@gmail.com",
  first_name: "Janet",
  last_name: "Torres",
  type: "Patient",
  password: "123456"
)


patient_resume = Resume.create(
  birth_date: Faker::Date.between(from: '2014-09-23', to: '2014-09-25'),
  gender: "Femenino",
  nationality: "Mexicana",
  height: 1.6,
  weight: 50,
  description: "Se trata paciente por dolor lumbar",
  check_in: Faker::Date.between(from: '2014-09-23', to: '2014-09-25'),
  check_out: Faker::Date.between(from: '2014-09-23', to: '2014-09-25'),
  status: 0
)

medical_resume = MedicalResume.create(
  user: user_patient,
  resume: patient_resume
)
