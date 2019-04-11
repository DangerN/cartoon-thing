class ShowsController < ApplicationController

  def show
    @characters = Character.all.select{ |character| character.show_id == get_show.id}
    get_show
  end

  def index
    @shows = Show.all
    
  end

  private

  def get_show
    @show = Show.find(params[:id])
  end
end
