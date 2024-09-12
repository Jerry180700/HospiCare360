class RenameNursesIdToNurseIdInSurgeries < ActiveRecord::Migration[7.1]
  def change
    rename_column :surgeries, :nurses_id, :nurse_id
  end
end
