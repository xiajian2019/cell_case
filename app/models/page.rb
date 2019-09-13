# == Schema Information
#
# Table name: pages
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
#  index_pages_on_code  (code) UNIQUE
#

class Page < ApplicationRecord
  store :config, in: [:title, :description, :keywords, :author, :meta, :link, :css, :script, ], coder: JSON
end
