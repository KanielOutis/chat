class CreateDialogs < ActiveRecord::Migration[5.2]
  def change
    create_table :dialogs do |t|

      t.timestamps
    end
  end
end
