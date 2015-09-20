class FruitsController < ApplicationController

  def index
    @collection = Fruit.all
    respond_to do |format|
      format.html
      format.json { render json: @collection }
    end
  end

  def show
    @resource = Fruit.find(params['id'])
    @default_image = ""
  end
end