function Link(el)
  el.target = '/wiki-base' .. string.gsub(el.target, "%.md", ".html")
  return el
end
