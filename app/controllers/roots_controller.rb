class RootsController < ApplicationController

  def index
    @collection = Root.all
    respond_to do |format|
      format.html
      format.json { render json: @collection }
    end
  end

  def show
    @resource = Root.find(params['id'])
    @default_image = ""
  end
  
end