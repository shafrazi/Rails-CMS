class ApplicationController < ActionController::Base
  def set_pages_link
    @pages = Page.where("menu_display = true & is_published = true").order(order: :asc)
    #code
  end

  def get_jumbotron
    @jumbotrons = Block.where("position = 'jumbotron'")
    #code
  end

  def get_blocks
    @blocks = Block.where("position = 'block'").order(order: :asc)
    #code
  end
end
