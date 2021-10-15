local Settings = {}



Settings.TypesOfWeather = {
    Sunny = {
        Type = 'Sunny',
        Chance = 50,
        
    },

    Cloudy = {
        Type = 'Cloudy',

        Chance = 30,

    },
    Rainy = {
        Type = 'Rainy',

        Chance = 15,

    },
    Snowy = {
        Type = 'Snowy',

        Chance = 5,
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

function Settings.ChooseWeatherType()
    local TableChance = {}
    for indexType, weatherType in pairs(Settings.TypesOfWeather) do
        for i = 1, weatherType.Chance do
            table.insert(TableChance, weatherType.Type)
        end
    end

    return math.random(1, #TableChance)
end

function Settings.CreateCloud(Type)
    local Cloud = Instance.new('Part')
    local RandomX = math.random(Settings.CloudSize.Min, Settings.CloudSize.Max)
    local RandomZ = math.random(Settings.CloudSize.Min, Settings.CloudSize.Max)

    Cloud.Size = Vector3.New(RandomX, 2, RandomZ)
    
    return Cloud
end

return Settings