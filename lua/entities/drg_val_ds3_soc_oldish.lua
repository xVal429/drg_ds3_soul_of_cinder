if not DrGBase then return end -- return if DrGBase isn't installed
ENT.Base = "drgbase_nextbot" -- DO NOT TOUCH (obviously)

-- Misc --
ENT.PrintName = "Soul of Cinder (Old)"
ENT.Category = "Val's Nextbots - Archives"
ENT.Models = {"models/soc/decompiled 0.68/compiled 0.68/models/SoC.mdl"}
ENT.ModelScale = 1
ENT.CollisionBounds = Vector(10, 10, 150)
ENT.BloodColor = BLOOD_COLOR_MECH
ENT.RagdollOnDeath = true

-- Stats --
ENT.SpawnHealth = 69420
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
ENT.RangeAttackRange = 0
ENT.MeleeAttackRange = 50
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

--[[ Animations --
ENT.WalkAnimation = ACT_WALK
ENT.WalkAnimRate = 1
ENT.RunAnimation = ACT_RUN
ENT.RunAnimRate = 1
ENT.IdleAnimation = ACT_IDLE
ENT.IdleAnimRate = 1
ENT.JumpAnimation = ACT_JUMP
ENT.JumpAnimRate = 1]]

-- Movements --
ENT.UseWalkframes = true
ENT.WalkSpeed = 100
ENT.RunSpeed = 200

-- Climbing --
ENT.ClimbLedges = false
ENT.ClimbLedgesMaxHeight = math.huge
ENT.ClimbLedgesMinHeight = 0
ENT.LedgeDetectionDistance = 20
ENT.ClimbProps = false
ENT.ClimbLadders = false
ENT.ClimbLaddersUp = true
ENT.LaddersUpDistance = 20
ENT.ClimbLaddersUpMaxHeight = math.huge
ENT.ClimbLaddersUpMinHeight = 0
ENT.ClimbLaddersDown = false
ENT.LaddersDownDistance = 20
ENT.ClimbLaddersDownMaxHeight = math.huge
ENT.ClimbLaddersDownMinHeight = 0
ENT.ClimbSpeed = 60
ENT.ClimbUpAnimation = ACT_CLIMB_UP
ENT.ClimbDownAnimation = ACT_CLIMB_DOWN
ENT.ClimbAnimRate = 1
ENT.ClimbOffset = Vector(0, 0, 0)

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
		--offset = Vector(0, 30, -10),
    offset = Vector(0, 30, 30),
		distance = 110
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
    ---- MAGIC SELECTION ----
    KEYPAD [+] = HEAL
    ---- WEAPON SELECTION CONTROLS ----
    KEY_4 - Unarmed         (MODE 0)
    KEY_5 - Straight Sword  (MODE 1)
    KEY_6 - Lance           (MODE 2)
    KEY_7 - Curved Sword    (MODE 3)
    KEY_8 - Staff           (MODE 4)
    KEY_9 - Greatsword      (MODE 5)
  ]]
-- Weapon Selection
  [KEY_4] = {{coroutine = true,onbuttondown = function(self)
    if self.CinderSwordMode != 0 then
      self.CinderSwordMode = 0
      self:GetPossessor():SendLua("surface.PlaySound('common/wpn_moveselect.wav')")
      self:GetPossessor():ChatPrint("Weapon: Unarmed")
      self:SetBodygroup(1,0)
      self:SetSelectedWeapon(self.CinderSwordMode)
    end end}},
  [KEY_5] = {{coroutine = true,onbuttondown = function(self)
    if self.CinderSwordMode != 1 then
      self.CinderSwordMode = 1
      self:GetPossessor():SendLua("surface.PlaySound('common/wpn_moveselect.wav')")
      self:GetPossessor():ChatPrint("Weapon: Straight Sword")
      self:SetBodygroup(1,1)
      self:SetSelectedWeapon(self.CinderSwordMode)
    end end}},
  [KEY_6] = {{coroutine = true,onbuttondown = function(self)
    if self.CinderSwordMode != 2 then
      self.CinderSwordMode = 2
      self:GetPossessor():SendLua("surface.PlaySound('common/wpn_moveselect.wav')")
      self:GetPossessor():ChatPrint("Weapon: Lance")
      self:SetBodygroup(1,2)
      self:SetSelectedWeapon(self.CinderSwordMode)
    end end}},
  [KEY_7] = {{coroutine = true,onbuttondown = function(self)
    if self.CinderSwordMode != 3 then
      self.CinderSwordMode = 3
      self:GetPossessor():SendLua("surface.PlaySound('common/wpn_moveselect.wav')")
      self:GetPossessor():ChatPrint("Weapon: Curved Sword")
      self:SetBodygroup(1,3)
    end end}},
  [KEY_8] = {{coroutine = true,onbuttondown = function(self)
    if self.CinderSwordMode != 4 then
      self.CinderSwordMode = 4
      self:GetPossessor():SendLua("surface.PlaySound('common/wpn_moveselect.wav')")
      self:GetPossessor():ChatPrint("Weapon: Staff")
      self:SetBodygroup(1,4)
      self:SetSelectedWeapon(self.CinderSwordMode)
    end end}},
  [KEY_9] = {{coroutine = true,onbuttondown = function(self)
    if self.CinderSwordMode != 5 then
      self.CinderSwordMode = 5
      self:GetPossessor():SendLua("surface.PlaySound('common/wpn_moveselect.wav')")
      self:GetPossessor():ChatPrint("Weapon: Greatsword")
      self:SetBodygroup(1,5)
      self:SetSelectedWeapon(self.CinderSwordMode)
    end end}},
-- Combat
  [IN_USE] = {{coroutine = true,onkeydown = function(self)
    self:PlaySequenceAndMove("Attack21_5", 1, self.PossessionFaceForward)
  end}},
  [IN_ATTACK] = {{coroutine = true,onkeydown = function(self)
    if self.IsSitting == false then
      self:PlaySequenceAndMove("Attack0", 1, self.PossessionFaceForward)
    end
  end}},
  [IN_ATTACK2] = {{coroutine = true, onkeypressed = function(self)
    -- if ATK2 == Combustion then
    self:PlaySequenceAndMove("Attack20_2", 1, self.PossessionFaceForward)
    -- end
  end}},
  [IN_RELOAD] = {{coroutine = true,onkeypressed = function(self)
    if self.IsSitting == true then
      self:PlaySequenceAndMove("Idle2Stand", 1, self.PossessionFaceForward)
      self.IdleAnimation = "Idle"
      self.IsSitting = false
    end
	end}},
  [KEY_PAD_MINUS] = {{coroutine = true, onbuttonpressed = function(self)
    self:PlaySequenceAndMove("Attack21_2")
  end}},
-- Passive
  [IN_JUMP] = {{coroutine = true, onkeypressed = function(self)
    local ply = self:GetPossessor()
    if ply:KeyDown(IN_MOVERIGHT) then self:PlaySequenceAndMove("Dodge_Right", 1, self.PossessionFaceForward)
    elseif ply:KeyDown(IN_MOVELEFT) then self:PlaySequenceAndMove("Dodge_Left", 1, self.PossessionFaceForward)
    --[[UNFINISHED. NO SEQUENCE EVENTS]] elseif ply:KeyDown(IN_BACK) and self.CinderSwordMode == 0 then self:PlaySequenceAndMove("Dodge_Backflip", 1, self.PossessionFaceForward)
    elseif ply:KeyDown(IN_BACK) then self:PlaySequenceAndMove("Dodge_Backward", 1, self.PossessionFaceForward)
    elseif ply:KeyDown(IN_FORWARD) then self:PlaySequenceAndMove("Dodge_Forward", 1, self.PossessionFaceForward)
    end
  end}},
  [KEY_PAD_PLUS] = {{coroutine = true, onbuttonpressed = function(self)
    self:PlaySequenceAndMove("Attack8_1")
    --self:SetHealth(math.min(self:Health() + 400, self:GetMaxHealth()))
  end}}
}

if SERVER then
  -- Various tables.
  CinderWeapons ={
    ["unarm"]="Unarmed", 
    ["staff"]="Staff",
    ["lance"]="Lance",
    ["strsword"]="Straight Sword",  
    ["crvsword"]="Curved Sword", 
    ["grtsword"]="Greatsword" 
  }
  
  function ENT:CustomInitialize() 
    self:SetDefaultRelationship(D_NU)
    self:SetBodygroup(1,1)
    -- Spawn Anim Settings
      self.IdleAnimation = "Idle_Sit"
      self.IsSitting = true
      self.WalkAnimation = "WalkAll"
      self.RunAnimation = "RunAll"
    ParticleEffectAttach("soc_sword_embers", PATTACH_POINT_FOLLOW,self, 2)
    self.CinderSwordMode = 1
    self:SetSelectedWeapon(1)
    self:CinderSwordParticle()

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
      self:SequenceEvent("Dodge_Forward",18/55,function(self)self:EmitSound("soc/sfx_step_"..math.random(0,2)..".mp3", 65)end)
      self:SequenceEvent("Dodge_Forward",18/55,function(self)ParticleEffectAttach("brutus_burning_footstep", PATTACH_POINT_FOLLOW, self, 12)end)
      self:SequenceEvent("Dodge_Forward",25/55,function(self)self:EmitSound("soc/sfx_step_"..math.random(0,2)..".mp3", 65)end)
      self:SequenceEvent("Dodge_Forward",25/55,function(self)ParticleEffectAttach("brutus_burning_footstep", PATTACH_POINT_FOLLOW, self, 13)end)
      self:SequenceEvent("Dodge_Forward",38/55,function(self)self:EmitSound("soc/sfx_step_"..math.random(0,2)..".mp3", 65)end)
      self:SequenceEvent("Dodge_Forward",38/55,function(self)ParticleEffectAttach("brutus_burning_footstep", PATTACH_POINT_FOLLOW, self, 12)end)
      
    -- Melee Attacks
      -- Attack 1
        local function MATK1Flames()
          if self.CinderSwordMode != 0 then
            ParticleEffectAttach("ds3_flamesword_swing",PATTACH_POINT_FOLLOW,self,3)
            self:Timer(0.3,function()self:StopParticles()end)
          end end
        local function MATK1()
          self:Attack({
            damage = math.random(40,75),
            range= 115,
            type = DMG_SLASH,
            viewpunch = Angle(20, math.random(-10, 10), 0),
          }, 
          function(self, hit)
            if #hit > 0 then
              if self.CinderSwordMode != 0 then
                self:EmitSound("soc/weapon_impact_heavy_"..math.random(0,1)..".mp3", 115)
                self:EmitSound("soc/fireball_explode_0.mp3", 65)
              else self:EmitSound("soc/weapon_impact_light.mp3", 80) end
            else
              if self.CinderSwordMode != 0 then
                self:EmitSound("soc/whoosh_heavy_"..math.random(0,2)..".mp3", 115)
                self:EmitSound("soc/fireball_explode_0.mp3", 65)
              else self:EmitSound("soc/whoosh_"..math.random(0,2)..".mp3", 80) end
            end
          end)end
        self:SequenceEvent("Attack0",9/84,function(self)self:EmitSound("soc/sfx_step_"..math.random(0,2)..".mp3", 65, math.random(90,110))ParticleEffect("brutus_burning_footstep", self:GetAttachment(13).Pos, self:GetAttachment(13).Ang, nil)end)
        self:SequenceEvent("Attack0",18/84,function(self)self:EmitSound("soc/sfx_step_"..math.random(0,2)..".mp3", 65, math.random(90,110))ParticleEffect("brutus_burning_footstep", self:GetAttachment(12).Pos, self:GetAttachment(12).Ang, nil)end)
        self:SequenceEvent("Attack0",26/84,function(self)self:EmitSound("soc/sfx_step_"..math.random(0,2)..".mp3", 65, math.random(90,110))ParticleEffect("brutus_burning_footstep", self:GetAttachment(13).Pos, self:GetAttachment(13).Ang, nil)end)
        self:SequenceEvent("Attack0",34/84,function(self)self:EmitSound("soc/sfx_step_"..math.random(0,2)..".mp3", 65, math.random(90,110))ParticleEffect("brutus_burning_footstep", self:GetAttachment(12).Pos, self:GetAttachment(12).Ang, nil)end)
        self:SequenceEvent("Attack0",64/84,function(self)self:EmitSound("soc/sfx_step_"..math.random(0,2)..".mp3", 65, math.random(90,110))ParticleEffect("brutus_burning_footstep", self:GetAttachment(12).Pos, self:GetAttachment(12).Ang, nil)end)
        self:SequenceEvent("Attack0",23/84,MATK1Flames)
        self:SequenceEvent("Attack0",25/84,MATK1)
      -- Attack 2
    -- Misc
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
      -- Death
        self:SequenceEvent("Death",3/350,function(self)
          self:EmitSound("soc/vox_pain_"..math.random(0,4)..".mp3")
          self:EmitSound("soc/sfx_step_"..math.random(0,2)..".mp3") 
          ParticleEffectAttach("brutus_burning_footstep", PATTACH_POINT_FOLLOW, self, 12)
        end)
        self:SequenceEvent("Death",38/350,function(self)self:EmitSound("soc/vox_death.mp3")end)
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
      -- Heal
        self:Timer(5.5,self.StopParticles)
        self:SequenceEvent("Attack8_1",8/145,function(self)ParticleEffect("brutus_burning_footstep", self:GetAttachment(12).Pos, self:GetAttachment(12).Ang, nil)end)
        self:SequenceEvent("Attack8_1",18/145,function(self)ParticleEffect("brutus_burning_footstep", self:GetAttachment(13).Pos, self:GetAttachment(13).Ang, nil)end)
        self:SequenceEvent("Attack8_1",33/145,function(self)
          ParticleEffectAttach("ds3_cinder_heal_cast", PATTACH_POINT_FOLLOW, self, 4)
          self:EmitSound("soc/miracle_heal_pre1.mp3", 85)
          ParticleEffectAttach("ds3_cinder_heal_aura", PATTACH_POINT_FOLLOW, self, 2)
          self:SetHealth(self.SpawnHealth)
        end)
        self:SequenceEvent("Attack8_1",37/145,function(self)ParticleEffectAttach("ds3_cinder_heal", PATTACH_ABSORIGIN, self, 0)end)
  end

  function ENT:CinderSwordParticle()
    if self.CinderSwordMode == 1 then
      util.ParticleTracerEx("soc_sword_embers",
        self:GetAttachment(7).Pos, self:GetAttachment(5).Pos, 
        false, self:EntIndex(), 7)
    end
  end
  
  function ENT:CustomThink() 
    if self:GetCooldown("CinderIdle") <= 0 then
      self:EmitSound("soc/vox_idle_"..math.random(1)..".mp3", 60, math.random(90,110))
      self:SetCooldown("CinderIdle", math.random(2.6,3.2))
    end
  end

  -- These hooks are called when the nextbot has an enemy (inside the coroutine)
  function ENT:OnMeleeAttack(enemy) end
  function ENT:OnRangeAttack(enemy) end
  function ENT:OnChaseEnemy(enemy) end
  function ENT:OnAvoidEnemy(enemy) end

  -- These hooks are called while the nextbot is patrolling (inside the coroutine)
  function ENT:OnReachedPatrol(pos)
    --self:Wait(math.random(3, 7))
  end 
  function ENT:OnPatrolUnreachable(pos) end
  function ENT:OnPatrolling(pos) end

  -- These hooks are called when the current enemy changes (outside the coroutine)
  function ENT:OnNewEnemy(enemy) 
  end
  function ENT:OnEnemyChange(oldEnemy, newEnemy) end
  function ENT:OnLastEnemy(enemy) end

  -- Those hooks are called inside the coroutine
  function ENT:OnSpawn() end
  function ENT:OnIdle()
  end

  -- Called outside the coroutine
  function ENT:OnTakeDamage(dmg, hitgroup)
    -- Would like to implement the following;
    -- if self.Dodging then dmg:SetDamage(0) return end
    --[[ "attempt to yield across C-call boundary"
    if dmg:IsDamageType(DMG_BLAST) then
      dmg:ScaleDamage(1.3)
      self.IsFlinching = true
      self:PlaySequenceAndMove("Pain_Small")
      self.IsFlinching = false
    end]]
    -- Ideally i'd also like to implement a system where if Cinder is flinching, he takes maybe 5% more damage. Would be neat.
  end
  function ENT:OnFatalDamage(dmg, hitgroup) end
  
  -- Called inside the coroutine
  function ENT:OnTookDamage(dmg, hitgroup) end
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
  function ENT:PossessionHUD()
    draw.SimpleText(
			"Selected Weapon  : "..self:GetSelectedWeapon(),
			"Dark_Font", 
			35,
			ScrH()/1.15, 
			color_white
		)
  end
end
    
function ENT:SetupDataTables()
  self:NetworkVar("String", 0, "SelectedWeapon")
end

-- DO NOT TOUCH --
AddCSLuaFile()
DrGBase.AddNextbot(ENT)