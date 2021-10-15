local WeatherModule = require(game.ServerStorage.WeatherModule)


while true do
    wait(10)

    local C = WeatherModule.ChooseWeatherType()
    print(C)



end
