function onCreatePost()
makeLuaSprite('rock1', 'stages/p2/rock', 590, -350);
addLuaSprite('rock3', false)
scaleObject('rock3', 4, 4)

makeLuaSprite('rock2', 'stages/p2/rock1', -990, -350);
addLuaSprite('rock1', false)
scaleObject('rock1', 4, 4)

makeLuaSprite('rock3', 'stages/p2/rock2', -250, -150);
addLuaSprite('rock2', false)
scaleObject('rock2', 4, 4)

makeAnimatedLuaSprite('fireBG','stages/p2/FireBG', -1230, -250)
addAnimationByPrefix('fireBG','FIRE instancia','FIRE instancia',24,true)
scaleObject('fireBG', 3.31, 3.31)
addLuaSprite('fireBG', false)

makeLuaSprite('palo1', 'stages/p2/palo1', 0, 250);
addLuaSprite('palo1', false)
scaleObject('palo1', 1, 1)

makeLuaSprite('palo2', 'stages/p2/palo2', 750, 250);
addLuaSprite('palo2', false)
scaleObject('palo2', 1.3, 1.3)

makeLuaSprite('BG', 'stages/p2/bg', -850, 130);
addLuaSprite('BG', false)
scaleObject('BG', 2.2, 2.2)

makeLuaSprite('rock0', 'stages/p2/rock0', 1050, 730);
addLuaSprite('rock0', true)
scaleObject('rock0', 1.3, 1.3)

makeLuaSprite('rock4', 'stages/p2/rock3', -730, 730);
addLuaSprite('rock4', true)
scaleObject('rock4', 2, 2)

makeLuaSprite('overlay', 'stages/overlay', -65, -30)
addLuaSprite('overlay', true)
scaleObject('overlay', 2.6, 2.6)
setScrollFactor('overlay', 1, 1)
setObjectCamera('overlay', 'camHUD')
setProperty('overlay.alpha', 0.6)
setProperty('overlay.antialiasing', false)

--Hide
setProperty('rock1.visible', false);
setProperty('rock2.visible', false);
setProperty('rock3.visible', false);
setProperty('rock4.visible', false);
setProperty('rock0.visible', false);

setProperty('fireBG.visible', false);

setProperty('palo1.visible', false);
setProperty('palo2.visible', false);

setProperty('BG.visible', false);
setProperty('overlay.visible', false);
end

function onEvent(n, v1, v2)
	if n == 'Part3' then
   if v1 == '1' then
triggerEvent('Change Character', 'dad', 'p3exe')

doTweenAlpha('FadeEXE', 'healthEXE', 1, 5, 'sineIn');
doTweenAlpha('FadeEXE1', 'healthBar', 1, 5, 'sineIn');
doTweenAlpha('FadeEXE2', 'iconP1', 1, 5, 'sineIn');
doTweenAlpha('FadeEXE3', 'iconP2', 1, 5, 'sineIn');
doTweenAlpha('FadeEXE4', 'iconP2', 1, 5, 'sineIn');
doTweenAlpha('FadeEXE5', 'scoreTxt', 1, 5, 'sineIn');
doTweenAlpha('BlackFADE', 'black', 0, 5, 'sineIn');
doTweenZoom('zoom1', 'camGame', 0.65, 5, 'sineOut')

setProperty('cameraSpeed',0.3)
setProperty('defaultCamZoom', 0.65)
setProperty('rock1.visible', true);
setProperty('rock2.visible', true);
setProperty('rock3.visible', true);
setProperty('rock4.visible', true);
setProperty('rock0.visible', true);

setProperty('fireBG.visible', true);

setProperty('palo1.visible', true);
setProperty('palo2.visible', true);

setProperty('BG.visible', true);

setProperty('stage1.visible', false);
setProperty('stage2.visible', false);
setProperty('blood.visible', false);
setProperty('stage3.visible', false);
setProperty('stage4.visible', false);
setProperty('bird.visible', false);
setProperty('stage5.visible', false);
setProperty('stage6.visible', false);

setProperty('shit1.visible', false);
setProperty('shit2.visible', false);
setProperty('shit3.visible', false);
setProperty('shit4.visible', false);
end


if v1 == 'red' then
cameraFlash('other', 'FF0000', '0.5')
setProperty('overlay.visible', true);
end
if v1 == 'end' then
setProperty('camHUD.visible', false);
setProperty('camGame.visible', false);
  end
 end
end
