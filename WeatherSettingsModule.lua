local Settings {}

Settings.CloudSize = {
    Min = 0,
    Max = 10,
},

Settings.ChanceOfCloud = {
    MinWait = 0,
    MaxWait = 0,
}

function Settings.CreateCloud()
    local Cloud = instance.new('Part')
    Cloud.Size = Vector3.New()
end

return Settings