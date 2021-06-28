if system.getInfo("platform") == 'html5' then
    return require "solar_js"
else
    local lib = {}
    setmetatable( lib, {__index = function( t, k )
        return function() 
            print( "WARNING: Placeholder is called for " .. k )
        end
    end} )
    return lib
end