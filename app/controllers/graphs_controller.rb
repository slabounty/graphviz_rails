class GraphsController < ApplicationController
  before_filter :signed_in_user, only: [:create, :destroy]
  before_filter :correct_user,   only: :destroy

  def create
    @graph = current_user.graphs.build(params[:graph])
    if @graph.save
      flash[:success] = "Graph created!"
      redirect_to root_url
    else
      @feed_items = []
      render 'static_pages/home'
    end
  end

  def destroy
    @graph.destroy
    redirect_to root_url
  end

  private

  def correct_user
    @graph = current_user.graphs.find_by_id(params[:id])
    redirect_to root_url if @graph.nil?
  end
end
