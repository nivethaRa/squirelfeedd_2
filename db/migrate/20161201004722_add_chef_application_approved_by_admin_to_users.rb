class AddChefApplicationApprovedByAdminToUsers < ActiveRecord::Migration
  def change
    add_column :users, :chef_application_approved_by_admin, :boolean, default: false
  end
end
