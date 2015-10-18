class PlantsController < ApplicationController
 
  def new
    @plant = Plant.new
    @locations = Plant.locations
    @sizes = Plant.sizes
    @months = Plant.months
    @colours = Plant.colours
    @arrangements = Plant.arrangements
    @margins = Plant.margins
    @tip_shapes = Plant.tip_shapes
    @base_shapes = Plant.base_shapes
    @root_types = Plant.root_types
    respond_to do |format|
      format.html
      format.json { render json: @resource }
    end
  end
 
  def create
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
      format.json { render json: @collection  }
    end
  end

  def show
    @resource = Plant.find(params['id'])
    @default_image = ""
    respond_to do |format|
      format.html
      format.json { render json: {:plant => @resource, 
                                  :locations => @resource.locations,
                                  :sizes => @resource.sizes,
                                  :colours => colours,
                                  :months => months,
                                  :arrangements => Plant.arrangements,
                                  :margins => Plant.margins,
                                  :tip_shapes => Plant.tip_shapes,
                                  :base_shapes => Plant.base_shapes,
                                  :root_types => Plant.root_types,
                                  :stalk_shapes => Plant.shapes
                                  }  
                  }
    end
  end

  def edit
    @plant = Plant.find(params['id'])
    @locations = Plant.locations
    @sizes = Plant.sizes
    @months = Plant.months
    @colours = Plant.colours
    @arrangements = Plant.arrangements
    @margins = Plant.margins
    @tip_shapes = Plant.tip_shapes
    @base_shapes = Plant.base_shapes
    @root_types = Plant.root_types
  end

  def update
    @resource = Plant.find(params['id'])
      if @resource.update(resource_params)
        redirect_to plant_url(@resource)  
      else
        format.html { render :edit }
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
    params.require(:plant).permit(:common_name, :latin_name, :image, :location, :uses, :cautions, :size,
      :fruit_colour, :fruit_has_pit, :fruit_diameter, :fruit_month, :fruit_image, :fruit_edible, :fruit_uses, :fruit_cautions,
      :flower_colour, :flower_num_petals, :flower_clustered, :flower_month, :flower_image, :flower_edible, :flower_uses, :flower_cautions,
      :leaf_arrangement, :leaf_margin, :leaf_colour, :leaf_tip_shape, :leaf_base_shape, :leaf_image, :leaf_edible, :leaf_uses, :leaf_cautions, 
      :root_runners, :root_type, :root_image, :root_edible, :root_uses, :root_cautions, 
      :stalk_shape, :stalk_climbing, :stalk_has_hairs, :stalk_colour)
  end

end