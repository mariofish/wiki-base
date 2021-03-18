local function starts_with(str, start)
   return str:sub(1, #start) == start
end

local function ends_with(str, ending)
   return ending == "" or str:sub(-#ending) == ending
end

function Link(el)
    -- omit external links
    if starts_with(el.target, 'http') then
        return el
    end
    -- omit non markdown links
    if not ends_with(el.target, '.md') then
        return el
    end
    el.target = '/wiki-base' .. string.gsub(el.target, "%.md", ".html")
    return el
end
