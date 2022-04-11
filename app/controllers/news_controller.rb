class NewsController < ApplicationController
  def index
    @news = ContentBuilder.all.where(status: true)
  end

  def show
  end
end
