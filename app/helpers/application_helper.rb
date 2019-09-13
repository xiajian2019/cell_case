module ApplicationHelper
  def page_javascript
    content_for :page_javascript do
      yield
    end
  end
end
