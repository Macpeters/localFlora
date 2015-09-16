class PlantsController < ApplicationController
 
  def new
    @resource = Plant.new
    @flower = Flower.new
    @fruit = Fruit.new
    @leaf = Leaf.new
    @root = Root.new
    @stalk = Stalk.new
    respond_to do |format|
      format.html
      format.json { render json: @resource }
    end
  end
 
  def create
    params['plant']['location'] = params['location']
    params['plant']['size'] = params['size']
    @resource = Plant.new(resource_params)
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
    @collection = Plant.all
    respond_to do |format|
      format.html
      format.json { render json: @collection }
    end
  end

  def show
    @resource = Plant.find(params['id'])
    @default_image = ""
  end

  def edit
    @resource = Plant.find(params['id'])
    @flower = @resource.flower || Flower.new
    @fruit = @resource.fruit || Fruit.new
    @leaf = @resource.leaf || Leaf.new
    @root = @resource.root || Root.new
    @stalk = @resource.stalk || Stalk.new
  end

  def update
    params['plant']['location'] = params['location']
    params['plant']['size'] = params['size']
    @resource = Plant.find(params['id'])
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
      format.html { redirect_to plant_url, 
          notice: 'successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def resource_params
    params.require(:plant).permit(:common_name, :latin_name, :image, :location, :uses, :cautions, :size)
  end
end