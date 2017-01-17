class WelcomeController < ApplicationController

  def index
    flash[:notice] = "hello,moto"
  end
end
