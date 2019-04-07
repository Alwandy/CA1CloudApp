class ChangeGroupsToInteger < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :groups, :integer
  end
end
