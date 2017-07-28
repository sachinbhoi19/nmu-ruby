class WebformsController < ApplicationController
def new
#@variable=Webform.new
  end

def create
@variable = params[:info]
render 'show'
#redirect_to @variable
  end
def show

end

end





