# == Schema Information
#
# Table name: components
#
#  id          :bigint(8)        not null, primary key
#  name        :string(255)
#  code        :string(50)
#  description :string(255)
#  config      :text(65535)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_components_on_code  (code) UNIQUE
#

class Component < ApplicationRecord
  store :config, in: [:props, :properties], coder: JSON

end
