class FlowersController < ApplicationController
  def new
    @resource = Flower.new
    respond_to do |format|
      format.html
      format.json { render json: @resource }
    end
  end
 
  def create
    @resource = Flower.new(resource_params)
    respond_to do |format|
      if @resource.save
        format.html { redirect_to @resource, notice: 'successfully created.' }
        format.json { render :show, status: :created, location: @resource }
      else
        format.html { render :new }
        format.json { render json: @resource.errors, 
            status: :unprocessable_entity }
      end
    end
  end

  def index
    @collection = Flower.all
    respond_to do |format|
      format.html
      format.json { render json: @collection }
    end
  end

  def show
    @resource = Flower.find(params['id'])
    @default_image = ""
  end

  def edit
    @resource = Flower.find(params['id'])
  end

  def update
    @resource = Flower.find(params['id'])
    respond_to do |format|
      if @resource.update(resource_params)
        format.html { redirect_to @resource, notice: 'successfully updated.' }
        format.json { render :show, status: :ok, location: @resource }
      else
        format.html { render :edit }
        format.json { render json: @resource.errors, 
              status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @resource.destroy
    respond_to do |format|
      format.html { redirect_to flower_url, 
          notice: 'successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def resource_params
    params.require(:flower).permit(:colour, :num_petals, :clustered, :flowering_month, :image, :edible, :uses, :caution, :plant_id)
  end
end