class ErbTemplate < ActionView::Component::Base
  validates :content, presence: true

  def initialize(message:)
    @message = message
  end
end
