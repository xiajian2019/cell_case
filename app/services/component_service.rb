class ComponentService
  include Godmin::Resources::ResourceService

  attrs_for_index :name, :code, :description, :config
  attrs_for_show  :id, :name, :code, :description, :config, :created_at, :updated_at
  attrs_for_form :name, :code, :description, :config, :props, :properties
end
