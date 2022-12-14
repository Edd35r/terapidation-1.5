function onCreate()

	makeAnimatedLuaSprite('DAambience', 'ambience', -135, -26);
	addAnimationByPrefix('DAambience', 'loop', 'ambience0', 24, true);
	setObjectCamera('DAambience','hud')
	addLuaSprite('DAambience', true);
	scaleObject('DAambience', 2, 2)
	objectPlayAnimation('DAambience', 'loop');

	makeLuaSprite('jeff4', 'titles/jeff4', -400, 220);
	setScrollFactor('jeff4', 0, 0);
	setObjectCamera('jeff4','hud')
	scaleObject('jeff4', 0.8, 0.8)
	addLuaSprite('jeff4', true);

	makeLuaSprite('jeffbg', 'jeffbg/normaljeffbg', -800.2, -338);
	setScrollFactor('jeffbg', 1, 1);
	addLuaSprite('jeffbg', false);

	makeLuaSprite('treeoverlay', 'jeffbg/treeoverlay', -960.35, -438);
	setScrollFactor('treeoverlay', 0.7, 0.7);

	addLuaSprite('treeoverlay', true);

	scaleObject('jeffbg', 2, 2)
	scaleObject('treeoverlay', 2, 2)

	makeAnimatedLuaSprite('burn', 'jeffbg/jefffirebg', -800.2, -378);
	addAnimationByPrefix('burn', 'loop', 'fire', 30, true);
	addLuaSprite('burn', false);
	objectPlayAnimation('burn', 'loop');

	makeLuaSprite('treeoverlayfire', 'jeffbg/firejefftrees', -960.35, -438);
	setScrollFactor('treeoverlayfire', 0.7, 0.7);
	addLuaSprite('treeoverlayfire', true);

	scaleObject('burn', 2, 2)
	scaleObject('treeoverlayfire', 2, 2)
end

function onCreatePost()--this thing happens once the characters are spawned

	setProperty("burn.visible", false);
	setProperty("treeoverlayfire.visible", false);
end
