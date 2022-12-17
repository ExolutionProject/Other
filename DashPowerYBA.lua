local DashFunction

for i,v in pairs(getloadedmodules()) do
    if v.Name == "ClientFunctions" then
        DashFunction = require(v).Dash 
    end
end

Hook = hookfunc(DashFunction,function(...)
    if _G.DashModify and _G.DashModify == true then
        local args = ...
        args.DashPower = _G.DashPowerValue
        return Hook(args)
    end
    return Hook(...)
end)
