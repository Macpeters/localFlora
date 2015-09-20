class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  after_filter :set_csrf_cookie_for_ng

  def set_csrf_cookie_for_ng
    cookies['XSRF-TOKEN'] = form_authenticity_token if protect_against_forgery?
  end

  helper_method :months, :colours

  def months
    return [
      "", "Jan", "Feb", "Mar", "Apr",
      "May", "Jun", "July", "Aug",
      "Sept", "Oct", "Nov", "Dec"
    ]
  end

  def colours
    return [
      "", "Red", "Yellow", "Pink",
      "Green",  "Purlple", "Orange",
      "Blue",  "Black",  "White",
      "Grey",  "Brown"
    ]
  end

  protected

  def verified_request?
    super || valid_authenticity_token?(session, request.headers['X-XSRF-TOKEN'])
  end

end
