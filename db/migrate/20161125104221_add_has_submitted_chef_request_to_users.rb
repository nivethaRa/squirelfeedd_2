class AddHasSubmittedChefRequestToUsers < ActiveRecord::Migration
  def change
    add_column :users, :has_submitted_chef_request, :boolean
  end
end
