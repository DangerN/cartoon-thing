class CreatorsController < ApplicationController
  def index
    @creators = Creator.all
  end

  def show
    @shows = Show.all.select{ |show| show.creator_id == get_creator.id}
    get_creator
  end

  def edit
    get_creator
  end

  def new
    @creator = Creator.new
  end

  def create
    redirect_to Creator.create(creator_params)
  end

  def update
    redirect_to get_creator.update(creator_params)
  end

  def delete
    get_creator.delete
  end

private

  def get_creator
    @creator = Creator.find(params[:id])
  end

  def creator_params
    params.require(:creator).permit(:name)
  end
end
