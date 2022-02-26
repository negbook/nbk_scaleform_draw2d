GlobalHandle = nil 
		
local function Reload()
	if GlobalHandle == nil or not HasScaleformMovieLoaded(GlobalHandle) then 
		local handle = RequestScaleformMovie("nbk_scaleform_draw2d")
		while not HasScaleformMovieLoaded(handle) do
			Wait(0)
		end
		GlobalHandle = handle
		CreateThread(function()
			while GlobalHandle do 
				Wait(0)
				DrawScaleformMovieFullscreen(GlobalHandle)

			end 
			SetScaleformMovieAsNoLongerNeeded(GlobalHandle)
			GlobalHandle = nil 
			Reload()
		end) 
	end 
end 

CreateThread(function() 
	Reload()
	
end) 


GetGlobalHandle = function()
	if not HasScaleformMovieLoaded(GlobalHandle) then 
		GlobalHandle = nil 
		Reload()
	end 
	return GlobalHandle
end 

exports('GetGlobalHandle',GetGlobalHandle)	