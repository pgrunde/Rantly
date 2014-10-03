class RantsController < ApplicationController

  def index
    @rant = Rant.order(:title)
  end

  def create
    @rant = Rant.new
    @rant.title = params[:rant][:title]
    @rant.content = params[:rant][:content]
    # @rant.user_id =
  end

end