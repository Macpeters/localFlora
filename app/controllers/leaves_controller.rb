class LeavesController < ApplicationController
  def new
    @resource = Leaf.new
    respond_to do |format|
      format.html
      format.json { render json: @resource }
    end
  end
 
  def create
    @resource = Leaf.new(resource_params)
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
    @collection = Leaf.all
    respond_to do |format|
      format.html
      format.json { render json: @collection }
    end
  end

  def show
    @resource = Leaf.find(params['id'])
    @default_image = ""
  end

  def edit
    @resource = Leaf.find(params['id'])
  end

  def update
    @resource = Leaf.find(params['id'])
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
      format.html { redirect_to leaf_url, 
          notice: 'successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def resource_params
    params.require(:leaf).permit(:arrangement, :margin, :colour, :tip_shape, :base_shape, :image, :edible, :uses, :cautions, :plant_id)
  end
end