DoctorSpecialty.destroy_all
User.destroy_all
Specialty.destroy_all

cardiologia = Specialty.create(
  name: "Cardiologia"
)

user_doctor = User.create(
  email: "gerardo@gmail.com",
  first_name: "Gerardo",
  last_name: "Velasco",
  type: "Doctor",
  password: "123456"
)

DoctorSpecialty.create(
  doctor: user_doctor,
  specialty: cardiologia
)

user_nurse = User.create(
  email: "gerardonurse@gmail.com",
  first_name: "Gerardo",
  last_name: "Gutierrez",
  type: "Nurse",
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
