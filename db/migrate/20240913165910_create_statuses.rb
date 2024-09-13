class CreateStatuses < ActiveRecord::Migration[7.1]
  def change
    create_table :statuses do |t|
      t.string :status
      t.text :descripcion
      t.boolean :preoperatorio_completado
      t.boolean :cirugia_sin_complicaciones
      t.boolean :cuidados_especiales
      t.boolean :alta_hospitalaria
      t.references :patient, null: false, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
