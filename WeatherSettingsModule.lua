local Settings = {}

Settings.CloudSize = {
    Min = 0,
    Max = 10,
}

Settings.ChanceOfCloud = {
    MinWait = 0,
    MaxWait = 0,
}

function Settings.CreateCloud()
    local Cloud = Instance.new('Part')
    local RandomX = math.random(Settings.CloudSize.Min, Settings.CloudSize.Max)
    local RandomZ = math.random(Settings.CloudSize.Min, Settings.CloudSize.Max)

    Cloud.Size = Vector3.New(RandomX, 2, RandomZ)

    return Cloud
end

return Settings