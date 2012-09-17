---------------------------------------------------
-- Ecliptic Growl
---------------------------------------------------

require("/scripts/globals/settings");
require("/scripts/globals/status");
require("/scripts/globals/monstertpmoves");

---------------------------------------------------

function OnPetAbility(target, pet, skill)
	local moon = VanadielMoonPhase();
	if moon > 90 then
		buffvalue = 7;
	elseif moon > 75 then
		buffvalue = 6;
	elseif moon > 60 then
		buffvalue = 5;
	elseif moon > 40 then
		buffvalue = 4;
	elseif moon > 25 then
		buffvalue = 3;
	elseif moon > 10 then
		buffvalue = 2;
	else
		buffvalue = 1;
	end
	target:addStatusEffect(EFFECT_STR_BOOST,buffvalue,0,180);
	target:addStatusEffect(EFFECT_DEX_BOOST,buffvalue,0,180);
	target:addStatusEffect(EFFECT_VIT_BOOST,buffvalue,0,180);
	target:addStatusEffect(EFFECT_AGI_BOOST,8-buffvalue,0,180);
	target:addStatusEffect(EFFECT_INT_BOOST,8-buffvalue,0,180);
	target:addStatusEffect(EFFECT_MND_BOOST,8-buffvalue,0,180);
	target:addStatusEffect(EFFECT_CHR_BOOST,8-buffvalue,0,180);
	skill:setMsg(0);
	return 0;
end