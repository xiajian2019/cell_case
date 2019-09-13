# == Schema Information
#
# Table name: page_components
#
#  id           :bigint(8)        not null, primary key
#  page_id      :integer
#  component_id :integer
#  seq          :integer
#  config       :text(65535)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
# Indexes
#
#  unique_index_for_page_comment  (page_id,component_id,seq) UNIQUE
#

class PageComponent < ApplicationRecord
  store :config, in: [:props, :properties], coder: JSON
  
end
