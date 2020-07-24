class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelpe

  def hello
    render html: "hello, world"
  end
end
