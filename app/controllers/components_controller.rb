class ComponentsController < ApplicationController
  include Godmin::Resources::ResourceController

  before_action :set_gon, only: [:edit]


  def set_gon
    gon.config = @resource.config
  end
end
