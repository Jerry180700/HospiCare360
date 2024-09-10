class CreateBeds < ActiveRecord::Migration[7.1]
  def change
    create_table :beds do |t|

      t.timestamps
    end
  end
end
