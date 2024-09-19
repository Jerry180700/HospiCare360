
# Eliminar cirugías, resúmenes médicos, y usuarios, respetando las dependencias
Surgery.destroy_all
MedicalResume.destroy_all
Resume.destroy_all
DoctorSpecialty.destroy_all
Specialty.destroy_all
Appointment.destroy_all
Bed.destroy_all
Status.destroy_all
User.destroy_all

# Crear especialidades
cardiology = Specialty.create!(name: "Cardiology")
pediatrics = Specialty.create!(name: "Pediatrics")
obstretics = Specialty.create!(name: "Obstretics")
anesthesiologist = Specialty.create!(name: "Anesthesiologist")
surgeon = Specialty.create!(name: "Surgeon")

# Crear doctores
user_doctor1 = User.create!(email: "gerardo@gmail.com", first_name: "Gerardo", last_name: "Velasco", type: "Doctor", password: "123456")
user_doctor2 = User.create!(email: "alejandro@gmail.com", first_name: "Alejandro", last_name: "Flores", type: "Doctor", password: "123456")
user_doctor3 = User.create!(email: "erika@gmail.com", first_name: "Erika", last_name: "Tezanos", type: "Doctor", password: "123456")
user_doctor4 = User.create!(email: "daniel@gmail.com", first_name: "Daniel", last_name: "Ponce", type: "Doctor", password: "123456")
user_doctor5 = User.create!(email: "lisseth@gmail.com", first_name: "Lisseth", last_name: "Damasco", type: "Doctor", password: "123456")

# Asignar especialidades
DoctorSpecialty.create!(doctor: user_doctor1, specialty: cardiology)
DoctorSpecialty.create!(doctor: user_doctor2, specialty: pediatrics)
DoctorSpecialty.create!(doctor: user_doctor3, specialty: obstretics)
DoctorSpecialty.create!(doctor: user_doctor4, specialty: anesthesiologist)
DoctorSpecialty.create!(doctor: user_doctor5, specialty: surgeon)

# Crear enfermeras
user_nurse1 = User.create!(email: "gustavonurse@gmail.com", first_name: "Gustavo", last_name: "Gutierrez", type: "Nurse", password: "123456")
user_nurse2 = User.create!(email: "leticianurse@gmail.com", first_name: "Leticia", last_name: "Gonzalez", type: "Nurse", password: "123456")
user_nurse3 = User.create!(email: "patricianurse@gmail.com", first_name: "Patricia", last_name: "Flores", type: "Nurse", password: "123456")
user_nurse4 = User.create!(email: "isaelnurse@gmail.com", first_name: "Isael", last_name: "Vazquez", type: "Nurse", password: "123456")
user_nurse5 = User.create!(email: "shanicenurse@gmail.com", first_name: "Shanice", last_name: "Torres", type: "Nurse", password: "123456")

# Crear pacientes
user_patient1 = User.create!(email: "janet@gmail.com", first_name: "Janet", last_name: "Torres", type: "Patient", password: "123456")
user_patient2 = User.create!(email: "peter@gmail.com", first_name: "Peter", last_name: "Gonzalez", type: "Patient", password: "123456")
user_patient3 = User.create!(email: "laura@gmail.com", first_name: "Laura", last_name: "Rojas", type: "Patient", password: "123456")
user_patient4 = User.create!(email: "maria@gmail.com", first_name: "Maria", last_name: "Ramirez", type: "Patient", password: "123456")
user_patient5 = User.create!(email: "john@gmail.com", first_name: "John", last_name: "Smith", type: "Patient", password: "123456")

# Crear resúmenes de pacientes
resume_patient1 = Resume.create!(
  birth_date: "1985-06-15", check_in: "2023-09-01", check_out: "2023-09-10",
  description: "Paciente con síntomas de gripe", gender: "F", height: 165, nationality: "Mexican", weight: 60
)
resume_patient2 = Resume.create!(
  birth_date: "1990-02-20", check_in: "2023-08-25", check_out: "2023-09-05",
  description: "Paciente con fractura de brazo", gender: "M", height: 175, nationality: "Mexican", weight: 80
)
resume_patient3 = Resume.create!(
  birth_date: "1995-07-12", check_in: "2023-07-15", check_out: "2023-07-20",
  description: "Paciente con infección de oído", gender: "F", height: 160, nationality: "Mexican", weight: 55
)
resume_patient4 = Resume.create!(
  birth_date: "1998-04-23", check_in: "2023-06-10", check_out: "2023-06-15",
  description: "Paciente con dolor abdominal", gender: "F", height: 170, nationality: "Mexican", weight: 65
)
resume_patient5 = Resume.create!(
  birth_date: "1987-11-03", check_in: "2023-08-01", check_out: "2023-08-10",
  description: "Paciente con dolor de espalda", gender: "M", height: 180, nationality: "American", weight: 85
)

# Crear resúmenes médicos asociados a pacientes
MedicalResume.create!(resume: resume_patient1, user: user_patient1)
MedicalResume.create!(resume: resume_patient2, user: user_patient2)
MedicalResume.create!(resume: resume_patient3, user: user_patient3)
MedicalResume.create!(resume: resume_patient4, user: user_patient4)
MedicalResume.create!(resume: resume_patient5, user: user_patient5)

# Crear cirugías, asegurando que cada una tenga un paciente, doctor y enfermera
Surgery.create!(
  doctor: user_doctor1,
  patient: user_patient1,
  nurse: user_nurse1,
  check_in: "2023-07-10",
  check_out: "2023-07-18"
)

Surgery.create!(
  doctor: user_doctor2,
  patient: user_patient2,
  nurse: user_nurse2,
  check_in: "2023-08-10",
  check_out: "2023-08-18"
)

Surgery.create!(
  doctor: user_doctor3,
  patient: user_patient3,
  nurse: user_nurse3,
  check_in: "2023-09-01",
  check_out: "2023-09-07"
)

Surgery.create!(
  doctor: user_doctor4,
  patient: user_patient4,
  nurse: user_nurse4,
  check_in: "2023-09-15",
  check_out: "2023-09-22"
)

Surgery.create!(
  doctor: user_doctor5,
  patient: user_patient5,
  nurse: user_nurse5,
  check_in: "2023-09-25",
  check_out: "2023-10-02"
)


# Crear citas (appointments)
appointment1 = Appointment.create!(
  appointment_date: "2023-07-15",
  doctor: user_doctor1,
  patient: user_patient1
)

appointment2 = Appointment.create!(
  appointment_date: "2023-08-05",
  doctor: user_doctor2,
  patient: user_patient2
)

appointment3 = Appointment.create!(
  appointment_date: "2023-09-10",
  doctor: user_doctor3,
  patient: user_patient3
)

appointment4 = Appointment.create!(
  appointment_date: "2023-09-25",
  doctor: user_doctor4,
  patient: user_patient4
)

appointment5 = Appointment.create!(
  appointment_date: "2023-10-05",
  doctor: user_doctor5,
  patient: user_patient5
)

# Asignar camas a pacientes (beds)
bed1 = Bed.create!(patient: user_patient1)
bed2 = Bed.create!(patient: user_patient2)
bed3 = Bed.create!(patient: user_patient3)
bed4 = Bed.create!(patient: user_patient4)
bed5 = Bed.create!(patient: user_patient5)

# Crear estatus de los pacientes (statuses)
status1 = Status.create!(
  status: "En recuperación",
  descripcion: "Paciente recuperándose de cirugía de apendicitis",
  preoperatorio_completado: true,
  cirugia_sin_complicaciones: true,
  cuidados_especiales: false,
  alta_hospitalaria: false,
  patient: user_patient1
)

status2 = Status.create!(
  status: "Preoperatorio",
  descripcion: "Paciente en espera de cirugía de rodilla",
  preoperatorio_completado: false,
  cirugia_sin_complicaciones: false,
  cuidados_especiales: false,
  alta_hospitalaria: false,
  patient: user_patient2
)

status3 = Status.create!(
  status: "Postoperatorio",
  descripcion: "Paciente recuperándose de cirugía ocular",
  preoperatorio_completado: true,
  cirugia_sin_complicaciones: true,
  cuidados_especiales: true,
  alta_hospitalaria: false,
  patient: user_patient3
)

status4 = Status.create!(
  status: "Alta",
  descripcion: "Paciente dado de alta tras tratamiento exitoso",
  preoperatorio_completado: true,
  cirugia_sin_complicaciones: true,
  cuidados_especiales: false,
  alta_hospitalaria: true,
  patient: user_patient4
)

status5 = Status.create!(
  status: "En recuperación",
  descripcion: "Paciente en rehabilitación tras cirugía de columna",
  preoperatorio_completado: true,
  cirugia_sin_complicaciones: true,
  cuidados_especiales: true,
  alta_hospitalaria: false,
  patient: user_patient5
)

puts "Datos cargados correctamente."
