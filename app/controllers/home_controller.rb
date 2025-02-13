class HomeController < ApplicationController
  def index
    p "atumalaka"
    render inertia: "home/index"
  end
end
