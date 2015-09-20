class PlantsController < ApplicationController
 
  def new
    @resource = Plant.new
    @resource.flower = Flower.new
    @resource.fruit = Fruit.new
    @resource.leaf = Leaf.new
    @resource.root = Root.new
    @resource.stalk = Stalk.new
    @arrangements = Leaf.arrangements
    @margins = Leaf.margins
    @tip_shapes = Leaf.tip_shapes
    @base_shapes = Leaf.base_shapes
    @root_types = Root.root_types
    respond_to do |format|
      format.html
      format.json { render json: @resource }
    end
  end
 
  def create
    puts "CREATE PARAMS: #{params}"
    params['plant']['location'] = params['location']
    params['plant']['size'] = params['size']

    params['flower']['flowering_month'] = params['flowering_month']
    params['flower']['colour'] = params['flower_colour']

    @resource = Plant.new(resource_params)

    respond_to do |format|
      if @resource.save
        # @resource.flower = Flower.new(flower_params)
        # unless @resource.flower.save
        # end
        # @resource.fruit = Fruit.new(fruit_params)
        # unless @resource.fruit.save
        # end
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
    @flower = @resource.flower
    @default_image = ""
    respond_to do |format|
      format.html
      format.json { render json: {:plant => @resource, 
                                  :flower => @resource.flower,
                                  :fruit => @resource.fruit,
                                  :locations => @resource.locations,
                                  :sizes => @resource.sizes,
                                  :colours => colours,
                                  :months => months
                                  }  
                  }
    end
  end

  def edit
    @resource = Plant.find(params['id'])
    @arrangements = Leaf.arrangements
    @margins = Leaf.margins
    @tip_shapes = Leaf.tip_shapes
    @base_shapes = Leaf.base_shapes
    @root_types = Root.root_types
  end

  def update
    @resource = Plant.find(params['id'])
    respond_to do |format|
      if @resource.update(resource_params)
        return render json: {:plant => @resource, 
                                      :flower => @resource.flower
                                      }  
      else
        respond_to do |format|
          format.html { render :edit }
          format.json { render json: @resource.errors, 
              status: :unprocessable_entity }
        end
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
  def fruit_params
    params.require(:fruit).permit(:colour, :has_pit, :diameter, :fruiting_month, :image, :edible, :uses, :cautions, :plant_id)
  end
  def flower_params
    params.require(:flower).permit(:colour, :num_petals, :clustered, :flowering_month, :image, :edible, :uses, :caution, :plant_id)
  end
  def leaf_params
    params.require(:leaf).permit(:arrangement, :margin, :colour, :tip_shape, :base_shape, :image, :edible, :uses, :cautions, :plant_id)
  end
  def root_params
    params.require(:root).permit(:runners, :root_type, :image, :edible, :uses, :cautions, :plant_id)
  end
  def stalk_params
    params.require(:stalk).permit(:shape, :climbing, :has_hairs, :colour)
  end
end