def html_from_list(list, html = "")
  html += "<ul>"
  list.each do |item|
    if item.is_a? Array
      html = html_from_list(item, html)
    else
      html += "<li>#{item}</li>"
    end
  end
  html += "</ul>"
end

def count_nodes(list)
  count = 0
  list.each do |item|
    count += item.is_a?(Array) ? count_nodes(item) : 1
  end
  count
end