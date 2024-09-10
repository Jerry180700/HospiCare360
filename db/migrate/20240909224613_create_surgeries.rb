class CreateSurgeries < ActiveRecord::Migration[7.1]
  def change
    create_table :surgeries do |t|
      t.references :doctor, null: false, foreign_key: true
      t.references :patient, null: false, foreign_key: true
      t.references :nurses, null: false, foreign_key: true
      t.date :check_in
      t.date :check_out

      t.timestamps
    end
  end
end
