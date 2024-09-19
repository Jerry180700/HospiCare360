class Status < ApplicationRecord
  belongs_to :patient,
             class_name: 'Patient',
             foreign_key: 'patient_id'
  # Se agregó el callback con Enrique
  after_update_commit :generate_description
  # before_save :generate_description

  private

  # Refactorizamos el generate_description con Enrique
  def generate_description
    case status
    when 'Preoperative'
      new_descripcion = generate_preoperatorio_description
    when 'In surgery'
      new_descripcion = generate_cirugia_description
    when 'Postoperative'
      new_descripcion = generate_postoperatorio_description
    when 'Hospital discharge'
      new_descripcion = generate_alta_description
    else
      new_descripcion = "There are not status to show."
    end
    update_column(:descripcion, new_descripcion)
  end

  # Generación de descripciones según el checklist
  def generate_preoperatorio_description
    description = []
    if preoperatorio_completado
      description << "The patient has completed all preoperative procedures.\nAnd she is waiting to be transferred to the operating room."
    end
    description.join(" ")
  end

  def generate_cirugia_description
    description = []
    if cirugia_sin_complicaciones
      description << "The patient had no complications in surgery."
    else
      description << "The patient had complications in surgery, please consult with your doctor."
    end
    surgery = Surgery.find_by(patient_id: patient.id)
    description << "The doctor who performed the surgery is #{surgery.doctor.first_name} #{surgery.doctor.last_name}."
    description.join(" ")
  end

  def generate_postoperatorio_description
    description = []
    if cuidados_especiales
      description << "The patient requires special care."
    else
      description << "The patient does not require special care."
    end
    bed = Bed.find_by(patient_id: patient.id)
    surgery = Surgery.find_by(patient_id: patient.id)
    description << "The patient is in the bed #{bed.id}."
    description << "The doctor who performed the surgery is #{surgery.doctor.first_name} #{surgery.doctor.last_name}."
    description << "The nurse in charge is #{surgery.nurse.first_name} #{surgery.nurse.last_name}."
    description.join(" ")
  end

  def generate_alta_description
    description = []
    description << "The patient has been discharged without complications."
    description.join(" ")
  end
end
