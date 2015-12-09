class StaticPagesController < ApplicationController
  def home
    @user = User.first
  end

  def news
  end
end
