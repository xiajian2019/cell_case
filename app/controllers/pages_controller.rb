class PagesController < ApplicationController
  include Godmin::Resources::ResourceController

  def preview
    @page = Page.find params[:id]

    layout :false
  end
end




