local RealityMarbleFunction

for i,v in pairs(getloadedmodules()) do
    if v.Name == "ClientFunctions" then
        RealityMarbleFunction = require(v)["Reality Marble"]
    end
end

Hook = hookfunc(RealityMarbleFunction, function(...)
    if _G.AntiRM == true then
        return
    end
    return Hook(...)
end)
