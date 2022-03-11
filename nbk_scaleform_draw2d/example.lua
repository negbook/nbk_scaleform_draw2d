test = 0
CreateThread(function() 
   load(LoadResourceFile("nbk_scaleform_draw2d", 'import'))()

	
	if test == 1 then goto state1 end

	
	::default:: do 
		return 
	end 
   
	::state1:: do 
		
		SetHoverColourBegin(255,255,255,100)
		SetFadeInBegin("fadegroup1",500,500,500)
		SetFadeInBegin("fadegroup2",2500,2500,false)
		
		DrawRectS(0.20500001410593,0.20000001222514,0.24000002821186,0.038000004466878,0,0,0,220)
		DrawRectS(0.20500001410593,0.39200003455953,0.24000002821186,0.038000004466878,0,0,0,220)
		DrawRectS(0.20500001410593,0.41675003679297,0.24000002821186,0.0015,0,0,0,255)
		DrawSpriteS("CommonMenu","interaction_bgd",0.20500001410593,0.13850000499585,0.24000002821186,0.085000009991701,0,255,255,255,255)
		DrawSpriteS("CommonMenu","Gradient_Bgd",0.20500001410593,0.29500002339233,0.24000002821186,0.15200001786751,0,255,255,255,255)
		DrawSpriteS("CommonMenu","Gradient_Nav",0.20500001410593,0.24300001669202,0.24000002821186,0.038000004466878,0,255,255,255,255)
		SetAutoColourBegin(5000)
		DrawSpriteS("CommonMenu","arrowleft",0.26468752940395,0.24000001633937,0.021375002353363,0.038000004466878,0,0,0,0,255)
		DrawSpriteS("CommonMenu","arrowright",0.31500002821186,0.24000001633937,0.021375002353363,0.038000004466878,0,0,0,0,255)
		DrawSpriteS("CommonMenu","Shop_Box_Cross",0.31250002821186,0.27800002080625,0.021375002353363,0.038000004466878,0,255,255,255,255)
		DrawSpriteS("CommonMenu","shop_Lock",0.31250002821186,0.35400002974,0.021375002353363,0.038000004466878,0,255,255,255,255)
		DrawSpriteS("CommonMenu","shop_arrows_upANDdown",0.20500001410593,0.39200003455953,0.032,0.038000004466878,0,255,255,255,255)
		DrawSpriteS("CommonMenu","Gradient_Bgd",0.20500001410593,0.43650003902641,0.24000002821186,0.038000004466878,0,255,255,255,255)
		SetAutoColourEnd()
		SetAutoColourBegin(1000)
		DrawTextS("negbookglare",0.09,0.126,0.5,255,255,255,255,0,0,255,255)
		SetAutoColourEnd()
		DrawTextS("hello",0.09,0.1860000099917,0.36500004290554,93,182,229,255)
		local r = DrawTextS("1 / 7",0.32500002821186,0.1860000099917,0.36500004290554,93,182,229,255)
		TextDrawWrap(r,0.085,0.085+0.240-0.005)
		TextDrawRight(r,true)
		SetAutoColourBegin(100)
		
		XX = DrawTextS("%NBK_CUSTOM1%",0.09,0.22400001445858,0.36500004290554,0,0,0,255)
		DrawTextS("deluxo",0.26968752940395,0.22400001445858,0.36500004290554,0,0,0,255)
		DrawTextS("~y~Suicide~w~",0.09,0.26200001892546,0.36500004290554)
		X = DrawTextS("~y~~h~he %NBK_CUSTOM2% ~n~ ~BLIP_BENNYS~ ~FACE_TITLE~ ~ws~ ~ws~ ~ws~",0.09,0.30000002339233,0.36500004290554)
		
		SetAutoColourBegin(50)
		DrawTextS("~g~$3000~g~",0.28321878050664,0.30000002339233,0.36500004290554)
		SetAutoColourEnd()
		
			DrawTextS("~g~$3000~g~",0.7,0.25,0.36500004290554)
			DrawTextS("~g~$3000~g~",0.7,0.30,0.36500004290554)
			DrawTextS("~g~$3000~g~",0.7,0.35,0.36500004290554)
			DrawTextS("~g~$3000~g~",0.7,0.40,0.36500004290554)
			DrawTextS("~g~$3000~g~",0.7,0.45,0.36500004290554)
			DrawTextS("~g~$3000~g~",0.7,0.50,0.36500004290554)
		
		x= DrawTextS("~y~~h~he %NBK_CUSTOM1% %NBK_CUSTOM2% %NBK_CUSTOM3% ~FACE_TITLE~ ~ws~ ~ws~ ~ws~",0.09,0.33800002785921,0.36500004290554,155,155,155,255)
		DrawTextSF("hello","hello",0.09,0.42000003679297,0.36500004290554,255,255,255,255,function(on)
			on.click = function(selection)
				print("wow this is hello click",selection)
				DrawCursorState("busy")
			end 
			on.hover = function(selection)
				--print("wow this is hello hover",selection)
				DrawCursorState("hand")
			end 
			on.unhover = function(selection)
				print("wow this is hello unhover",selection)
				DrawCursorState("arrow")
			end 
		end)
		DrawPageSF("hello2","mp_menu_glare",0.05,0.05,1.0,1.0,0,255,255,255,255,function(on)
		end)
      
		--SetFadeInEnd()
		SetFadeInShow("fadegroup1")
		DrawCursor()
		SetAutoColourEnd()
		SetFadeInEnd()
		
		SetFadeInShow("fadegroup2")
		SetHoverColourEnd()
		--SetDebugMode(true)
		DrawSelectionHook(true,function(info)
			--print(json.encode(info))
		end)
			
		Wait(100)
		
		
		CreateThread(function()
			while true do Wait(100)
				
				AddTextEntry("NBK_CUSTOM1","HELLO"..math.random(0,150))
				AddTextEntry("NBK_CUSTOM2","HELLO2"..math.random(15,666))
				AddTextEntry("NBK_CUSTOM3","HELLO3"..math.random(32,1523))
            TextDrawUpdateAutoLabel(x)
            TextDrawUpdateAutoLabel(X)
            TextDrawUpdateAutoLabel(XX)
			end 
		end)
		return 
	end 
	
end)
--[[
		TextDrawShow = TEXTDRAW_MAPS("SET_TEXT_SHOW") -- params : namespacedindex
		TextDrawHide = TEXTDRAW_MAPS("SET_TEXT_HIDE") -- params : namespacedindex
		TextDrawPosition = TEXTDRAW_MAPS("SET_TEXT_POSITION") -- params : namespacedindex, x , y
		TextDrawString = TEXTDRAW_MAPS("SET_TEXT_STRING") -- params : namespacedindex, string
		TextDrawColor = TEXTDRAW_MAPS("SET_TEXT_COLOUR") -- params : namespacedindex, r, g, b (, a)
		TextDrawAlpha = TEXTDRAW_MAPS("SET_TEXT_ALPHA")  -- params : namespacedindex, alpha
		TextDrawTextScale = TEXTDRAW_MAPS("SET_TEXT_SCALE")  -- params : namespacedindex, scale
		TextDrawTextSize = TextDrawTextScale
		TextDrawFont = TEXTDRAW_MAPS("SET_TEXT_FONT") -- params : namespacedindex, fontStr:"$Font2"/"$Font2_Cond"/"$Font5"
		TextDrawBoxColour = TEXTDRAW_MAPS("SET_TEXT_BOX_COLOUR") -- params : namespacedindex, r, g, b, a 
		TextDrawOutline = TEXTDRAW_MAPS("SET_TEXT_OUTLINE") -- params : namespacedindex, isoutline
		TextDrawShadow = TEXTDRAW_MAPS("SET_TEXT_SHADOW") -- params : namespacedindex,  r, g, b, a, blurX, blurY, strength
		TextDrawDestroy = DeleteTextS -- params : namespacedindex
--]]