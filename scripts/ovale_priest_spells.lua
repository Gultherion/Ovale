local _, Ovale = ...
local OvaleScripts = Ovale.OvaleScripts

do
	local name = "ovale_priest_spells"
	local desc = "[5.4.7] Ovale: Priest spells"
	local code = [[
# Priest spells and functions.
#	Last updated: 2014-04-19

Define(cascade_damage 121135)
	SpellInfo(cascade_damage cd=25)
Define(cascade_talent 16)
Define(desperate_prayer 19236)
	SpellInfo(desperate_prayer cd=120)
Define(desperate_prayer_talent 10)
Define(devouring_plague 2944)
	SpellInfo(devouring_plague shadoworbs=finisher)
	SpellAddTargetDebuff(devouring_plague devouring_plague_debuff=1)
Define(devouring_plague_debuff 2944)
	SpellInfo(devouring_plague_debuff duration=6 haste=spell tick=1)
Define(dispersion 47585)
	SpellInfo(dispersion cd=120)
	SpellInfo(dispersion addcd=-15 glyph=glyph_of_dispersion)
Define(divine_insight_shadow_buff 124430)
	SpellInfo(divine_insight_shadow_buff duration=12)
Define(divine_insight_talent 15)
Define(divine_star 110744)
	SpellInfo(divine_star cd=15)
Define(divine_star_talent 17)
Define(from_darkness_comes_light_talent 7)
Define(glyph_of_dispersion 63229)
Define(halo 120517)
	SpellInfo(halo cd=40)
Define(halo_talent 18)
Define(hymn_of_hope 64901)
	SpellInfo(hymn_of_hope cd=360)
Define(inner_fire 588)
	SpellAddBuff(inner_fire inner_fire_buff=1)
Define(inner_fire_buff 588)
Define(mass_dispel 32375)
	SpellInfo(mass_dispel cd=15)
Define(mind_blast 8092)
	SpellInfo(mind_blast cd=8 shadoworbs=-1)
	SpellAddBuff(mind_blast divine_insight_shadow_buff=0 talent=divine_insight_talent)
Define(mind_flay 15407)
	SpellInfo(mind_flay channel=3 haste=spell)
Define(mind_sear 48045)
	SpellInfo(mind_sear channel=5 haste=spell)
Define(mind_spike 73510)
	SpellAddBuff(mind_spike surge_of_darkness_buff=0 mastery=shadow talent=from_darkness_comes_light_talent)
Define(mindbender 123040)
	SpellInfo(mindbender cd=60)
Define(mindbender_talent 8)
Define(power_infusion 10060)
	SpellInfo(power_infusion cd=120)
Define(power_infusion_talent 14)
Define(power_word_fortitude 21562)
Define(shadow_word_death 32379)
	SpellInfo(shadow_word_death cd=8)
	SpellInfo(shadow_word_death buff_shadoworbs=shadow_word_death_reset_cooldown_buff buff_shadoworbs_amount=1 shadoworbs=-1)
Define(shadow_word_death_reset_cooldown_buff 157218)	# OvaleShadowWordDeath
	SpellInfo(shadow_word_death_reset_cooldown_buff duration=9)
Define(shadow_word_pain 589)
	SpellAddTargetDebuff(shadow_word_pain shadow_word_pain_debuff=1)
Define(shadow_word_pain_debuff 589)
	SpellInfo(shadow_word_pain_debuff duration=18 haste=spell tick=3)
	SpellInfo(shadow_word_pain_debuff addduration=3 itemset=T14_caster itemcount=4)
Define(shadowfiend 34433)
	SpellInfo(shadowfiend cd=180)
Define(shadowform 15473)
Define(silence 15487)
	SpellInfo(silence cd=45)
Define(surge_of_darkness_buff 87160)
	SpellInfo(surge_of_darkness_buff duration=10)
Define(vampiric_embrace 15286)
	SpellInfo(vampiric_embrace cd=180)
Define(vampiric_touch 34914)
	SpellAddTargetDebuff(vampiric_touch vampiric_touch_debuff=1)
Define(vampiric_touch_debuff 34914)
	SpellInfo(vampiric_touch_debuff duration=15 haste=spell tick=3)
	SpellInfo(vampiric_touch_debuff addduration=3 itemset=T14_caster itemcount=4)

AddFunction Interrupt
{
	if target.IsFriend(no) and target.IsInterruptible() Spell(silence)
}
]]

	OvaleScripts:RegisterScript("PRIEST", name, desc, code, "include")
end
