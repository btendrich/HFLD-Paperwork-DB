# frozen_string_literal: true

# Welcome page controller
class WelcomeController < ApplicationController
  def index; end


  def set_show
    # verify the show exists
    @show = Show.find(params[:id])
    if @show
      session[:current_show_id] = @show.id
    else
      flash[:error] = "Unable to find show id #{params[:id]}"
    end
    redirect_to root_path
  end
end
