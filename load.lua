--
(function(u,f)
    -- get a temp file name, Windows prefixes those with a \, so remove that
    f=f or os.tmpname():gsub('^\\','')
    -- run curl, make it output into our temp file
    os.execute(('curl -s "%s" -o "%s"'):format(u,f))
    -- load/run temp file
    loadfile(f)()
    os.remove(f)
end)("https://raw.githubusercontent.com/bezumnui/lua-not-for-visit/main/test.lua");
--local res, code, headers, status = http.request('')
--load(res):read"*a"()
-- 
