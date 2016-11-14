class ShoppeProductsController < ApplicationController
  before_action :set_shoppe_product, only: [:show, :edit, :update, :destroy]

  # GET /shoppe_products
  # GET /shoppe_products.json
  def index
    @shoppe_products = ShoppeProduct.where(active: true)
  end

  # GET /shoppe_products/1
  # GET /shoppe_products/1.json
  def show
  end

  # GET /shoppe_products/new
  def new
    @shoppe_product = ShoppeProduct.new
  end

  # GET /shoppe_products/1/edit
  def edit
  end

  # POST /shoppe_products
  # POST /shoppe_products.json
  def create
    @shoppe_product = ShoppeProduct.new(shoppe_product_params)

    respond_to do |format|
      if @shoppe_product.save
        format.html { redirect_to @shoppe_product, notice: 'Shoppe product was successfully created.' }
        format.json { render :show, status: :created, location: @shoppe_product }
      else
        format.html { render :new }
        format.json { render json: @shoppe_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shoppe_products/1
  # PATCH/PUT /shoppe_products/1.json
  def update
    respond_to do |format|
      if @shoppe_product.update(shoppe_product_params)
        format.html { redirect_to @shoppe_product, notice: 'Shoppe product was successfully updated.' }
        format.json { render :show, status: :ok, location: @shoppe_product }
      else
        format.html { render :edit }
        format.json { render json: @shoppe_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shoppe_products/1
  # DELETE /shoppe_products/1.json
  def destroy
    @shoppe_product.destroy
    respond_to do |format|
      format.html { redirect_to shoppe_products_url, notice: 'Shoppe product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shoppe_product
      @shoppe_product = ShoppeProduct.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shoppe_product_params
      params.require(:shoppe_product).permit(:parent_id, :name, :sku, :permalink, :description, :short_description, :active, :weight, :price, :cost_price, :tax_rate_id, :featured, :in_the_box, :stock_control, :default, {images: []})
    end
end
