class CreateMesseges < ActiveRecord::Migration[5.2]
  def change
    create_table :messeges do |t|
      t.text :body
      t.belongs_to :user
      t.belongs_to :dialog
      t.timestamps
    end

    
  end
end
