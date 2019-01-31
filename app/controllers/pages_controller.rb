class PagesController < ApplicationController
  before_action :set_pages_link, :get_jumbotron, :get_blocks

  def show
    @page = Page.find(params[:id])
    if @page.is_published == false
      flash[:alert] = "This page does not exist"
      redirect_to root_path
    end
    @sections = Section.all
  end
end
