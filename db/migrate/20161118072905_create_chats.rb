class CreateChats < ActiveRecord::Migration
  def change
    create_table :chats do |t|
      t.integer :first_member_id
      t.integer :second_member_id

      t.timestamps null: false
    end
  end
end
