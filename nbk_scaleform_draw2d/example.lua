test = 1

CreateThread(function() 
	
	load(LoadResourceFile("nbk_scaleform_draw2d", 'import'))()
	--'restart nbk_scaleform_draw2d'
	InitExample()
	if test == 1 then goto state1 end
	if test == 2 then goto dontdothat end 

	::default:: do 
		return 
	end 
	
	::state1:: do 
		local returnhovercolor = function() return 255,255,255,150 end 
		DrawRectS(0.20500001410593,0.20000001222514,0.24000002821186,0.038000004466878,0,0,0,220)
		DrawRectS(0.20500001410593,0.39200003455953,0.24000002821186,0.038000004466878,0,0,0,220)
		DrawRectS(0.20500001410593,0.41675003679297,0.24000002821186,0.0015,0,0,0,255)
		DrawSpriteS("CommonMenu","interaction_bgd",0.20500001410593,0.13850000499585,0.24000002821186,0.085000009991701,0,255,255,255,255,returnhovercolor())
		DrawSpriteS("CommonMenu","Gradient_Bgd",0.20500001410593,0.29500002339233,0.24000002821186,0.15200001786751,0,255,255,255,255,returnhovercolor())
		DrawSpriteS("CommonMenu","Gradient_Nav",0.20500001410593,0.24300001669202,0.24000002821186,0.038000004466878,0,255,255,255,255,returnhovercolor())
		DrawSpriteS("CommonMenu","arrowleft",0.26468752940395,0.24000001633937,0.021375002353363,0.038000004466878,0,0,0,0,255,returnhovercolor())
		DrawSpriteS("CommonMenu","arrowright",0.31500002821186,0.24000001633937,0.021375002353363,0.038000004466878,0,0,0,0,255,returnhovercolor())
		DrawSpriteS("CommonMenu","Shop_Box_Cross",0.31250002821186,0.27800002080625,0.021375002353363,0.038000004466878,0,255,255,255,255,returnhovercolor())
		DrawSpriteS("CommonMenu","shop_Lock",0.31250002821186,0.35400002974,0.021375002353363,0.038000004466878,0,255,255,255,255,returnhovercolor())
		DrawSpriteS("CommonMenu","shop_arrows_upANDdown",0.20500001410593,0.39200003455953,0.032,0.038000004466878,0,255,255,255,255,returnhovercolor())
		DrawSpriteS("CommonMenu","Gradient_Bgd",0.20500001410593,0.43650003902641,0.24000002821186,0.038000004466878,0,255,255,255,255,returnhovercolor())
		DrawTextS("negbookglare",0.09,0.126,0.5,255,255,255,255,0,0,255,255)
		DrawTextS("hello",0.09,0.1860000099917,0.36500004290554,93,182,229,255,returnhovercolor())
		local r = DrawTextS("1 / 7",0.32500002821186,0.1860000099917,0.36500004290554,93,182,229,255)
		TextDrawWrap(r,0.085,0.085+0.240-0.005)
		TextDrawRight(r,true)
		DrawTextS("%NBK_CUSTOM1%",0.09,0.22400001445858,0.36500004290554,0,0,0,255)
		DrawTextS("deluxo",0.26968752940395,0.22400001445858,0.36500004290554,0,0,0,255)
		DrawTextS("~y~Suicide~w~",0.09,0.26200001892546,0.36500004290554)
		DrawTextS("~y~~h~he %NBK_CUSTOM2% ~n~ ~BLIP_BENNYS~ ~FACE_TITLE~ ~ws~ ~ws~ ~ws~",0.09,0.30000002339233,0.36500004290554)
		DrawTextS("~g~$3000~g~",0.28321878050664,0.30000002339233,0.36500004290554)
		local x= DrawTextS("~y~~h~he %NBK_CUSTOM3% ~n~ ~BLIP_BENNYS~ ~FACE_TITLE~ ~ws~ ~ws~ ~ws~",0.09,0.33800002785921,0.36500004290554,155,155,155,255,returnhovercolor())
		
		DrawTextSF("hello","hello",0.09,0.42000003679297,0.36500004290554,255,255,255,255,255,255,255,255,function(on)
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
		DrawSelectionHook(true,function(selection)
			--print(selection)
		end)
		
		DrawCursor()
		
		Wait(100)
		AddTextEntry("NBK_CUSTOMR","~EX_R*~");

		CreateThread(function()
			
			while true do Wait(100)
				
				AddTextEntry("NBK_CUSTOM1","HELLO"..math.random(0,150))
				AddTextEntry("NBK_CUSTOM2","HELLO2"..math.random(15,666))
				AddTextEntry("NBK_CUSTOM3","HELLO3"..math.random(32,1523))
				
			end 
			
			
		end)
				
		
	
		return 
	end 
	::dontdothat:: do 
		CreateThread(function()
				while true do Wait(1000) 
					AddTextEntry("NBK_CUSTOM1","nb"..GetRandomIntInRange(0,150))
					AddTextEntry("NBK_CUSTOM2","czxczx"..GetRandomIntInRange(0,150))
				end 
			end)
		while true do Wait(0) --tested really bad perfromance in loop
			
			
			SetFadeInBegin("fadegroup1",500,500,500)
			DrawRectSF("1",0.20500001410593,0.20000001222514,0.24000002821186,0.038000004466878,0,0,0,220)
			DrawRectSF("2",0.20500001410593,0.39200003455953,0.24000002821186,0.038000004466878,0,0,0,220)
			DrawRectSF("3",0.20500001410593,0.41675003679297,0.24000002821186,0.0015,0,0,0,255)
			SetFadeInEnd("fadegroup1")
			SetFadeInBegin("fadegroup2",500,500,500)
			DrawSpriteSF("4","CommonMenu","interaction_bgd",0.20500001410593,0.13850000499585,0.24000002821186,0.085000009991701,0,255,255,255,255)
			DrawSpriteSF("5","CommonMenu","Gradient_Bgd",0.20500001410593,0.29500002339233,0.24000002821186,0.15200001786751,0,255,255,255,255)
			DrawSpriteSF("6","CommonMenu","Gradient_Nav",0.20500001410593,0.24300001669202,0.24000002821186,0.038000004466878,0,255,255,255,255)
			DrawSpriteSF("7","CommonMenu","arrowleft",0.26468752940395,0.24000001633937,0.021375002353363,0.038000004466878,0,0,0,0,255)
			DrawSpriteSF("8","CommonMenu","arrowright",0.31500002821186,0.24000001633937,0.021375002353363,0.038000004466878,0,0,0,0,255)
			DrawSpriteSF("9","CommonMenu","Shop_Box_Cross",0.31250002821186,0.27800002080625,0.021375002353363,0.038000004466878,0,255,255,255,255)
			DrawSpriteSF("10","CommonMenu","shop_Lock",0.31250002821186,0.35400002974,0.021375002353363,0.038000004466878,0,GetHudColour(GetRandomIntInRange(0,150)))
			DrawSpriteSF("11","CommonMenu","shop_arrows_upANDdown",0.20500001410593,0.39200003455953,0.032,0.038000004466878,0,GetHudColour(GetRandomIntInRange(0,150)))
			DrawSpriteSF("12","CommonMenu","Gradient_Bgd",0.20500001410593,0.43650003902641,0.24000002821186,0.038000004466878,0,GetHudColour(GetRandomIntInRange(0,150)))
			DrawTextSF("13","negbookglare",0.09,0.126,0.5,255,255,255,255)
			DrawTextSF("14","hello",0.09,0.1860000099917,0.36500004290554,93,182,229,255)
			local r = DrawTextSF("15","1 / 7",0.32500002821186,0.1860000099917,0.36500004290554,93,182,229,255)
			TextDrawWrap(r,0.085,0.085+0.240-0.005)
			TextDrawRight(r,true)
			DrawTextSF("16","hello %NBK_CUSTOM1% %NBK_CUSTOM2% !",0.09,0.22400001445858,0.36500004290554,0,0,0,255)
			DrawTextSF("17","deluxo",0.26968752940395,0.22400001445858,0.36500004290554,0,0,0,255)
			DrawTextSF("18","Suicide",0.09,0.26200001892546,0.36500004290554,255,255,255,255)
			DrawTextSF("19","hello %NBK_CUSTOM1% %NBK_CUSTOM2% !",0.09,0.30000002339233,0.36500004290554,GetHudColour(GetRandomIntInRange(0,150)))
			DrawTextSF("20","$3000",0.28321878050664,0.30000002339233,0.36500004290554,GetHudColour(GetRandomIntInRange(0,150)))
			DrawTextSF("21","Race",0.09,0.33800002785921,0.36500004290554,GetHudColour(GetRandomIntInRange(0,150)))
			DrawTextSF("22","hello",0.09,0.42000003679297,0.36500004290554,GetHudColour(GetRandomIntInRange(0,150)))
			DrawPageSF("23","mp_menu_glare",0.05,0.05,1.0,1.0,0,255,255,255,255)
			SetFadeInEnd("fadegroup2")
			Wait(500)
			SetFadeInShow("fadegroup1");
			
		end 
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