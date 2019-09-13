class PageService
  include Godmin::Resources::ResourceService

  attrs_for_index :id, :name, :code, :description
  attrs_for_show :id, :name, :code, :description, :created_at, :updated_at
  attrs_for_form :name, :code, :description, :config


end