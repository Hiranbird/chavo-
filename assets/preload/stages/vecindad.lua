function onCreatePost()
	
	makeLuaSprite('bg1', 'chavobg/Vecindad', -600, 200);
	addLuaSprite('bg1', false);
	makeAnimatedLuaSprite('back', 'chavobg/Quico_Background', -700, 200)
	addAnimationByPrefix('back', 'bounce','Quico_Background Idle', 15, true);
	addLuaSprite('back', false);
	makeAnimatedLuaSprite('gfb', 'chavobg/GF', 600, 800)
	addAnimationByPrefix('gfb', 'bounce','GF Idle', 15, true);
	addLuaSprite('gfb', false);


	makeLuaSprite('bg2', 'chavobg/VecindadPOV', -600, 200);
	addLuaSprite('bg2', false);
	
	setProperty('bg2.visible', false);
end

function onEvent(name,value1,value2)
	if name == 'XD' then

		if value1 == '1' then

		setProperty('bg1.visible', true);
		setProperty('back.visible', true);
		setProperty('gfb.visible', true);

		setProperty('bg2.visible', false);
		end

		if value1 == '2' then
		setProperty('bg1.visible', false);
		setProperty('bg1.visible', false);
		setProperty('back.visible', false);
		setProperty('gfb.visible', false);
		
		setProperty('bg2.visible', true);
		end
	end	
end			