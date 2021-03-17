local List = require('pandoc.List')

-- split a string
function string:split(delimiter)
    local result = { }
    local from  = 1
    local delim_from, delim_to = string.find( self, delimiter, from  )
    while delim_from do
        table.insert( result, string.sub( self, from , delim_from-1 ) )
        from  = delim_to + 1
        delim_from, delim_to = string.find( self, delimiter, from  )
    end
    table.insert( result, string.sub( self, from  ) )
    return result
end

local function generate_menu_links(filename)
    local links = {}
    local base_url = '/wiki-base'

    local path = string.gsub(filename, 'docs/', '')
    path = string.gsub(path, '.md', '')
    local locs = path:split('/')
    local cur_url = ''
    if #locs > 1 then -- this prevents adding to global index
        local link = pandoc.Span(pandoc.Link('index', base_url .. '/index.html'), {class = "menu-link"})
        table.insert(links, link)
    end
    for key, node in ipairs(locs) do
        if key == #locs then
            goto skip_to_next
        end
        if key == #locs - 1 and locs[#locs] == 'index' then
            goto skip_to_next
        end

        -- add >
        local sep = pandoc.Span(' > ')
        table.insert(links, sep)
        -- add menu
        local target = base_url .. cur_url .. '/' .. node .. '/index.html'
        cur_url = cur_url .. '/' .. node
        local link = pandoc.Span(pandoc.Link(node, target), {class = "menu-link"})
        table.insert(links, link)

        ::skip_to_next::
    end
    return List:new{pandoc.Para(links)}
end

return {
    {
        Pandoc = function (doc)
            local meta = doc.meta
            local body = List:new{}
            local fn = PANDOC_STATE.input_files[1]

            body:extend(generate_menu_links(fn) or {})
            body:extend(doc.blocks)

            return pandoc.Pandoc(body, meta)
        end
    }
}
