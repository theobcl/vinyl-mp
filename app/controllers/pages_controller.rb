class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @vinyls = Vinyl.all.sample(3)
  end

  def dashboard
    @user = current_user
    @vinyls = Vinyl.where(user: current_user)
  end
end
