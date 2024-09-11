class CreateResumes < ActiveRecord::Migration[7.1]
  def change
    create_table :resumes do |t|
      t.date :birth_date
      t.string :gender
      t.string :nationality
      t.float :height
      t.float :weight
      t.text :description
      t.date :check_in
      t.date :check_out
      t.integer :status

      t.timestamps
    end
  end
end
