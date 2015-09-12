class PlantsController < ApplicationController
 
  def new
    @plant = Plant.new
    respond_to do |format|
      format.html
      format.json { render json: @plant }
    end
  end
 
  def create
    params['plant']['location'] = params['location']
    @plant = Plant.new(plant_params)
    respond_to do |format|
      if @plant.save
        format.html { redirect_to @plant, notice: 'successfully created.' }
        format.json { render :show, status: :created, location: @plant }
      else
        format.html { render :new }
        format.json { render json: @plant.errors, 
            status: :unprocessable_entity }
      end
    end
  end

  def index
    @plants = Plant.all
    respond_to do |format|
      format.html
      format.json { render json: @plants }
    end
  end

  def show
    @plant = Plant.find(params['id'])
    @default_image = ""
  end

  def edit
    @plant = Plant.find(params['id'])
  end

  def update
    params['plant']['location'] = params['location']
    @plant = Plant.find(params['id'])
    respond_to do |format|
      if @plant.update(plant_params)
        format.html { redirect_to @plant, notice: 'successfully updated.' }
        format.json { render :show, status: :ok, location: @plant }
      else
        format.html { render :edit }
        format.json { render json: @plant.errors, 
              status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @plant.destroy
    respond_to do |format|
      format.html { redirect_to plant_url, 
          notice: 'successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def plant_params
    params.require(:plant).permit(:common_name, :latin_name, :image, :location, :uses, :height, :width)
  end
end