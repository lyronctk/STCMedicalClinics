module ApplicationHelper
  def mega_nav_link(link_text, sub_text, link_path)
    class_name = current_page?(link_path) ? 'active' : ''
    content_tag(:li, class: "mega-menu #{class_name}") do
      link_to "#{link_text} <span>#{sub_text}</span>".html_safe, link_path
    end
  end
end
