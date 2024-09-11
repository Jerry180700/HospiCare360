class CreateBeds < ActiveRecord::Migration[7.1]
  def change
    create_table :beds do |t|
      t.references :patient, null: false, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
