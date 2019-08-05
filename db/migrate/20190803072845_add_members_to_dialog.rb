class AddMembersToDialog < ActiveRecord::Migration[5.2]
  def change
    add_column :dialogs, :members, :string
  end
end
