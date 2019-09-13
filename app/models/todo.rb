# == Schema Information
#
# Table name: todos
#
#  id          :integer          not null, primary key
#  description :string(255)
#  complete    :boolean
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Todo < ActiveRecord::Base
end
