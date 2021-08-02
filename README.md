--[[ REQUIRES THE FOLLOWING ADDONS;
Soul of Cinder on VJ Base by Mayhem (for materials/sounds/etc)
Abyss Watchers & Dark Wraith SNPC by Mayhem (for sounds)
Dark Souls 1 Base by Roach (for sounds)
]]

--[[
  TO DO;
    - Convert all of the pre-existing attacks utilizing the old CinderFlameTrail() over to use the CinderFlameTrailImproved(num, wpn, dir)
        Once that's done, remove all traces of the old CinderFlameTrail.
    - Improve upon the pre-existing autismo damage base by implementing a table to store hit players in order to only deal damage to them once.
      - In addition to the storing of hit players, add some of the sexy dynamic functionality like in CFTImproved to allow for individual damage values on each attack.
      - Each weapon could have a different value stored, ie CinderDmgInfo(unarm,strsword,lance,crvsword,staff,grtsword) utilizing nil (CinderDmgInfo(nil,nil,69,nil,69,nil)) for anything idc about, ie a ranged attack on a staff.
]]
