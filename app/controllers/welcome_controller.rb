class WelcomeController < ApplicationController

  skip_before_filter :ensure_authenticated_user

  def index
    @rants = Rant.order(:title)
    @test = Rant.new
  end
end