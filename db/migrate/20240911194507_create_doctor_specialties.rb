class CreateDoctorSpecialties < ActiveRecord::Migration[7.1]
  def change
    create_table :doctor_specialties do |t|
      t.references :specialty, foreign_key: true
      t.references :user, foreign_key: true


      t.timestamps
    end
  end
end
