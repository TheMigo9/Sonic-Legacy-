function onCreatePost()
makeLuaSprite('stage1', 'stages/sunset/whatsupthesky', -1200, -100);
addLuaSprite('stage1', false)
scaleObject('stage1', 1.6, 1.6)

makeLuaSprite('stage2', 'stages/p1/bigbackrock', -650, -140);
addLuaSprite('stage2', false)
scaleObject('stage2', 2, 2)

makeAnimatedLuaSprite('blood','stages/p1/blood', 50, -50)
addAnimationByPrefix('blood','blood','blood',8,true)
scaleObject('blood', 1.1, 1.1)
addLuaSprite('blood', false)

makeLuaSprite('stage3', 'stages/p1/backrock', -650, -120);
addLuaSprite('stage3', false)
scaleObject('stage3', 2, 2)


makeLuaSprite('stage4', 'stages/p1/ohpalms', -350, 250);
addLuaSprite('stage4', false)
scaleObject('stage4', 2.1, 2.1)

makeAnimatedLuaSprite('bird','stages/p1/birds1', 230, 180)
addAnimationByPrefix('bird','birds','birds',8,true)
scaleObject('bird', 0.75, 0.75)
addLuaSprite('bird', false)

makeLuaSprite('stage5', 'stages/p1/floor', -835, 450);
addLuaSprite('stage5', false)
scaleObject('stage5', 2.5, 2.5)

makeLuaSprite('stage6', 'stages/p1/front', -950, -50);
addLuaSprite('stage6', true)
scaleObject('stage6', 3, 3)


makeLuaSprite('shit1', 'stages/p1/shit4', 535, 620);
addLuaSprite('shit1', false)
scaleObject('shit1', 0.5, 0.5)

makeLuaSprite('shit2', 'stages/p1/shit1', 735, 920);
addLuaSprite('shit2', false)
scaleObject('shit2', 0.5, 0.5)

makeLuaSprite('shit3', 'stages/p1/shit2', 435, 820);
addLuaSprite('shit3', false)
scaleObject('shit3', 1, 1)

makeLuaSprite('shit4', 'stages/p1/shit3', 200, 890);
addLuaSprite('shit4', false)
scaleObject('shit4', 0.6, 0.6)

makeAnimatedLuaSprite('shit5','stages/p1/Bunny_kick',350, 480)
addAnimationByPrefix('shit5','rabbit head0000','rabbit head0000',8,true)
addAnimationByPrefix('shit5','fuck rabbit','rabbit head',24,false)
scaleObject('shit5', 0.75, 0.75)
addLuaSprite('shit5', false)

--Hide
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
setProperty('shit5.visible', false);

end

function onEvent(n, v1, v2)
	if n == 'Part2' then
   if v1 == '1' then
setTextFont('timeTxt', 'cmd.ttf')

setProperty('bg1.visible', false);

setProperty('bg2.visible', false);

setProperty('bg3.visible', false);


setProperty('agua.visible', falde);


setProperty('bg4.visible', false);

setProperty('bg5.visible', false);

setProperty('bg6.visible', false);


triggerEvent('Change Character', 'dad', 'p2exe')
setProperty('healthEXE.visible', true)
setProperty('health.visible', false)

setProperty('stage1.visible', true);
setProperty('stage2.visible', true);
setProperty('blood.visible', true);
setProperty('stage3.visible', true);
setProperty('stage4.visible', true);
setProperty('bird.visible', true);
setProperty('stage5.visible', true);
setProperty('stage6.visible', true);

setProperty('shit1.visible', true);
setProperty('shit2.visible', true);
setProperty('shit3.visible', true);
setProperty('shit4.visible', true);
setProperty('shit5.visible', true);
end
if v1 == '0' then

setProperty('healthEXE.alpha', 0)
setProperty('scoreTxt.alpha', 0)
setProperty('healthBar.alpha', 0)
setProperty('iconP1.alpha', 0)
setProperty('iconP2.alpha', 0)
setProperty('cameraSpeed',0.3)
setProperty('defaultCamZoom', 2)
setProperty('black.visible', true);
end
 end
end