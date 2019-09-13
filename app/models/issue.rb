# == Schema Information
#
# Table name: issues
#
#  id              :integer          not null, primary key
#  title           :string(255)      not null
#  state           :string(255)      not null
#  pull_request_id :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Issue < ApplicationRecord
  belongs_to :pull_request, inverse_of: :issue, optional: true

  def open?
    state == "open"
  end

  def closed?
    state == "closed"
  end
end
