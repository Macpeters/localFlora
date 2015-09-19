class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :months, :colours

  def months
    return [
      "Jan",
      "Feb",
      "Mar",
      "Apr",
      "May",
      "Jun",
      "July",
      "Aug",
      "Sept",
      "Oct",
      "Nov",
      "Dec"
    ]
  end

  def colours
    return [
      "Red",
      "Yellow",
      "Pink",
      "Green", 
      "Purlple",
      "Orange",
      "Blue",
      "Black",
      "White",
      "Grey",
      "Brown"
    ]
  end

end
