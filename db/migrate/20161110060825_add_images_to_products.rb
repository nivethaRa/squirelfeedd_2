class AddImagesToProducts < ActiveRecord::Migration
  def change
    add_column :shoppe_products, :images, :json
  end
end
