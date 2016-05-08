class HomeController < ApplicationController
  def index
    @clicks = Click.all
  end
end
