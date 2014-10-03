class RantsController < ApplicationController

  def index
    @rant = Rant.order(:title)
  end

  def new

  end

  def create
    @rant = Rant.new
    @rant.title = params[:rant][:title]
    @rant.content = params[:rant][:content]
    @rant.user_id =
  end

  def edit

  end

  def update

  end

  def destroy

  end


end