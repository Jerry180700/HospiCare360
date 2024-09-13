class Status < ApplicationRecord
  belongs_to :patient,
             class_name: 'Patient',
             foreign_key: 'patient_id'

  private

  def generate_description
    case status
    when 'Preoperative'
      self.descripcion = generate_preoperatorio_description
    when 'In surgery'
      self.descripcion = generate_cirugia_description
    when 'Postoperative'
      self.descripcion = generate_postoperatorio_description
    when 'Hospital discharge'
      self.descripcion = generate_alta_description
    end
  end

  # Generación de descripciones según el checklist
  def generate_preoperatorio_description
    description = []
    description << "The patient has completed all preoperative procedures.\nAnd he is waiting to be transferred to the operating room." if preoperatorio_completado
    description.join(" ")
  end

  def generate_cirugia_description
    description = []
    if cirugia_sin_complicaciones
      description << "The patient had no complications in surgery."
    else
      description << "The patient had complications in surgery, please consult with your doctor."
    end
    description << "The doctor who performed the surgery is #{patient.surgery.doctor.first_name} #{patient.surgery.doctor.last_name}"
    description.join(" ")
  end

  def generate_postoperatorio_description
    description = []
    if cuidados_especiales
      description << "The patient requires special care."
    else
      description << "The patient does not require special care."
    end
    description << "The patient is in the bed #{patient.bed_id}"
    description << "The doctor who performed the surgery is #{patient.surgery.doctor.first_name} #{patient.surgery.doctor.last_name}"
    description << "The nurse in charge is #{patient.surgery.nurse.first_name} #{patient.surgery.nurse.last_name}"
    description.join(" ")
  end

  def generate_alta_description
    description = []
    description << "The patient has been discharged without complications." if alta_hospitalaria
  end
end
