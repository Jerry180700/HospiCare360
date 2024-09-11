class CreateSurgeries < ActiveRecord::Migration[7.1]
  def change
    create_table :surgeries do |t|
      t.references :doctor, null: false, foreign_key: { to_table: :users }
      t.references :patient, null: false, foreign_key: { to_table: :users }
      t.references :nurses, null: false, foreign_key: { to_table: :users }
      t.date :check_in
      t.date :check_out

      t.timestamps
    end
  end
end
