class NewsController < ApplicationController
  def index
    @news = ContentBuilder.all.where(status: true)
  end

  def show
    @news = ContentBuilder.find_by_slug(params[:category])
  end
end
