function onCreate()

	makeLuaSprite('waterdamage', 'waterdamage', -125, -500);
	setLuaSpriteScrollFactor('waterdamage', 1, 1);
	scaleObject('waterdamage', 1.1, 1.1);



	if not lowQuality then

		makeAnimatedLuaSprite('pianored','BG/Boiler/pianored', 290,100)
		addAnimationByPrefix('pianored','idle','pianored',24,true) -- he's playing the piano parts of AmBush in the bg
		setScrollFactor('pianored', 1, 1);
	
		
		makeLuaSprite('waterdamage', 'BG/Boiler/waterdamage', -1084, -568);
		setLuaSpriteScrollFactor('waterdamage', 1, 1);
		scaleObject('waterdamage', 0.9, 0.9);

		makeLuaSprite('outside', 'BG/Boiler/outside', 250, -165);
		setLuaSpriteScrollFactor('outside', 0.9, 0.9);
		scaleObject('outside', 0.9, 0.9);

		makeLuaSprite('linearlight', 'BG/Boiler/linearlight', -1084, -568);
		setScrollFactor('linearlight', 1, 1);
		setBlendMode('linearlight','linear light')
		scaleObject('linearlight', 0.9, 0.9);

		makeAnimatedLuaSprite('greenboiler','BG/Boiler/greenboiler', -550,400)
		addAnimationByPrefix('greenboiler','idle','greenboiler',19,false)
		scaleObject('greenboiler', 0.9, 0.9);
		setScrollFactor('greenboiler', 0.9, 1);
		
	end
	addLuaSprite('outside', false);
	addLuaSprite('waterdamage', false);
	addLuaSprite('pianored', false);
	addLuaSprite('linearlight', false);
	addLuaSprite('greenboiler', true);

end

-- Gameplay/Song interactions
function onBeatHit()
	-- triggered 2 times per section
	if curBeat % 2 == 0 then
		playAnim('greenboiler', 'idle', true);
		if not lowQuality then
			playAnim('greenboiler', 'idle', true);
	        if curBeat % 2 == 0 then
		        playAnim('pianored', 'idle', true);
		        if not lowQuality then
			        playAnim('pianored', 'idle', true);
				end
			end
		end
	end
end

-- EOF ERROR MY FUCKING ASS THIS IS BULLSHIT
-- also i made 2 beat things because red was supposed to go faster but i just ended up making the xml do the animation x2 