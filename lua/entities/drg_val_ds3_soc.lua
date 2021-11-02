if not DrGBase then return end -- return if DrGBase isn't installed
ENT.Base = "drgbase_nextbot" -- DO NOT TOUCH (obviously)

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
-- Misc --
ENT.PrintName = "Soul of Cinder"
ENT.Category = "Val's Nextbots"
ENT.Models = {"models/soc/val_soc.mdl"}
ENT.ModelScale = 1
ENT.CollisionBounds = Vector(15, 25, 120)
ENT.BloodColor = BLOOD_COLOR_MECH
ENT.RagdollOnDeath = true
ENT.Factions = {"FACTION_DS3_LORDS_OF_CINDER"}

-- Stats --
ENT.SpawnHealth = 6557
ENT.SpawnHealthP2 = 4209
ENT.HealthRegen = 0
ENT.MinPhysDamage = 10
ENT.MinFallDamage = 10

-- Sounds --
ENT.OnSpawnSounds = {}
ENT.OnIdleSounds = {}
ENT.IdleSoundDelay = 2
ENT.ClientIdleSounds = false
ENT.OnDamageSounds = {"soc/vox_pain_0.mp3", "soc/vox_pain_1.mp3", "soc/vox_pain_2.mp3", "soc/vox_pain_3.mp3", "soc/vox_pain_4.mp3"}
ENT.DamageSoundDelay = 3

-- AI --
ENT.Omniscient = false
ENT.SpotDuration = 30
ENT.RangeAttackRange = 700
ENT.MeleeAttackRange = 225
ENT.KickDistance = 65
ENT.ReachEnemyRange = 50
ENT.AvoidEnemyRange = 0

-- Relationships --
ENT.Factions = {}
ENT.Frightening = false
ENT.AllyDamageTolerance = 0.33
ENT.AfraidDamageTolerance = 0.33
ENT.NeutralDamageTolerance = 0.33

-- Locomotion --
ENT.Acceleration = 1000
ENT.Deceleration = 1000
ENT.JumpHeight = 50
ENT.StepHeight = 20
ENT.MaxYawRate = 250
ENT.DeathDropHeight = 200

-- Movements --
ENT.UseWalkframes = true
ENT.WalkSpeed = 100
ENT.RunSpeed = 200
ENT.WalkAnimation = "NONE"
ENT.RunAnimation = "NONE"

-- Detection --
ENT.EyeBone = "Head"
ENT.EyeOffset = Vector(0, 0, 0)
ENT.EyeAngle = Angle(0, 0, 0)
ENT.SightFOV = 150
ENT.SightRange = 15000
ENT.MinLuminosity = 0
ENT.MaxLuminosity = 1
ENT.HearingCoefficient = 1

-- Possession --
ENT.PossessionEnabled = true
ENT.PossessionPrompt = true
ENT.PossessionCrosshair = true
ENT.PossessionMovement = POSSESSION_MOVE_8DIR
ENT.PossessionViews = {
	{
    --offset = Vector(0, 30, 30),
    offset = Vector(0, 30, 30),
		distance = 250
	},
	{
		offset = Vector(9, 0, 0),
		distance = 0,
		eyepos = true
	}
}
ENT.PossessionBinds = {
  --[[
    ---- CONTROLS ----
    LEFT CLICK = USE PRIMARY WEAPON
    RIGHT CLICK = MAGIC
    SPACE = DODGE
    R = STAND UP
    ---- ITEM SELECTION ----
    KEYPAD [+] = HEAL
    KEY_4 - Switch Weapon
  ]]
-- Selection
  [KEY_4] = {{coroutine = true,onbuttondown = function(self) -- weapon selection
    if self:GetCooldown("SelectCD") >0 then return end
    if self.IsSitting then return end
    self:SetCooldown("SelectCD",0.5)
    if self.Wpn == 0 then self:POSCinderWeaponSelection(1, "unarm")
      elseif self.Wpn == 1 then self:POSCinderWeaponSelection(2,"strsword")
      elseif self.Wpn == 2 then self:POSCinderWeaponSelection(3,"lance")
      elseif self.Wpn == 3 then self:POSCinderWeaponSelection(4,"crvsword")
      elseif self.Wpn == 4 then self:POSCinderWeaponSelection(5,"staff")
      elseif self.Wpn == 5 then self:POSCinderWeaponSelection(6,"grtsword")
      elseif self.Wpn == 6 then self:POSCinderWeaponSelection(1,"unarm")
    end
  end}},
  [KEY_5] = {{coroutine = true,onbuttondown = function(self) -- moveset selection
    if self:GetCooldown("SelectCD") >0 then return end
    self:SetCooldown("SelectCD",0.5)
    if self.Mst == 1 then self:CinderMovesetSelection(2, "ms2atk")
      elseif self.Mst == 2 then self:CinderMovesetSelection(3,"ms3atk")
      elseif self.Mst == 3 then self:CinderMovesetSelection(1,"ms1atk")
      end
  end}},
-- Combat
  [IN_USE] = {{coroutine = true,onkeydown = function(self)
    if !self:CanAtk() then return end
    self:PlaySequenceAndMove("Attack21_5", 1, self.PossessionFaceForward)
  end}},
  [IN_ATTACK] = {{coroutine = true,onkeydown = function(self)
    if !self:CanAtk() then return end
    if self.Mst == 1 then self:PlaySequenceAndMove(table.Random(ms1atk), 1, self.PossessionFaceForward) elseif self.Mst == 2 then self:PlaySequenceAndMove(table.Random(ms2atk), 1, self.PossessionFaceForward) elseif self.Mst == 3 then self:PlaySequenceAndMove(table.Random(ms3atk), 1, self.PossessionFaceForward) end
    --self:PlaySequenceAndMove("Attack0_1", 1, self.PossessionFaceForward)
  end}},
  [IN_ATTACK2] = {{coroutine = true, onkeypressed = function(self)
    if !self:CanAtk() then return end
    self:PlaySequenceAndMove("Attack20_2", 1, self.PossessionFaceForward)
  end}},
  [IN_RELOAD] = {{coroutine = true,onkeypressed = function(self)
    if !self.IsSitting then return end
    self:CinderStandUp()
	end}},
  [KEY_PAD_MINUS] = {{coroutine = true, onbuttonpressed = function(self)
    self:PlaySequenceAndMove("Attack21_2")
  end}},
-- Passive
  [IN_JUMP] = {{coroutine = true, onkeypressed = function(self)
    if !self:CanDodge() then return end
    local ply = self:GetPossessor()
    if ply:KeyDown(IN_MOVERIGHT) and ply:KeyDown(IN_DUCK) then self:PlaySequenceAndMove("Attack5_2", 1, self.PossessionFaceForward)
    elseif ply:KeyDown(IN_MOVERIGHT) then self:PlaySequenceAndMove("Dodge_Right", 1, self.PossessionFaceForward)
    elseif ply:KeyDown(IN_MOVELEFT) and ply:KeyDown(IN_DUCK) then self:PlaySequenceAndMove("Attack6_2", 1, self.PossessionFaceForward)
    elseif ply:KeyDown(IN_MOVELEFT) then self:PlaySequenceAndMove("Dodge_Left", 1, self.PossessionFaceForward)
    elseif ply:KeyDown(IN_BACK) and ply:KeyDown(IN_DUCK) then self:PlaySequenceAndMove("Dodge_Backflip", 1, self.PossessionFaceForward)
    elseif ply:KeyDown(IN_BACK) then self:PlaySequenceAndMove("Dodge_Backward", 1, self.PossessionFaceForward)
    elseif ply:KeyDown(IN_FORWARD) then self:PlaySequenceAndMove("Dodge_Forward", 1, self.PossessionFaceForward)
    end
  end}},
  [KEY_PAD_PLUS] = {{coroutine = true, onbuttonpressed = function(self)
    self:PlaySequenceAndMove("Attack8_1")
  end}},
}

refAtks = {
  "Attack0", -- sword swipe left
  "Attack10_5", -- jump hit
  "Attack11_5", -- sword slam into ground
  "Attack12_5", -- heavy hit
  "Attack19_5", -- jumping slice
  "Attack22" -- running slice ground up
}

if SERVER then
  function ENT:CinderDamageInfo(attstart, attend, wpn, dmgamnt, dmgtype, range)
    -- contingency plans for if the data provided is invalid/nil 
    if attstart == nil then attstart = 5 end
    if wpn == nil then wpn = 1 end
    if dmgamnt == nil then dmgamnt = 10 end
    if dmgtype == nil then dmgtype = DMG_BLAST end  
    if range == nil then range = 10 end
    
    local dmgInfo = DamageInfo()
      dmgInfo:SetDamage(dmgamnt)
      dmgInfo:SetDamageType(dmgtype)
      dmgInfo:SetAttacker(self)
      dmgInfo:SetInflictor(self)
    for k,v in pairs(ents.FindInSphere(self:GetAttachment(attstart).Pos, range)) do v:TakeDamageInfo(dmgInfo) end
    if attend != nil then for k,v in pairs(ents.FindInSphere(self:GetAttachment(attend).Pos, range)) do v:TakeDamageInfo(dmgInfo) end end


  end

  function ENT:CinderDmgInfo()
    local dmgUnarmed = DamageInfo()
      dmgUnarmed:SetDamage(60)
      dmgUnarmed:SetDamageType(DMG_CRUSH)
      dmgUnarmed:SetAttacker(self)
      dmgUnarmed:SetInflictor(self)
    local dmgSsword = DamageInfo()
      dmgSsword:SetDamage(15)
      dmgSsword:SetDamageType(DMG_BLAST)
      dmgSsword:SetAttacker(self)
      dmgSsword:SetInflictor(self)
    local dmgLance = DamageInfo()
      dmgLance:SetDamage(10)
      dmgLance:SetDamageType(DMG_BLAST)
      dmgLance:SetAttacker(self)
      dmgLance:SetInflictor(self)
    local dmgCsword = DamageInfo()
      dmgCsword:SetDamage(18)
      dmgCsword:SetDamageType(DMG_BLAST)
      dmgCsword:SetAttacker(self)
      dmgCsword:SetInflictor(self)
    local dmgStaff = DamageInfo()
      dmgStaff:SetDamage(15)
      dmgStaff:SetDamageType(DMG_BLAST)
      dmgStaff:SetAttacker(self)
      dmgStaff:SetInflictor(self)
    local dmgGsword = DamageInfo()
      dmgGsword:SetDamage(20)
      dmgGsword:SetDamageType(DMG_BLAST)
      dmgGsword:SetAttacker(self)
      dmgGsword:SetInflictor(self)
    if self.Wpn == 1 then -- fists
      for k,v in pairs(ents.FindInSphere(self:GetAttachment(6).Pos, 10)) do
        v:TakeDamageInfo(dmgUnarmed) 
      end
    elseif self.Wpn == 2 then -- straight sword
      for k,v in pairs(ents.FindInSphere(self:GetAttachment(5).Pos, 50)) do
        v:TakeDamageInfo(dmgSsword) 
      end
      for k,v in pairs(ents.FindInSphere(self:GetAttachment(7).Pos, 40)) do
        v:TakeDamageInfo(dmgSsword) 
      end
    elseif self.Wpn == 3 then -- lance
      for k,v in pairs(ents.FindInSphere(self:GetAttachment(5).Pos, 40)) do
        v:TakeDamageInfo(dmgLance) 
      end
      for k,v in pairs(ents.FindInSphere(self:GetAttachment(7).Pos, 50)) do
        v:TakeDamageInfo(dmgLance) 
      end
      for k,v in pairs(ents.FindInSphere(self:GetAttachment(8).Pos, 50)) do
        v:TakeDamageInfo(dmgLance) 
      end
    elseif self.Wpn == 4 then -- curved sword
      for k,v in pairs(ents.FindInSphere(self:GetAttachment(5).Pos, 50)) do
        v:TakeDamageInfo(dmgCsword) 
      end
      for k,v in pairs(ents.FindInSphere(self:GetAttachment(10).Pos, 40)) do
        v:TakeDamageInfo(dmgCsword) 
      end
    elseif self.Wpn == 5 then -- staff
      for k,v in pairs(ents.FindInSphere(self:GetAttachment(5).Pos, 50)) do
        v:TakeDamageInfo(dmgStaff) 
      end
      for k,v in pairs(ents.FindInSphere(self:GetAttachment(9).Pos, 40)) do
        v:TakeDamageInfo(dmgStaff) 
      end
    elseif self.Wpn == 6 then -- greatsword
      for k,v in pairs(ents.FindInSphere(self:GetAttachment(5).Pos, 40)) do
        v:TakeDamageInfo(dmgGsword) 
      end
      for k,v in pairs(ents.FindInSphere(self:GetAttachment(3).Pos, 40)) do
        v:TakeDamageInfo(dmgGsword) 
      end
      for k,v in pairs(ents.FindInSphere(self:GetAttachment(7).Pos, 40)) do
        v:TakeDamageInfo(dmgGsword) 
      end
      for k,v in pairs(ents.FindInSphere(self:GetAttachment(11).Pos, 40)) do
        v:TakeDamageInfo(dmgGsword) 
      end
    end
  end
  
  function ENT:CinderFlameTrailImproved(num, wpn, dir) -- duration, weapon, direction (l/r/f/nil)
    if dir == "l" then curDir = "_left" elseif dir == "r" then curDir = "_right" else curDir = "" end
    if dir != "f" then
      if wpn != "unarm" and wpn != "staff" then
        cFire = ents.Create("light_dynamic")cFire:SetKeyValue("_light","212 50 0 255")cFire:SetKeyValue("brightness","6") cFire:SetKeyValue("distance","160")cFire:SetKeyValue("style","1")cFire:SetPos(self:GetPos())cFire:SetParent(self)cFire:Spawn()cFire:Activate()cFire:Fire("SetParentAttachment","Spell_Cast_Catalyst")cFire:Fire("TurnOn","",0)
        ParticleEffectAttach("ds3_flamesword_swing"..curDir,PATTACH_POINT_FOLLOW,self,3)
        self:Timer(num,function()self:StopParticles()cFire:Remove(self)end)
      end
    elseif dir == "f" and wpn != "unarm" and wpn != "staff" then
        cFire = ents.Create("light_dynamic")cFire:SetKeyValue("_light","212 50 0 255")cFire:SetKeyValue("brightness","6")cFire:SetKeyValue("distance","160")cFire:SetKeyValue("style","1")cFire:SetPos(self:GetPos())cFire:SetParent(self)cFire:Spawn()cFire:Activate()cFire:Fire("SetParentAttachment","BF_GS_Link")cFire:Fire("TurnOn","",0)
        ParticleEffectAttach("ds3_flamesword_swing",PATTACH_POINT_FOLLOW,self,7)ParticleEffectAttach("ds3_flamesword_swing",PATTACH_POINT_FOLLOW,self,8)ParticleEffectAttach("ds3_flamesword_swing",PATTACH_POINT_FOLLOW,self,3)
        self:Timer(num,function()self:StopParticles()cFire:Remove(self)end)
    end end
  

  -- DEPRECATED, NEED TO REMOVE.
  function ENT:CinderFlameTrail()
    if self.Wpn != 1 and self.Wpn != 5 then
      ParticleEffectAttach("ds3_flamesword_swing",PATTACH_POINT_FOLLOW,self,3)
      self:Timer(0.4,function()self:StopParticles()end)
      cFire = ents.Create("light_dynamic")
      cFire:SetKeyValue("_light","212 50 0 255")
      cFire:SetKeyValue("brightness","6") 
      cFire:SetKeyValue("distance","160")
      cFire:SetKeyValue("style","1")
      cFire:SetPos(self:GetPos())
      cFire:SetParent(self)
      cFire:Spawn()
      cFire:Activate()
      cFire:Fire("SetParentAttachment","Spell_Cast_Catalyst")
      cFire:Fire("TurnOn","",0)
      self:Timer(0.3,function()cFire:Remove(self)end)
    end end
  function ENT:CinderFlameTrailL()
    if self.Wpn != 1 and self.Wpn != 5 then
      ParticleEffectAttach("ds3_flamesword_swing_left",PATTACH_POINT_FOLLOW,self,3)
      self:Timer(0.3,function()self:StopParticles()end)
      cFire = ents.Create("light_dynamic")
      cFire:SetKeyValue("_light","212 50 0 255")
      cFire:SetKeyValue("brightness","6") 
      cFire:SetKeyValue("distance","160")
      cFire:SetKeyValue("style","1")
      cFire:SetPos(self:GetPos())
      cFire:SetParent(self)
      cFire:Spawn()
      cFire:Activate()
      cFire:Fire("SetParentAttachment","Spell_Cast_Catalyst")
      cFire:Fire("TurnOn","",0)
      self:Timer(0.3,function()cFire:Remove(self)end)
    end end
  function ENT:CinderFlameTrailR()
    if self.Wpn != 1 and self.Wpn != 5 then
      ParticleEffectAttach("ds3_flamesword_swing_right",PATTACH_POINT_FOLLOW,self,3)
      self:Timer(0.3,function()self:StopParticles()end)
      cFire = ents.Create("light_dynamic")
      cFire:SetKeyValue("_light","212 50 0 255")
      cFire:SetKeyValue("brightness","6") 
      cFire:SetKeyValue("distance","160")
      cFire:SetKeyValue("style","1")
      cFire:SetPos(self:GetPos())
      cFire:SetParent(self)
      cFire:Spawn()
      cFire:Activate()
      cFire:Fire("SetParentAttachment","Spell_Cast_Catalyst")
      cFire:Fire("TurnOn","",0)
      self:Timer(0.3,function()cFire:Remove(self)end)
    end end
  function ENT:CinderFlameTrailLong()
    if self.Wpn != 1 and self.Wpn != 5 then
      ParticleEffectAttach("ds3_flamesword_swing",PATTACH_POINT_FOLLOW,self,3)
      self:Timer(0.8,function()self:StopParticles()end)
      cFire = ents.Create("light_dynamic")
      cFire:SetKeyValue("_light","212 50 0 255")
      cFire:SetKeyValue("brightness","6") 
      cFire:SetKeyValue("distance","160")
      cFire:SetKeyValue("style","1")
      cFire:SetPos(self:GetPos())
      cFire:SetParent(self)
      cFire:Spawn()
      cFire:Activate()
      cFire:Fire("SetParentAttachment","Spell_Cast_Catalyst")
      cFire:Fire("TurnOn","",0)
      self:Timer(0.8,function()cFire:Remove(self)end)
    end end
  -- END DEPRECATED CODE.

  function ENT:SequenceInitialize()
    local function FootstepL()
      self:EmitSound("soc/sfx_step_"..math.random(0,2)..".mp3", 70, math.random(90,110))
      ParticleEffect("brutus_burning_footstep", self:GetAttachment(12).Pos, self:GetAttachment(12).Ang, nil)
    end
    local function FootstepR()
      self:EmitSound("soc/sfx_step_"..math.random(0,2)..".mp3", 70, math.random(90,110))
      ParticleEffect("brutus_burning_footstep", self:GetAttachment(13).Pos, self:GetAttachment(13).Ang, nil)
    end
    -- Walking & Running
      self:SequenceEvent("WalkAll",24/56,function(self)self:EmitSound("soc/sfx_step_"..math.random(0,2)..".mp3", 85, math.random(90,110))ParticleEffect("brutus_burning_footstep", self:GetAttachment(13).Pos, self:GetAttachment(13).Ang, nil)end) -- right footstep walk
      self:SequenceEvent("WalkAll",51/56,function(self)self:EmitSound("soc/sfx_step_"..math.random(0,2)..".mp3", 85, math.random(90,110)) ParticleEffect("brutus_burning_footstep", self:GetAttachment(12).Pos, self:GetAttachment(12).Ang, nil)end) -- left footstep walk
      self:SequenceEvent("RunAll",7/25,function(self)self:EmitSound("soc/sfx_run_"..math.random(0,3)..".mp3", 105, math.random(90,110))ParticleEffect("brutus_burning_footstep", self:GetAttachment(13).Pos, self:GetAttachment(13).Ang, nil)end) -- right footstep run
      self:SequenceEvent("RunAll",19/25,function(self)self:EmitSound("soc/sfx_run_"..math.random(0,3)..".mp3", 105, math.random(90,110))ParticleEffect("brutus_burning_footstep", self:GetAttachment(12).Pos, self:GetAttachment(12).Ang, nil)end) -- left footstep run
    -- Idle2Stand Footsteps
      self:SequenceEvent("Idle2Stand",14/117,function(self)self:EmitSound("soc/sfx_step_"..math.random(0,2)..".mp3", 65, math.random(90,110))end)
      self:SequenceEvent("Idle2Stand",26/117,function(self)self:EmitSound("soc/sfx_step_"..math.random(0,2)..".mp3", 65, math.random(90,110))end)
      self:SequenceEvent("Idle2Stand",64/117,function(self)self:EmitSound("soc/sfx_step_"..math.random(0,2)..".mp3", 65, math.random(90,110))end)
      self:SequenceEvent("Idle2Stand",106/117,function(self)self:EmitSound("soc/sfx_step_"..math.random(0,2)..".mp3", 65, math.random(90,110))end)
    -- Sword Grabbing
      self:SequenceEvent("Idle2Stand",18/117,function(self)self:EmitSound("soc/grab_sword_0.mp3", 65, math.random(90,110))end)
      self:SequenceEvent("Idle2Stand",81/117,function(self)self:EmitSound("soc/pull_sword_out_pre.mp3", 90, math.random(95,105))end)
      self:SequenceEvent("Idle2Stand",93/117,function(self)util.ScreenShake(self:GetPos(),300,500,0.7,500)end)
      self:SequenceEvent("Idle2Stand",95/117,function(self)self:EmitSound("soc/pull_sword_out_metal_pre.mp3", 90, math.random(95,105))end)
      self:SequenceEvent("Idle2Stand",96/117,function(self)ParticleEffect("strider_impale_ground", self:GetAttachment(7).Pos, self:GetAttachment(7).Ang, nil)end)
      self:SequenceEvent("Idle2Stand",95/117,function(self)util.ScreenShake(self:GetPos(),5000,500,0.3,500)end)
    
    -- Dodging
      -- Dodge Right
        self:SequenceEvent("Dodge_Right",11/55,function(self)self:EmitSound("soc/sfx_step_skid_"..math.random(0,2)..".mp3")ParticleEffectAttach("brutus_burning_footstep", PATTACH_POINT_FOLLOW, self, 12)end)
        self:SequenceEvent("Dodge_Right",11/55,function(self)self:EmitSound("soc/sfx_step_"..math.random(0,2)..".mp3")end)
        self:SequenceEvent("Dodge_Right",15/55,function(self)self:EmitSound("soc/sfx_step_"..math.random(0,2)..".mp3")end)
        self:SequenceEvent("Dodge_Right",15/55,function(self)ParticleEffectAttach("brutus_burning_footstep", PATTACH_POINT_FOLLOW, self, 13)end)
        self:SequenceEvent("Dodge_Right",46/55,function(self)self:EmitSound("soc/sfx_step_"..math.random(0,2)..".mp3")end)
        self:SequenceEvent("Dodge_Right",46/55,function(self)ParticleEffectAttach("brutus_burning_footstep", PATTACH_POINT_FOLLOW, self, 12)end)
        self:SequenceEvent("Dodge_Right",54/55,function(self)self:EmitSound("soc/sfx_step_"..math.random(0,2)..".mp3")end)
        self:SequenceEvent("Dodge_Right",54/55,function(self)ParticleEffectAttach("brutus_burning_footstep", PATTACH_POINT_FOLLOW, self, 13)end)
      -- Dodge Left
        self:SequenceEvent("Dodge_Left",11/60,function(self)self:EmitSound("soc/sfx_step_skid_"..math.random(0,2)..".mp3")ParticleEffectAttach("brutus_burning_footstep", PATTACH_POINT_FOLLOW, self, 13)end)
        self:SequenceEvent("Dodge_Left",11/60,function(self)self:EmitSound("soc/sfx_step_"..math.random(0,2)..".mp3")end)
        self:SequenceEvent("Dodge_Left",15/60,function(self)self:EmitSound("soc/sfx_step_"..math.random(0,2)..".mp3")end)
        self:SequenceEvent("Dodge_Left",15/60,function(self)ParticleEffectAttach("brutus_burning_footstep", PATTACH_POINT_FOLLOW, self, 12)end)
        self:SequenceEvent("Dodge_Left",50/60,function(self)self:EmitSound("soc/sfx_step_"..math.random(0,2)..".mp3")end)
        self:SequenceEvent("Dodge_Left",50/60,function(self)ParticleEffectAttach("brutus_burning_footstep", PATTACH_POINT_FOLLOW, self, 13)end)
        self:SequenceEvent("Dodge_Left",58/60,function(self)self:EmitSound("soc/sfx_step_"..math.random(0,2)..".mp3")end)
        self:SequenceEvent("Dodge_Left",58/60,function(self)ParticleEffectAttach("brutus_burning_footstep", PATTACH_POINT_FOLLOW, self, 12)end)
      -- Dodge Backward
        self:SequenceEvent("Dodge_Backward",11/60,function(self)self:EmitSound("soc/sfx_step_skid_"..math.random(0,2)..".mp3")ParticleEffectAttach("brutus_burning_footstep", PATTACH_POINT_FOLLOW, self, 13)end)
        self:SequenceEvent("Dodge_Backward",11/60,function(self)self:EmitSound("soc/sfx_step_"..math.random(0,2)..".mp3")end)
        self:SequenceEvent("Dodge_Backward",18/60,function(self)self:EmitSound("soc/sfx_step_"..math.random(0,2)..".mp3")end)
        self:SequenceEvent("Dodge_Backward",18/60,function(self)ParticleEffectAttach("brutus_burning_footstep", PATTACH_POINT_FOLLOW, self, 12)end)
        self:SequenceEvent("Dodge_Backward",57/60,function(self)self:EmitSound("soc/sfx_step_"..math.random(0,2)..".mp3")end)
        self:SequenceEvent("Dodge_Backward",57/60,function(self)ParticleEffectAttach("brutus_burning_footstep", PATTACH_POINT_FOLLOW, self, 12)end)
      -- Dodge Forward
        self:SequenceEvent("Dodge_Forward",12/55,function(self)self:EmitSound("soc/sfx_jump.mp3")end)
        self:SequenceEvent("Dodge_Forward",18/55,function(self)self:EmitSound("soc/sfx_step_"..math.random(0,2)..".mp3", 85)end)
        self:SequenceEvent("Dodge_Forward",18/55,function(self)ParticleEffectAttach("brutus_burning_footstep", PATTACH_POINT_FOLLOW, self, 12)end)
        self:SequenceEvent("Dodge_Forward",25/55,function(self)self:EmitSound("soc/sfx_step_"..math.random(0,2)..".mp3", 85)end)
        self:SequenceEvent("Dodge_Forward",25/55,function(self)ParticleEffectAttach("brutus_burning_footstep", PATTACH_POINT_FOLLOW, self, 13)end)
        self:SequenceEvent("Dodge_Forward",38/55,function(self)self:EmitSound("soc/sfx_step_"..math.random(0,2)..".mp3", 85)end)
        self:SequenceEvent("Dodge_Forward",38/55,function(self)ParticleEffectAttach("brutus_burning_footstep", PATTACH_POINT_FOLLOW, self, 12)end)
      -- Dodge Backflip
        self:SequenceEvent("Dodge_Backflip",8/60,function(self)self:EmitSound("soc/sfx_step_"..math.random(2)..".mp3",65)end)
        self:SequenceEvent("Dodge_Backflip",28/60,function(self)self:EmitSound("soc/sfx_step_"..math.random(2)..".mp3",85)ParticleEffectAttach("brutus_burning_footstep", PATTACH_POINT_FOLLOW, self, 13)end)
        self:SequenceEvent("Dodge_Backflip",30/60,function(self)ParticleEffectAttach("brutus_burning_footstep", PATTACH_POINT_FOLLOW, self, 12)end)
        self:SequenceEvent("Dodge_Backflip",56/60,function(self)ParticleEffectAttach("brutus_burning_footstep", PATTACH_POINT_FOLLOW, self, 13)end)
        self:SequenceEvent("Dodge_BackFlip",16/60,function(self)self:EmitSound("soc/sfx_jump.mp3",85,95)end)
    -- Melee Attacks
      -- Attack0
        self:SequenceEvent("Attack0",9/84,function(self)FootstepR()end)
        self:SequenceEvent("Attack0",18/84,function(self)FootstepL()end)
        self:SequenceEvent("Attack0",26/84,function(self)FootstepR()end)
        self:SequenceEvent("Attack0",33/84,function(self)FootstepR()end)
        self:SequenceEvent("Attack0",64/84,function(self)FootstepL()end)
        self:SequenceEvent("Attack0",22/85,function(self)if self.Wpn != 1 and self.Wpn != 5 then self:EmitSound("soc/fireball_explode_0.mp3",85)end end)
        self:SequenceEvent("Attack0",23/85,function(self)self:EmitSound("soc/whoosh_"..math.random(0,2)..".mp3",65,70)end)
        for i = 23, 27 do self:SequenceEvent("Attack0",i/84,function(self)self:CinderDmgInfo()end) end
        self:SequenceEvent("Attack0",23/84,function(self)self:CinderFlameTrail()end)
      -- Attack0_1
        self:SequenceEvent("Attack0_1",15/57,function(self)if self.Wpn != 1 and self.Wpn != 5 then self:EmitSound("soc/fireball_explode_0.mp3",85)end end)
        self:SequenceEvent("Attack0_1",16/57,function(self)self:EmitSound("soc/whoosh_"..math.random(0,2)..".mp3",65,70)end)
        self:SequenceEvent("Attack0_1",20/57,function(self)self:CinderFlameTrailImproved(0.2, self.WpnN, "f")end)
        for i = 18,21 do self:SequenceEvent("Attack0_1",i/57,function(self)self:CinderDamageInfo(7, 11, lance, 60, DMG_BLAST, 40)end) end
      -- Attack5_2
        self:SequenceEvent("Attack5_2",16/87,function(self)self:EmitSound("soc/sfx_step_skid_"..math.random(0,2)..".mp3")ParticleEffectAttach("brutus_burning_footstep", PATTACH_POINT_FOLLOW, self, 12)end)
        self:SequenceEvent("Attack5_2",18/87,function(self)FootstepR()end)
        for i = 36, 45 do self:SequenceEvent("Attack5_2",i/87,function(self)self:CinderDmgInfo()end) end
        self:SequenceEvent("Attack5_2",34/85,function(self)self:EmitSound("soc/fireball_explode_0.mp3",85)end)
        self:SequenceEvent("Attack5_2",36/84,function(self)self:CinderFlameTrailR()self:EmitSound("soc/whoosh_"..math.random(0,2)..".mp3",80)end)
        self:SequenceEvent("Attack5_2",41/84,function(self)FootstepR()end)
        self:SequenceEvent("Attack5_2",46/84,function(self)FootstepL()end)
        self:SequenceEvent("Attack5_2",68/84,function(self)FootstepR()end)
        self:SequenceEvent("Attack5_2",75/84,function(self)FootstepL()end)
      -- Attack6_2
        self:SequenceEvent("Attack6_2",15/87,function(self)self:EmitSound("soc/sfx_step_skid_"..math.random(0,2)..".mp3")ParticleEffectAttach("brutus_burning_footstep", PATTACH_POINT_FOLLOW, self, 13)end)
        self:SequenceEvent("Attack6_2",18/87,function(self)FootstepL()end)
        self:SequenceEvent("Attack6_2",37/85,function(self)self:EmitSound("soc/fireball_explode_0.mp3",85)end)
        self:SequenceEvent("Attack6_2",39/85,function(self)FootstepL()end)
        self:SequenceEvent("Attack6_2",40/87,function(self)self:CinderFlameTrailL()self:EmitSound("soc/whoosh_"..math.random(0,2)..".mp3",85)end)
        for i = 40, 45 do self:SequenceEvent("Attack6_2",i/87,function(self)self:CinderDmgInfo()end) end
        self:SequenceEvent("Attack6_2",45/85,function(self)FootstepR()end)
        self:SequenceEvent("Attack6_2",69/85,function(self)FootstepL()end)
        self:SequenceEvent("Attack6_2",76/85,function(self)FootstepR()end)
      -- Attack10_5
        self:SequenceEvent("Attack10_5",15/85,function(self)ParticleEffect("ds3_bossfs_land", self:GetAttachment(13).Pos, self:GetAttachment(13).Ang,nil)end)
        self:SequenceEvent("Attack10_5",17/85,function(self)self:EmitSound("soc/sfx_jump.mp3",85)ParticleEffect("ds3_bossfs_land", self:GetAttachment(12).Pos, self:GetAttachment(12).Ang, nil)end)
        self:SequenceEvent("Attack10_5",30/85,function(self)self:EmitSound("soc/fireball_explode_0.mp3",85)end)
        self:SequenceEvent("Attack10_5",32/85,function(self)self:EmitSound("soc/whoosh_"..math.random(0,2)..".mp3",85)end)
        self:SequenceEvent("Attack10_5",32/85,function(self)self:CinderFlameTrail()end)
        self:SequenceEvent("Attack10_5",33/85,function(self)FootstepL()ParticleEffect("strider_wall_smash", self:GetAttachment(12).Pos, self:GetAttachment(12).Ang,nil) ParticleEffect("strider_small_spray", self:GetAttachment(12).Pos, self:GetAttachment(12).Ang,nil)end)
        self:SequenceEvent("Attack10_5",35/85,function(self)FootstepR()end)
        self:SequenceEvent("Attack10_5",73/85,function(self)FootstepL()end)
        self:SequenceEvent("Attack10_5",82/85,function(self)FootstepR()end)
        for i = 34, 36 do self:SequenceEvent("Attack10_5",i/84,function(self)self:CinderDmgInfo()end) end
      -- Attack11_5
        self:SequenceEvent("Attack11_5",9/100,function(self)FootstepR()end)
        self:SequenceEvent("Attack11_5",15/100,function(self)FootstepL()end)
        self:SequenceEvent("Attack11_5",44/100,function(self)FootstepR()end)
        self:SequenceEvent("Attack11_5",82/100,function(self)FootstepL()end)
        self:SequenceEvent("Attack11_5",92/100,function(self)FootstepR()end)
        self:SequenceEvent("Attack11_5",21/100,function(self)self:EmitSound("soc/grab_sword_"..math.random(3)..".mp3",65,math.random(90,110))end)
        self:SequenceEvent("Attack11_5",41/100,function(self)self:EmitSound("soc/fireball_explode_0.mp3",85)end)
        self:SequenceEvent("Attack11_5",42/100,function(self)self:CinderFlameTrail()self:EmitSound("soc/whoosh_heavy_0.mp3",75)end)
        for i = 43,47 do self:SequenceEvent("Attack11_5",i/47,function(self)self:CinderDmgInfo()end) end
        self:SequenceEvent("Attack11_5",46/100,function(self)
          self:EmitSound("aw/c304006501.mp3",105,math.random(80,90))
          ParticleEffect("ds3_watcher_impact", self:GetAttachment(7).Pos, self:GetAttachment(7).Ang,nil)
          ParticleEffect("strider_impale_ground", self:GetAttachment(7).Pos, self:GetAttachment(7).Ang, nil)
          for k,v in pairs(ents.FindInSphere(self:GetAttachment(7).Pos, 128)) do
            local slam = DamageInfo()
              slam:SetDamage(60)
              slam:SetDamageType(DMG_BLAST)
              slam:SetAttacker(self)
              slam:SetInflictor(self)
              v:TakeDamageInfo(slam) 
          end end)
        self:SequenceEvent("Attack11_5",46/100,function(self)self:EmitSound("soc/weapon_impact_heavy_"..math.random(0,1)..".mp3", 90, math.random(95,105))end)
        self:SequenceEvent("Attack11_5",46/100,function(self)util.ScreenShake(self:GetPos(),5000,500,0.3,500)end)
      -- Attack 12_5
        self:SequenceEvent("Attack12_5",28/85,function(self)self:EmitSound("soc/fireball_explode_0.mp3",85)end)
        self:SequenceEvent("Attack12_5",30/85,function(self)self:CinderFlameTrail()self:EmitSound("soc/whoosh_"..math.random(0,2)..".mp3",85)end)
        for i = 31,49 do self:SequenceEvent("Attack12_5",i/85,function(self)self:CinderDmgInfo()end) end
        self:SequenceEvent("Attack12_5",16/85,function(self)FootstepL()end)
        self:SequenceEvent("Attack12_5",32/85,function(self)FootstepR()end)
        self:SequenceEvent("Attack12_5",70/85,function(self)FootstepL()end)
        self:SequenceEvent("Attack12_5",73/85,function(self)FootstepR()end)
      -- Attack 14_2
        self:SequenceEvent("Attack14_2",8/60,function(self)FootstepL()end)
        self:SequenceEvent("Attack14_2",13/60,function(self)FootstepR()end)
        self:SequenceEvent("Attack14_2",19/60,function(self)FootstepR()end)
        self:SequenceEvent("Attack14_2",45/60,function(self)FootstepL()end)
        self:SequenceEvent("Attack14_2",12/60,function(self)self:EmitSound("soc/fireball_explode_0.mp3",85)end)
        self:SequenceEvent("Attack14_2",14/60,function(self)self:CinderFlameTrailL()self:EmitSound("soc/whoosh_"..math.random(0,2)..".mp3",85)end)
        for i = 14,29 do self:SequenceEvent("Attack14_2",i/60,function(self)self:CinderDmgInfo()end) end
      -- Attack 19_5 
        self:SequenceEvent("Attack19_5",11/120,function(self)self:EmitSound("soc/sfx_jump.mp3",90)ParticleEffectAttach("strider_wall_smash", PATTACH_POINT, self ,12)ParticleEffectAttach("strider_small_spray", PATTACH_POINT, self ,12)end)
        self:SequenceEvent("Attack19_5",35/120,function(self)self:EmitSound("soc/fireball_explode_0.mp3",85)end)
        self:SequenceEvent("Attack19_5",38/120,function(self)self:CinderFlameTrailL()self:EmitSound("soc/whoosh_"..math.random(0,2)..".mp3",85,85)end)
        self:SequenceEvent("Attack19_5",43/120,function(self)self:EmitSound("soc/sfx_down.mp3",90)self:EmitSound("soc/sfx_step_skid_"..math.random(2)..".mp3")end)
        self:SequenceEvent("Attack19_5",46/120,function(self)ParticleEffect("strider_wall_smash", self:GetAttachment(13).Pos, self:GetAttachment(13).Ang, nil)ParticleEffect("gael_dirt_kickup_dir_bck", self:GetAttachment(13).Pos, self:GetAttachment(13).Ang, nil)end)
        self:SequenceEvent("Attack19_5",51/120,function(self)ParticleEffect("brutus_burning_footstep", self:GetAttachment(13).Pos, self:GetAttachment(13).Ang, nil)ParticleEffect("brutus_burning_footstep", self:GetAttachment(12).Pos, self:GetAttachment(12).Ang, nil)end)
        for i = 38,46 do self:SequenceEvent("Attack19_5",i/120,function(self)self:CinderDmgInfo()end) end
        self:SequenceEvent("Attack19_5",95/120,function(self)FootstepL()end)
        self:SequenceEvent("Attack19_5",103/120,function(self)FootstepR()end)
      -- Attack 22
        self:SequenceEvent("Attack22",8/100,function(self)FootstepR()self:EmitSound("soc/sfx_run_"..math.random(1,3)..".mp3",75,math.random(90,105))end)
        self:SequenceEvent("Attack22",12/100,function(self)FootstepL()self:EmitSound("soc/sfx_run_"..math.random(1,3)..".mp3",75,math.random(90,105))end)
        self:SequenceEvent("Attack22",24/100,function(self)FootstepR()self:EmitSound("soc/sfx_run_"..math.random(1,3)..".mp3",75,math.random(90,105))end)
        self:SequenceEvent("Attack22",64/100,function(self)FootstepL()self:EmitSound("soc/sfx_run_"..math.random(1,3)..".mp3",65,math.random(90,105))end)
        self:SequenceEvent("Attack22",93/100,function(self)FootstepR()end)
        self:SequenceEvent("Attack22",19/100,function(self)self:EmitSound("soc/fireball_explode_0.mp3",85)end)
        self:SequenceEvent("Attack22",21/100,function(self)self:CinderFlameTrail()self:EmitSound("soc/whoosh_"..math.random(0,2)..".mp3",85)end)
        self:SequenceEvent("Attack22",22/100,function(self)util.ScreenShake(self:GetPos(),5000,500,0.3,500)self:EmitSound("aw/c30400650"..math.random(1,2)..".mp3",95,math.random(90,110))ParticleEffect("ds3_watcher_impact", self:GetAttachment(7).Pos, self:GetAttachment(7).Ang,nil)ParticleEffect("strider_impale_ground", self:GetAttachment(7).Pos, self:GetAttachment(7).Ang, nil)end)
        for i = 21,26 do self:SequenceEvent("Attack22",i/100,function(self)self:CinderDmgInfo()end) end
      -- Attack 23_1
        self:SequenceEvent("Attack23_1",14/113,function(self)FootstepR()end)
        self:SequenceEvent("Attack23_1",53/113,function(self)FootstepL()end)
        self:SequenceEvent("Attack23_1",60/113,function(self)FootstepR()end)
        self:SequenceEvent("Attack23_1",65/113,function(self)FootstepL()end)
        self:SequenceEvent("Attack23_1",74/113,function(self)FootstepR()end)
        self:SequenceEvent("Attack23_1",103/113,function(self)FootstepL()end)
        self:SequenceEvent("Attack23_1",43/113,function(self)self:EmitSound("soc/fireball_explode_0.mp3",85)end)
        self:SequenceEvent("Attack23_1",45/113,function(self)self:CinderFlameTrailLong()self:EmitSound("soc/whoosh_heavy_0.mp3",85)end)
        self:SequenceEvent("Attack23_1",48/113,function(self)ParticleEffectAttach("ds3_watcher_dirt_circular", PATTACH_ABSORIGIN, self, 12)end)
        self:SequenceEvent("Attack23_1",51/113,function(self)ParticleEffectAttach("ds3_watcher_dirt_circular", PATTACH_ABSORIGIN, self, 12)end)
        self:SequenceEvent("Attack23_1",64/113,function(self)ParticleEffectAttach("ds3_watcher_dirt_circular", PATTACH_ABSORIGIN, self, 12)end)
        for i = 45,71 do self:SequenceEvent("Attack23_1",i/113,function(self)self:CinderDmgInfo()end) end
    -- Misc
      -- Miracles
        -- Healing
          self:Timer(5.5,self.StopParticles)
          self:SequenceEvent("Attack8_1",8/145,function(self)ParticleEffect("brutus_burning_footstep", self:GetAttachment(12).Pos, self:GetAttachment(12).Ang, nil)end)
          self:SequenceEvent("Attack8_1",18/145,function(self)ParticleEffect("brutus_burning_footstep", self:GetAttachment(13).Pos, self:GetAttachment(13).Ang, nil)end)
          self:SequenceEvent("Attack8_1",33/145,function(self)
            ParticleEffectAttach("ds3_cinder_heal_cast", PATTACH_POINT_FOLLOW, self, 4)
            self:EmitSound("soc/miracle_heal_pre1.mp3", 85)
            ParticleEffectAttach("ds3_cinder_heal_aura", PATTACH_POINT_FOLLOW, self, 2)
          end)
          self:SequenceEvent("Attack8_1",37/145,function(self)ParticleEffectAttach("ds3_cinder_heal", PATTACH_ABSORIGIN, self, 0)end)
          self:SequenceEvent("Attack8_1",35/145,function(self)self:SetHealth(self:Health()+125)end)
          self:SequenceEvent("Attack8_1",45/145,function(self)self:SetHealth(self:Health()+125)end)
          self:SequenceEvent("Attack8_1",55/145,function(self)self:SetHealth(self:Health()+125)end)
          self:SequenceEvent("Attack8_1",65/145,function(self)self:SetHealth(self:Health()+125)end)
          self:SequenceEvent("Attack8_1",75/145,function(self)self:SetHealth(self:Health()+125)end)
          self:SequenceEvent("Attack8_1",85/145,function(self)self:SetHealth(self:Health()+125)end)
          self:SequenceEvent("Attack8_1",95/145,function(self)self:SetHealth(self:Health()+125)end)
          self:SequenceEvent("Attack8_1",105/145,function(self)self:SetHealth(self:Health()+125)end)
      -- Pyromancy
        -- Combustion
          self:SequenceEvent("Attack20_2",23/76,function(self)self:EmitSound("soc/sfx_step_"..math.random(0,2)..".mp3", 65, math.random(90,110))ParticleEffect("brutus_burning_footstep", self:GetAttachment(12).Pos, self:GetAttachment(12).Ang, nil)end)
          self:SequenceEvent("Attack20_2",29/76,function(self)
            ParticleEffectAttach("ds3_watcher_fire_impact", PATTACH_POINT, self, 4)
            self:Attack({
              damage = math.random(65,85),
              range= 300,
              type = DMG_BURN,
              viewpunch = Angle(20, math.random(-10, 10), 0),
            })
            self:EmitSound("soc/combustion_1.mp3")end)
          self:SequenceEvent("Attack20_2",56/76,function(self)
          self:SequenceEvent("Attack20_2",62/76,function(self)self:EmitSound("soc/sfx_step_"..math.random(0,2)..".mp3", 65, math.random(90,110))ParticleEffect("brutus_burning_footstep", self:GetAttachment(12).Pos, self:GetAttachment(12).Ang, nil)end)
          self:StopParticles() end)
        -- Fireball (Attack21_2)
      -- Other Magic
        -- Poison Breath (Attack23_2)
      -- Death
        self:SequenceEvent("Death",3/350,function(self)
          self:EmitSound("soc/vox_pain_"..math.random(0,4)..".mp3")
          self:EmitSound("soc/sfx_step_"..math.random(0,2)..".mp3") 
          ParticleEffectAttach("brutus_burning_footstep", PATTACH_POINT_FOLLOW, self, 12)
        end)
        self:SequenceEvent("Death",33/350,function(self)self:EmitSound("soc/vox_death.mp3")end)
        self:SequenceEvent("Death",102/350,function(self)self:EmitSound("soc/sfx_knee.mp3")end)
        self:SequenceEvent("Death",113/350,function(self)self:EmitSound("soc/grab_sword_0.mp3")end)
        self:SequenceEvent("Death",215/350,function(self)
          self:EmitSound("soc/grab_sword_0.mp3", 100, math.random(90,100))
          self:EmitSound("soc/pickup_sword_2.mp3")
        end)
        self:SequenceEvent("Death",248/350,function(self)
          ParticleEffectAttach("dskart_death",PATTACH_POINT_FOLLOW,self,0)
          self:EmitSound("shared/bossout.mp3")
        end)
        self:SequenceEvent("Death",312/350,function(self)self:SetNoDraw(true)util.ScreenShake(self:GetPos(),5000,500,0.3,500)end)
      -- Kick
        -- foot effects
          self:SequenceEvent("Attack21_5", 22/90,function(self)
            self:EmitSound("soc/sfx_step_"..math.random(0,2)..".mp3")
            ParticleEffectAttach("brutus_burning_footstep", PATTACH_POINT_FOLLOW, self, 12)end)
          self:SequenceEvent("Attack21_5", 31/90,function(self)
            self:EmitSound("soc/sfx_step_"..math.random(0,2)..".mp3")
            ParticleEffectAttach("brutus_burning_footstep", PATTACH_POINT_FOLLOW, self, 13)end)
          self:SequenceEvent("Attack21_5", 62/90,function(self)
            self:EmitSound("soc/sfx_step_"..math.random(0,2)..".mp3", 65)
            ParticleEffectAttach("brutus_burning_footstep", PATTACH_POINT_FOLLOW, self, 13)end)
          self:SequenceEvent("Attack21_5", 75/90,function(self)
            self:EmitSound("soc/sfx_step_"..math.random(0,2)..".mp3", 65)
            ParticleEffectAttach("brutus_burning_footstep", PATTACH_POINT_FOLLOW, self, 12)end)
        -- the kick itself
          self:SequenceEvent("Attack21_5", 22/90,function(self)
            self:EmitSound("soc/whoosh_1.mp3", 75, 30)end)
          self:SequenceEvent("Attack21_5", 25/90,function(self)
            for k,door in pairs(ents.FindInSphere(self:LocalToWorld(Vector(0,0,75)), 35)) do
              if IsValid(door) and door:GetClass() == "prop_door_rotating" then
                door:EmitSound("roach/ds1/fsb.frpg_m10/door_wood_k.wav.mp3",100)
                door:SetNotSolid(true)
                door:Fire("setspeed",550)
                door:Fire("openawayfrom",self:GetName())
                self:Timer(150/30,function()
                  door:Fire("setspeed",100)
                  door:Fire("close")
                  self:Timer(0.2,function()door:SetNotSolid(false)end)
                end)
                ParticleEffectAttach("brutus_burning_footstep", PATTACH_POINT_FOLLOW, self, 13)
              elseif IsValid(door) and string.find(door:GetClass(),"door") then
                door:EmitSound("roach/ds1/fsb.frpg_m10/door_wood_k.wav.mp3",110)
                door:Fire("open")
                ParticleEffectAttach("brutus_burning_footstep", PATTACH_POINT_FOLLOW, self, 13)
              end end 
            for k,v in pairs(ents.FindInSphere(self:GetAttachment(13).Pos, 30)) do
              local bruh = DamageInfo()
              bruh:SetDamage(50)
              bruh:SetDamageType(DMG_BLAST)
              bruh:SetAttacker(self)
              bruh:SetInflictor(self)
              v:TakeDamageInfo(bruh) 
              ParticleEffectAttach("brutus_burning_footstep", PATTACH_POINT_FOLLOW, self, 13) end end)
  end
  -- Various tables.
  CinderWeapons ={
    ["unarm"]="Unarmed",
    ["strsword"]="Straight Sword",  
    ["lance"]="Lance",
    ["crvsword"]="Curved Sword",
    ["staff"]="Staff",
    ["grtsword"]="Greatsword"}
  CinderMagic ={
    -- Pyromancy
    ["cmbust"]="Combustion",
    ["fball"]="Fireball",
    -- Miracles
    ["pwithin"]="Power Within",
    ["lstake"]="Lightning Stake",
    ["sspear"]="Sunlight Spear",
    ["heal"]="Bountiful Light"}
  CinderMst ={
    ["ms1atk"]="Close Range",
    ["ms2atk"]="Medium Range",
    ["ms3atk"]="Long Range"}
  ms1atk = { -- close range
    "Attack0",
    "Attack0_1",
    "Attack11_5",
    "Attack12_5",
    "Attack22"}
  ms2atk = { -- medium range
    "Attack10_5",
    "Attack23_1"}
  ms3atk = { -- long range
    "Attack19_5"}
  function ENT:POSCinderWeaponSelection(num, text)
    if self.Wpn == num then return end
    if self:IsPossessed() then self:GetPossessor():SendLua("surface.PlaySound('common/wpn_hudoff.wav')") end
    self.Wpn = num
    self.WpnN = text
    self:SetBodygroup(1,num-1)
    self:SetSelectedWeapon(CinderWeapons[self.WpnN]) 
  end

  function ENT:POSCinderMagicSelection(num, text)
    if self.Magic == num then return end
    self:GetPossessor():SendLua("surface.PlaySound('common/wpn_hudoff.wav')")
    self.Magic = num
    self.MagicN = text
    self:SetSelectedMagic(CinderWeapons[self.WpnN]) 
  end 
  
  function ENT:CinderMovesetSelection(num,text)
    if self.Mst == num then return end
    self:GetPossessor():SendLua("surface.PlaySound('common/wpn_hudoff.wav')")
    self.Mst = num
    self.MstN = text
    self:SetSelectedMoveset(CinderMst[self.MstN]) 
  end

  function ENT:CinderStandUp()
    if !self.IsSitting then return end
    self:PlaySequenceAndMove("Idle2Stand", 1, self:FaceEnemy())
    self.IdleAnimation = "Idle"
    self.WalkAnimation = "WalkAll"
    self.RunAnimation = "RunAll"
    self.IsSitting = false 
  end
  
  function ENT:ClearAttackedEnts()
    self.AttackedEntities = {}
  end

  function ENT:CanDodge()
    return !self.IsSitting
  end
  function ENT:CanAtk()
    return !self.IsSitting
  end
  function ENT:RandomAtk()
    atks = {
      "Attack0", -- sword swipe left
      --"Attack10_5", -- jump hit
      "Attack12_5", -- heavy hit
      "Attack22", -- slice ground up
      "Attack11_5" -- sword slam into ground
    }
    self:PlaySequenceAndMove(table.Random(ms1atk), 1, self.FaceEnemy)
  end
  function ENT:CustomInitialize() 
    self:SetDefaultRelationship(D_NU)
    self:SetBodygroup(1,1)
    self.IsSitting = true
    self.IdleAnimation = "Idle_Sit"

      --self.IsSitting = false
      --self.IdleAnimation = "Idle"
      --self.WalkAnimation = "WalkAll"
      --self.RunAnimation = "RunAll"

    self.Wpn = 2
		self.WpnN = "Straight Sword"
    self.Magic = 0
    self.MagicN = "N/A"
    self.Mst = 1
    self.MstN = "Close Range"
    self.AttackedEntities = {}
    self:SetSelectedMagic(self.MagicN)
    self:SetSelectedWeapon(self.WpnN)
    self:SetSelectedMoveset(self.MstN)
    self:SequenceInitialize()
  end
  
  function ENT:ShouldRun() 
    if self:HasEnemy() and not self:IsInRange(self:GetEnemy(),self.RangeAttackRange*1.3) then return true end
  end

  function ENT:CustomThink() 
    -- looking at target
      if self:IsPossessed() then
        self:DirectPoseParametersAt(self:PossessorTrace().HitPos, "aim_pitch", "aim_yaw", self:EyePos())
      elseif self:HasEnemy() and self:IsInSight(self:GetEnemy()) then
        self:DirectPoseParametersAt(self:GetEnemy():GetPos(), "aim_pitch", "aim_yaw", self:EyePos())
      else self:DirectPoseParametersAt(nil, "aim_pitch", "aim_yaw", self:EyePos()) end
    -- breathing
      if self:GetCooldown("CinderIdle") <= 0 then
        self:EmitSound("soc/vox_idle_"..math.random(1)..".mp3", 60, math.random(90,110))
        self:SetCooldown("CinderIdle", math.random(2.6,3.2))
      end
  end
  
  function ENT:OnCombineBall(ball)
    local dmg = DamageInfo()
    dmg:SetAttacker(IsValid(ball:GetOwner()) and ball:GetOwner() or ball)
    dmg:SetInflictor(ball)
    dmg:SetDamageType(DMG_BLAST)
    dmg:SetDamage(500)
    
    self:TakeDamageInfo(dmg)
    ball:Fire("explode", 0)
    
    return true
  end
  -- These hooks are called when the nextbot has an enemy (inside the coroutine)
  function ENT:OnMeleeAttack(enemy) 
    if self.IsSitting then self:CinderStandUp() end
    if self:GetCooldown("CloseCD") >0 then return end
    self:SetCooldown("CloseCD",math.random(2,3))
    self:RandomAtk()
  end
  function ENT:OnRangeAttack(enemy) 
    if self.IsSitting then self:CinderStandUp() end
    if self:GetCooldown("RangedCD") >0 then return end
    if self:IsInRange(self:GetEnemy(),self.RangeAttackRange-150) then
      self:SetCooldown("RangedCD",math.random(10,25))
      self:PlaySequenceAndMove(table.Random(ms2atk), 1, self.FaceEnemy)
    elseif self:IsInRange(self:GetEnemy(),self.RangeAttackRange) then
      self:SetCooldown("RangedCD",math.random(15,30))
      self:PlaySequenceAndMove(table.Random(ms3atk), 1, self.FaceEnemy)
    end
  end
  function ENT:OnChaseEnemy(enemy) end
  function ENT:OnAvoidEnemy(enemy) end

  -- These hooks are called while the nextbot is patrolling (inside the coroutine)
  function ENT:OnReachedPatrol(pos)
    self:Wait(math.random(4, 9))
  end 
  function ENT:OnPatrolUnreachable(pos) end
  function ENT:OnPatrolling(pos) end

  -- These hooks are called when the current enemy changes (outside the coroutine)
  function ENT:OnNewEnemy(enemy) 
  end
  function ENT:OnEnemyChange(oldEnemy, newEnemy) end
  function ENT:OnLastEnemy(enemy) end

  -- Those hooks are called inside the coroutine
  function ENT:OnSpawn()
  end
  function ENT:OnIdle()
    if self.IsSitting then return false end
    self:AddPatrolPos(self:RandomPos(1500))
  end

  -- Called outside the coroutine
  function ENT:OnTakeDamage(dmg, hitgroup)
    self:SpotEntity(dmg:GetAttacker())
    if hg==1 then dmg:ScaleDamage(100) end
  end
  function ENT:OnFatalDamage(dmg, hitgroup) end
  
  -- Called inside the coroutine
  function ENT:OnTookDamage(dmg, hitgroup) 
    local a = dmg:GetAttacker()
    if self.IsSitting then 
      self:CinderStandUp() 
      self:AddEntityRelationship(a, D_HT,99)
      self:SpotEntity(a)
    elseif !self.IsSitting then
      self:AddEntityRelationship(a, D_HT)
      self:SpotEntity(a)
    end
  end
  function ENT:OnDeath(dmg, hitgroup) 
    self:PlaySequenceAndMove("Death") 
  end
  function ENT:OnDowned(dmg, hitgroup) end

else

  function ENT:CustomInitialize() end
  function ENT:CustomThink() end
  function ENT:CustomDraw() end
end

if CLIENT then
ENT.RenderGroup = RENDERGROUP_BOTH
ENT.HUDMatPos_Main = Material("hud/ds1/boss_hpbar.png", "smooth unlitgeneric")
ENT.HUDMat_Bar = Material("hud/ds1/boss_hpbar_red.png", "smooth unlitgeneric")
ENT.BOGOSBINTED = Material("hud/ds1/satisfaction_-_the_texture.png", "smooth unlitgeneric")
ENT.HUDMat_Bar2 = Material("hud/ds1/boss_hpbar_ylw.png", "smooth unlitgeneric")
  function ENT:PossessionHUD()
    --[[render.SetMaterial(self.BOGOSBINTED)
    render.DrawScreenQuadEx(
      128, 
      256, 
      self.HUDMatPos_Main:Width()*1.3,
			self.HUDMatPos_Main:Height()*1.3)]]
    local hp = math.Round(self:Health())
    local hpmax = self.SpawnHealth
    local widthscale = (hp/hpmax)
    render.SetMaterial(self.HUDMatPos_Main)
		render.DrawScreenQuadEx(
			35,
      35,
			self.HUDMatPos_Main:Width()*1.3,
			self.HUDMatPos_Main:Height()*1.3)
    render.SetMaterial(self.HUDMat_Bar)
		render.DrawScreenQuadEx(
			70,
			39.5,
			((self.HUDMat_Bar2:Width()*4.108)*widthscale),
			self.HUDMat_Bar2:Height()*0.77)
    draw.SimpleText( -- Current HP
      "Current Health: "..hp,
      "Dark_Font", 
      35,
      65, 
      color_white)
    draw.SimpleText( -- Current Weapon
			"Current Weapon: "..self:GetSelectedWeapon(),
			"Dark_Font", 
			35,
			95, 
			color_white)
    draw.SimpleText( -- Current Spell
      "Current Magic: ".."Combustion",
      "Dark_Font", 
      35,
      120, 
      color_white)
    draw.SimpleText( -- Current Moveset
      "Current Moveset: "..self:GetSelectedMoveset(),
      "Dark_Font", 
      35,
      145, 
      color_white)
    draw.SimpleText(
      "BOGOS BINTED",
      "Dark_Font",
      ScrW()/2-111,
      ScrH()/1.5+200,
      color_white)
    draw.SimpleText(
      "if u see this dm me racial slurs",
      "Dark_Font",
      ScrW()/2-170,
      ScrH()/1.5+225,
      color_white)
  end
end
    
function ENT:SetupDataTables()
  self:NetworkVar("Float", 0, "HP")
  self:NetworkVar("String", 0, "SelectedWeapon")
  self:NetworkVar("String", 1, "SelectedMagic")
  self:NetworkVar("String", 2, "SelectedMoveset")
end

-- DO NOT TOUCH --
AddCSLuaFile()
DrGBase.AddNextbot(ENT)