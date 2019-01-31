class HomeController < ApplicationController
  before_action :set_pages_link, :get_jumbotron, :get_blocks

  def show
    @pages = Page.where("featured = true")
  end
end
