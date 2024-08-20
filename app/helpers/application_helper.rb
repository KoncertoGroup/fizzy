module ApplicationHelper
  def page_title_tag
    tag.title @page_title || "Fizzy"
  end
end
