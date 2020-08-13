/// @description die

with(oLeftOrb) instance_destroy();
with(oRightOrb) instance_destroy();
rightOrb = 0;
leftOrb = 0;

ScreenShake(30);
instance_change(oPDead,true);


