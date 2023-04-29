def html_from_hash(hash, html = "")
  html += "<ul>"
  hash.each do |key, value|
    if value.is_a? Hash
      html += "<li>#{key}:</li>"
      html = html_from_hash(hash[key], html)
    else
      html += "<li>#{key}:#{value}</li>"
    end
  end
  html += "</ul>"
end
