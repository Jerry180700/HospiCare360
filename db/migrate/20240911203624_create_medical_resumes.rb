class CreateMedicalResumes < ActiveRecord::Migration[7.1]
  def change
    create_table :medical_resumes do |t|
      t.references :resume, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
