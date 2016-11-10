require 'test_helper'

class ShoppeProductsControllerTest < ActionController::TestCase
  setup do
    @shoppe_product = shoppe_products(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shoppe_products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shoppe_product" do
    assert_difference('ShoppeProduct.count') do
      post :create, shoppe_product: { active: @shoppe_product.active, cost_price: @shoppe_product.cost_price, default: @shoppe_product.default, description: @shoppe_product.description, featured: @shoppe_product.featured, in_the_box: @shoppe_product.in_the_box, name: @shoppe_product.name, parent_id: @shoppe_product.parent_id, permalink: @shoppe_product.permalink, price: @shoppe_product.price, short_description: @shoppe_product.short_description, sku: @shoppe_product.sku, stock_control: @shoppe_product.stock_control, tax_rate_id: @shoppe_product.tax_rate_id, weight: @shoppe_product.weight }
    end

    assert_redirected_to shoppe_product_path(assigns(:shoppe_product))
  end

  test "should show shoppe_product" do
    get :show, id: @shoppe_product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shoppe_product
    assert_response :success
  end

  test "should update shoppe_product" do
    patch :update, id: @shoppe_product, shoppe_product: { active: @shoppe_product.active, cost_price: @shoppe_product.cost_price, default: @shoppe_product.default, description: @shoppe_product.description, featured: @shoppe_product.featured, in_the_box: @shoppe_product.in_the_box, name: @shoppe_product.name, parent_id: @shoppe_product.parent_id, permalink: @shoppe_product.permalink, price: @shoppe_product.price, short_description: @shoppe_product.short_description, sku: @shoppe_product.sku, stock_control: @shoppe_product.stock_control, tax_rate_id: @shoppe_product.tax_rate_id, weight: @shoppe_product.weight }
    assert_redirected_to shoppe_product_path(assigns(:shoppe_product))
  end

  test "should destroy shoppe_product" do
    assert_difference('ShoppeProduct.count', -1) do
      delete :destroy, id: @shoppe_product
    end

    assert_redirected_to shoppe_products_path
  end
end
