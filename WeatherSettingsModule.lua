local Settings = {}


Settings.TypesOfWeather = {
    Sunny = {
        Chance = 50,
    },

    Cloudy = {
        Chance = 50,

    },
    Rainy = {
        Chance = 50,

    },
    Snowy = {
        Chance = 50,
    },

}

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