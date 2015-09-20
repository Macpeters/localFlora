class LeavesController < ApplicationController

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

end