class StaticPagesController < ApplicationController
  def home
    if signed_in?
      @graph = current_user.graphs.build 
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
  end

  def help
  end

  def about
  end

  def contact
  end
end
