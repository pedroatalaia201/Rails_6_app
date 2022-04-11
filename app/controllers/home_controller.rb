class HomeController < ApplicationController
  def index
    @news = ContentBuilder.where(status: true).last(5)
  end
end
