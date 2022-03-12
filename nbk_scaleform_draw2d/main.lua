GlobalHandle = nil 
GlobalNameSpace = 0	

local function Reload()
   
      if GlobalHandle == nil or not HasScaleformMovieLoaded(GlobalHandle) then 
         GlobalHandle = RequestScaleformMovie("nbk_scaleform_draw2d")
         SetTimeout(0, Reload)
         return 
      else 
         SetTimeout(0, function()
            if GlobalHandle then 
               DrawScaleformMovieFullscreen(GlobalHandle)
            else 
               SetScaleformMovieAsNoLongerNeeded(GlobalHandle)
               GlobalHandle = nil 
               return
            end 
            Reload()
         end)
         return 
      end 
end 

Reload()

GetGlobalHandle = function()
	GlobalNameSpace = GlobalNameSpace + 1
	return GlobalHandle,GlobalNameSpace
end 

exports('GetGlobalHandle',GetGlobalHandle)	

RegisterCommand('nbk_scaleform_draw2d:ClickCheck', function()
	TriggerEvent("nbk_scaleform_draw2d:ClickCheckEvent")
end, false)

RegisterKeyMapping("nbk_scaleform_draw2d:ClickCheck","ClickCheck","MOUSE_BUTTONANY","MOUSE_LEFT")