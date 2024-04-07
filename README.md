# TweenService

TweenService — позволяет вам делать переход от одного состояния к другому используя плавность, и настраивая ее.
TweenSrvice позволяет работать с 3D и Gui пространством, также с значениями некоторых объектов, такими как `PointLight`, `Part`, `Fire` и тд.
Также можно плавно менять значения в Lighting, такие как: `ClockTime`, `FogStart`, `Brightness` и тд.

## Для 3D объекта
Для удобства сделаем для каждого действия переменную.

```lua
local TweenService = game:GetService("TweenService") -- Получаем TweenService

local Object = script.Parent -- Наш объект

local Tweeninfo = TweenInfo.new(1) -- В скобках указыкаем длительность перехода из одного состояния в другое, число пишем в секундах

--[[

Далее в фигурных скобках указаные после "local Target = " пишем действие которое должно произойти, к примеру прозрачность 1
и смена позиции в Vector3 так как используеться 3D пространство

--]]

local Target = {Transparency = 1, Position = Vector3.new(10, 10, 10)} 

local Active = TweenService:Create(Object, Tweeninfo, Target) -- Создаем действие (Наш объект, Время действия, Цель)

Object.ClickDetector.MouseClick:Connect(function() -- При каком  действии мы должны активировать наше действие

	Active:Play() -- Проигрываем наше действие

end)
```
## Примечания
В области "Object.ClickDetector.MouseClick:Connect(function()" может быть любое действи, такие как: Wait(), Touched, Triggered и тд.

## Для Gui объекта
Для удобства сделаем для каждого действия переменную.

```lua

local TweenService = game:GetService("TweenService") -- Получаем TweenService

local Object = script.Parent -- Наш объект

local Tweeninfo = TweenInfo.new(1) -- В скобках указыкаем длительность перехода из одного состояния в другое, число пишем в секундах

--[[

Далее в фигурных указаные после "local Target = " скобках пишем действие которое должно произойти,
к примеру прозрачность текста станет 1 и измениться позиция.

Обратите внимание что позиция пишеться в UDim2, если мы используем Gui объект
в 2D пространстве.

--]] 

local Target = {TextTransparency = 1, Position = UDim2.new(10, 10, 10)}

local Active = TweenService:Create(Object, Tweeninfo, Target) -- Создаем действие (Наш объект, Время действия, Цель)

Object.MouseButton1Click:Connect(function() -- При каком  действии мы должны активировать наше действие

	Active:Play() -- Проигрываем наше действие

end)

```


