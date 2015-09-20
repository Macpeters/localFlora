class FlowersController < ApplicationController

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

end