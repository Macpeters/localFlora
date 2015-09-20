class StalkssController < ApplicationController

  def index
    @collection = Stalk.all
    respond_to do |format|
      format.html
      format.json { render json: @collection }
    end
  end

  def show
    @resource = Stalk.find(params['id'])
    @default_image = ""
  end

end