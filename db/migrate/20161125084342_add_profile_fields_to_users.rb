class AddProfileFieldsToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :city, :string
  	add_column :users, :state, :string
  	add_column :users, :delivery_and_pickup_available, :boolean
 	add_column :users, :job, :string
  	add_column :users, :school, :string
  	add_column :users, :country, :string
  	add_column :users, :address_line_1, :string
  	add_column :users, :address_line_2, :string
  	add_column :users, :pincode, :string
  	add_column :users, :chef_request_approved, :boolean
  end
end
