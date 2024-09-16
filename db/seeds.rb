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