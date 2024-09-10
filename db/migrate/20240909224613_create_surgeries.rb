class CreateSurgeries < ActiveRecord::Migration[7.1]
  def change
    create_table :surgeries do |t|

      t.timestamps
    end
  end
end
