# frozen_string_literal: true

# Welcome page controller
class WelcomeController < ApplicationController
  def index; end


  def set_show
    # verify the show exists
    @show = Show.where(id: params[:id])
    if @show.empty?
      flash[:error] = "Unable to find show id #{params[:id]}"
      session[:current_show_id] = -1
    else
      session[:current_show_id] = @show.first.id
    end
    redirect_to root_path
  end
end
