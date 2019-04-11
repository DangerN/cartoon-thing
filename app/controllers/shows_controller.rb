class ShowsController < ApplicationController

  def show
    @characters = Character.all.select{ |character| character.show_id == get_show.id}
    get_show
  end

  def index
    @shows = Show.all

  end

  def new
    @show = Show.new
    @creators = Creator.all
  end

  def create
    redirect_to Show.create(show_params)
  end

  private

  def get_show
    @show = Show.find(params[:id])
  end

  def show_params
    params.require(:show).permit(:name)
  end
end
