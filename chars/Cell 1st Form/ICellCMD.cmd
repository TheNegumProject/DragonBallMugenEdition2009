;Insect Cell's CMD
;-| Super Motions |--------------------------------------------------------

[Command]
name = "DBlade1"
command = ~D, F, D, F, b
time = 30

[Command]
name = "DBlade2"
command = ~D, DB, B, b+c
time = 30

[Command]
name = "DBlade3"
command = ~D, DB, B, a+c
time = 30

[Command]
name = "KameHameHa1"
command = ~D, F, D, F, a
time = 30

[Command]
name = "KameHameHa2"
command = ~D, DB, B, y+z
time = 30

[Command]
name = "KameHameHa3"
command = ~D, DF, F, x+z
time = 30

[Command]
name = "SpecialBeam1"
command = ~D, F, D, F, x
time = 30

[Command]
name = "SpecialBeam2"
command = ~D, DF, F, y+z
time = 30

[Command]
name = "SpecialBeam3"
command = ~D, DF, F, x+z
time = 30

;-| Special Motions |------------------------------------------------------

[Command]
name = "QCF_a"
command = ~D, DF, F, a

[Command]
name = "QCF_b"
command = ~D, DF, F, b

[Command]
name = "QCF_c"
command = ~D, DF, F, c

[Command]
name = "QCF_x"
command = ~D, DF, F, z

[Command]
name = "QCF_y"
command = ~D, DF, F, y

[Command]
name = "QCF_z"
command = ~D, DF, F, z

[Command]
name = "QCF_xy"
command = ~D, DF, F, x+y

[Command]
name = "QCB_a"
command = ~D, DB, B, a

[Command]
name = "QCB_b"
command = ~D, DB, B, b

[Command]
name = "QCB_c"
command = ~D, DB, B, c

[Command]
name = "QCB_x"
command = ~D, DB, B, x


[Command]
name = "QCB_y"
command = ~D, DB, B, y

[Command]
name = "QCB_z"
command = ~D, DB, B, z

[Command]
name = "FBF_a"
command = ~F, B, F, x

[Command]
name = "FBF_b"
command = ~F, B, F, y

[Command]
name = "FBF_c"
command = ~F, B, F, z

[Command]
name = "FBF_x"
command = ~F, B, F, x

[Command]
name = "FBF_y"
command = ~F, B, F, y

[Command]
name = "FBF_z"
command = ~F, B, F, z

[Command]
name = "FF_ab"
command = F, F, a+b

[Command]
name = "FF_a"
command = F, F, a

[Command]
name = "FF_b"
command = F, F, b

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

[Command]
name = "UU"     ;Required (do not remove)
command = U, U
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = a+b
time = 1

[Command]
name = "fly"
command = b+y
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

;-| Single Button |---------------------------------------------------------
[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "s"
command = s
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1
;-| Hold Button |--------------------------------------------------------------
[Command]
name = "hold_yb"
command = /y+b
time = 1

[Command]
name = "hold_xa"
command = /x+a
time = 1

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_b"
command = /b
time = 1

[Command]
name = "hold_c"
command = /c
time = 1

[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_y"
command = /y
time = 1

[Command]
name = "hold_z"
command = /z
time = 1

[Command]
name = "hold_s"
command = /s
time = 1
;-| AI Activate |--------------------------------------------------------------
; Artificial Intelligence
[Command]
name = "AI_01"
command = ~D, DF, F, F, DF, D, DB, B, a
time = 1

[Command]
name = "AI_02"
command = ~D, DF, F, F, DF, D, DB, B, b
time = 1

[Command]
name = "AI_03"
command = ~D, DF, F, F, DF, D, DB, B, c
time = 1

[Command]
name = "AI_04"
command = ~D, DF, F, F, DF, D, DB, B, x
time = 1

[Command]
name = "AI_05"
command = ~D, DF, F, F, DF, D, DB, B, y
time = 1

[Command]
name = "AI_06"
command = ~D, DF, F, F, DF, D, DB, B, z
time = 1

[Command]
name = "AI_07"
command = ~D, DB, B, B, DB, D, DF, F, a
time = 1

[Command]
name = "AI_08"
command = ~D, DB, B, B, DB, D, DF, F, b
time = 1

[Command]
name = "AI_09"
command = ~D, DB, B, B, DB, D, DF, F, c
time = 1

[Command]
name = "AI_10"
command = ~D, DB, B, B, DB, D, DF, F, x
time = 1

[Command]
name = "AI_11"
command = ~D, DB, B, B, DB, D, DF, F, y
time = 1

[Command]
name = "AI_12"
command = ~D, DB, B, B, DB, D, DF, F, z
time = 1
;---------------------------------------------------------------------------
; 2. State entry
; --------------
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1, Label]           ;Change Label to any name you want to use to
;                               ;identify the state with.
;   type = ChangeState          ;Don't change this
;   value = new_state_number
;   trigger1 = command = command_name
;   . . .  (any additional triggers)
;
; - new_state_number is the number of the state to change to
; - command_name is the name of the command (from the section above)
; - Useful triggers to know:
;   - statetype
;       S, C or A : current state-type of player (stand, crouch, air)
;   - ctrl
;       0 or 1 : 1 if player has control. Unless "interrupting" another
;                move, you'll want ctrl = 1
;   - stateno
;       number of state player is in - useful for "move interrupts"
;   - movecontact
;       0 or 1 : 1 if player's last attack touched the opponent
;                useful for "move interrupts"
;
; Note: The order of state entry is important.
;   State entry with a certain command must come before another state
;   entry with a command that is the subset of the first.  
;   For example, command "fwd_a" must be listed before "a", and
;   "fwd_ab" should come before both of the others.
;
; For reference on triggers, see CNS documentation.
;
; Just for your information (skip if you're not interested):
; This part is an extension of the CNS. "State -1" is a special state
; that is executed once every game-tick, regardless of what other state
; you are in.


; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

;===========================================================================
;AI Activation
;---------------------------------------------------------------------------
[State -1, ArtificialIntelligence]
type = VarSet	
triggerall = Var(39) != 1
trigger1 = command = "AI_01" 
trigger2 = command = "AI_02"
trigger3 = command = "AI_03"
trigger4 = command = "AI_04"
trigger5 = command = "AI_05"
trigger6 = command = "AI_06"
trigger7 = command = "AI_07"
trigger8 = command = "AI_08"
trigger9 = command = "AI_09"
trigger10 = command = "AI_10"
trigger11 = command = "AI_11"
trigger12 = command = "AI_12"
v = 39
value = 1
;===========================================================================
;Hyper Attacks
;---------------------------------------------------------------------------
Special Beam Cannon
[State -1, Special Beam Cannon]
type = ChangeState
value = 1800
triggerall = (command = "SpecialBeam1" || command = "SpecialBeam2" || command = "SpecialBeam3") && command != "holddown" && power >= 2000
trigger1 = statetype = S && ctrl
trigger2 = stateno = 3100
;---------------------------------------------------------------------------
;KameHameHa
[State -1, KameHameHa]
type = ChangeState
value = 1900
triggerall = (command = "KameHameHa1" || command = "KameHameHa2" || command = "KameHameHa3") && command != "holddown" && power >= 1000
trigger1 = statetype = S && ctrl
trigger2 = stateno = 3100
;---------------------------------------------------------------------------
;Chain KameHameHa
[State -1, Chain KameHameHa]
type = ChangeState
value = 1905
triggerall = (command = "KameHameHa1" || command = "KameHameHa2" || command = "KameHameHa3") && command != "holddown" && power >= 1000
trigger1 = (stateno = 200 || stateno = 205 || stateno = 210 || stateno = 220) && (movecontact)
trigger2 = (stateno = 230 || stateno = 235 || stateno = 240 || stateno = 250) && (movecontact)
trigger3 = (stateno = [1000, 1003]) && (NumProjID(12110) = 0)
trigger4 = (stateno = [1300,1320]) && (movecontact)
trigger5 = (stateno = [600,650]) && (movecontact) && time < 8
trigger6 = (stateno = [400,450]) && (movecontact)
;---------------------------------------------------------------------------
;Death Blade(Blade Beam)
[State -1, DBlade]
type = ChangeState
value = 2000
triggerall = (command = "DBlade1" || command = "DBlade2" || command = "DBlade3") && command != "holddown" && power >= 1000
trigger1 = statetype = S && ctrl
trigger2 = stateno = 3100
;---------------------------------------------------------------------------
;Chain Death Blade
[State -1, Chain DBlade]
type = ChangeState
value = 2005
triggerall = (command = "DBlade1" || command = "DBlade2" || command = "DBlade3") && command != "holddown" && power >= 1000
trigger1 = (stateno = 200 || stateno = 205 || stateno = 210 || stateno = 220) && (movecontact)
trigger2 = (stateno = 230 || stateno = 235 || stateno = 240 || stateno = 250) && (movecontact)
trigger3 = (stateno = [1000, 1003]) && (NumProjID(12110) = 0)
trigger4 = (stateno = [1300,1320]) && (movecontact)
trigger5 = (stateno = [600,650]) && (movecontact) && time < 8
trigger6 = (stateno = [400,450]) && (movecontact)
;===========================================================================
;-=Special Attacks/Special Abilities/Throws/Combinations=-
;---------------------------------------------------------------------------
; Fly-Lift Off/Buku Jyutsu(Start)
[State -1, FlyStart]
type = ChangeState
value = 3000
trigger1 = statetype = S && ctrl = 1 && stateno != 3100 && command != "holdfwd"
triggerall = command = "fly" && Var(4) = 0
;---------------------------------------------------------------------------
; Fly in action/Buku Jyutsu
[State -1, Flying]
type = ChangeState
value = 3100
trigger1 = statetype = A && ctrl = 1
triggerall = command = "fly" && var(4) = 0
;---------------------------------------------------------------------------
; Fall from Flight
[State -1, Fall]
type = ChangeState
value = 3105
trigger1 = statetype = A && ctrl = 1 && stateno = 3100
triggerall = command = "fly"
;---------------------------------------------------------------------------
; Fall from Flight2
[State -1, Fall]
type = ChangeState
value = 3105
triggerall = Var(4) = 1
trigger1 = stateno = 3100
;---------------------------------------------------------------------------
;Super Jump
[State -1, SuperJump]
type = ChangeState
value = 41
triggerall = (command = "holdup" || (command="a"&&command="b"&&command="c"))
trigger1 = statetype = C && ctrl = 1 && stateno != 3100
trigger2 = (stateno = 250 && movecontact)
;---------------------------------------------------------------------------
; Run_Fwd
[State -1, RunFwd]
type = ChangeState
value = 100
triggerall = var(4) = 0
trigger1 = command = "FF" && statetype = S && ctrl && (stateno != 100 || stateno != 102)

; Air Run_Fwd
[State -1, AirRunFwd]
type = ChangeState
value = 102
triggerall = var(4) = 0
trigger1 = command = "FF" && statetype = A && ctrl && (stateno != 100 || stateno != 102)
trigger2 = command = "FF" && (stateno = [600,650]) && time > 25
;---------------------------------------------------------------------------
; Run_Back
[State -1, RunBack]
type = ChangeState
value = 105
triggerall = var(4) = 0
trigger1 = command = "BB" && statetype = S && ctrl

; Air Run_Back
[State -1, AirRunBack]
type = ChangeState
value = 107
triggerall = var(4) = 0
trigger1 = command = "BB" && statetype = A && ctrl && stateno != 105
trigger2 = command = "BB" && (stateno = [600,650]) && time > 25
;---------------------------------------------------------------------------
; Air Run_Up
[State -1, AirUp]
type = ChangeState
value = 109
triggerall = var(4) = 0
trigger1 = command = "UU" && statetype = A && ctrl
trigger2 = command = "UU" && (stateno = [600,650]) && time > 25
;---------------------------------------------------------------------------
;Flight Guard
;[State -1, FlyGuard]
;type = ChangeState
;value = 120
;triggerall = p2movetype = A && ctrl = 1 && stateno = 3100 && Var(39) != 1
;trigger1 = command = "holdback"
;---------------------------------------------------------------------------
; Zanzoken Forward
[State -1, Zanzoken.F]
type = ChangeState
value = 2900
triggerall = (command = "a"  && command = "x") && (prevstateno != 2900 || prevstateno != 2901) && (stateno = 100 || stateno = 102)
trigger1 = (statetype = S || statetype = A) && ctrl = 1 
;---------------------------------------------------------------------------
; Zanzoken Backward
[State -1, Zanzoken.B]
type = ChangeState
value = 2905
triggerall = (command = "a"  && command = "x") && (prevstateno != 2905 || prevstateno != 2906) && (stateno = 105)
trigger1 = (statetype = S || statetype = A) && ctrl = 1 
;---------------------------------------------------------------------------
; Zanzoken Air Backward
[State -1, Zanzoken.B]
type = ChangeState
value = 2907
triggerall = (command = "a"  && command = "x") && (prevstateno != 2905 || prevstateno != 2906) && (stateno = 107)
trigger1 = (statetype = S || statetype = A) && ctrl = 1 
;---------------------------------------------------------------------------
;Charge Up/Power Up
[State -1, ChargePower]
type = ChangeState
value = 1700
triggerall = time > 2 && power < 3000
trigger1 = command = "hold_a" && command = "hold_x" && statetype = S && ctrl = 1 && command != "holdfwd"
trigger2 = command = "hold_a" && command = "hold_x" && stateno = 3100 && command != "holdfwd"
;---------------------------------------------------------------------------
; Fireball
[State -1, Fireball]
type = ChangeState
value = 1000
triggerall = (command = "QCF_x" || command = "QCF_y" || command = "QCF_z")&& command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 200 || stateno = 205 || stateno = 210 || stateno = 220)
trigger3 = (stateno = 230 || stateno = 235 || stateno = 240)
trigger4 = (stateno = 300 || stateno = 310)
trigger5 = (stateno = 1300 || stateno = 1310 || stateno = 1320)
trigger6 = stateno = 3100
;---------------------------------------------------------------------------
; Energy Blade Weak
[State -1, EnergyBlade.W]
type = ChangeState
value = 1100
triggerall = (command = "QCB_a")&& command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 200 || stateno = 205 || stateno = 210 || stateno = 220)
trigger3 = (stateno = 230 || stateno = 235 || stateno = 240)
trigger4 = (stateno = 300 || stateno = 310)
trigger5 = (stateno = 1300 || stateno = 1310 || stateno = 1320)
trigger6 = stateno = 3100
;---------------------------------------------------------------------------
; Energy Blade Medium
[State -1, EnergyBlade.M]
type = ChangeState
value = 1110
triggerall = (command = "QCB_b")&& command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 200 || stateno = 205 || stateno = 210 || stateno = 220)
trigger3 = (stateno = 230 || stateno = 235 || stateno = 240)
trigger4 = (stateno = 300 || stateno = 310)
trigger5 = (stateno = 1300 || stateno = 1310 || stateno = 1320)
trigger6 = stateno = 3100
;---------------------------------------------------------------------------
; Energy Blade Strong
[State -1, EnergyBlade.S]
type = ChangeState
value = 1120
triggerall = (command = "QCB_c")&& command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 200 || stateno = 205 || stateno = 210 || stateno = 220)
trigger3 = (stateno = 230 || stateno = 235 || stateno = 240)
trigger4 = (stateno = 300 || stateno = 310)
trigger5 = (stateno = 1300 || stateno = 1310 || stateno = 1320)
trigger6 = stateno = 3100
;---------------------------------------------------------------------------
; Air Energy Blade Weak
[State -1, AEnergyBlade.W]
type = ChangeState
value = 1150
triggerall = (command = "QCB_a")&& command != "holddown"
trigger1 = statetype = A && ctrl
trigger2 = stateno = [600,650]
;---------------------------------------------------------------------------
; Air Energy Blade Medium
[State -1, AEnergyBlade.M]
type = ChangeState
value = 1160
triggerall = (command = "QCB_b")&& command != "holddown"
trigger1 = statetype = A && ctrl
trigger2 = stateno = [600,650]
;---------------------------------------------------------------------------
; Air Energy Blade Strong
[State -1, AEnergyBlade.S]
type = ChangeState
value = 1170
triggerall = (command = "QCB_c")&& command != "holddown"
trigger1 = statetype = A && ctrl
trigger2 = stateno = [600,650]
;---------------------------------------------------------------------------
; Weak Flip Kick
[State -1, W.FKick]
type = ChangeState
value = 1500
triggerall = (command = "QCF_x")&& command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 200 || stateno = 205 || stateno = 210 || stateno = 220)
trigger3 = (stateno = 230 || stateno = 235 || stateno = 240)
trigger4 = (stateno = [1300,1320])
;---------------------------------------------------------------------------
; Medium Flip Kick
[State -1, M.FKick]
type = ChangeState
value = 1510
triggerall = (command = "QCB_y")&& command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 200 || stateno = 205 || stateno = 210 || stateno = 220)
trigger3 = (stateno = 230 || stateno = 235 || stateno = 240)
trigger4 = (stateno = [1300,1320])
;---------------------------------------------------------------------------
; Strong Flip Kick
[State -1, S.FKick]
type = ChangeState
value = 1520
triggerall = (command = "QCB_z")&& command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 200 || stateno = 205 || stateno = 210 || stateno = 220)
trigger3 = (stateno = 230 || stateno = 235 || stateno = 240)
trigger4 = (stateno = [1300,1320])
;---------------------------------------------------------------------------
; Short Slide
[State -1, Sml.Slide]
type = ChangeState
value = 1300
triggerall = (command = "QCF_a")&& command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 200 || stateno = 205 || stateno = 210 || stateno = 220)
trigger3 = (stateno = 230 || stateno = 235 || stateno = 240)
trigger4 = stateno = 3100
;---------------------------------------------------------------------------
; Medium Slide
[State -1, Med.Slide]
type = ChangeState
value = 1310
triggerall = (command = "QCF_b")&& command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 200 || stateno = 205 || stateno = 210 || stateno = 220)
trigger3 = (stateno = 230 || stateno = 235 || stateno = 240)
trigger4 = stateno = 3100
;---------------------------------------------------------------------------
; Long Slide
[State -1, Big.Slide]
type = ChangeState
value = 1320
triggerall = (command = "QCF_c")&& command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 200 || stateno = 205 || stateno = 210 || stateno = 220)
trigger3 = (stateno = 230 || stateno = 235 || stateno = 240)
trigger4 = stateno = 3100
;---------------------------------------------------------------------------
; Solar Flare
[State -1, SolarFlare]
type = ChangeState
value = 1400
triggerall = (command = "FBF_a"||command = "FBF_b"||command = "FBF_c")&& command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 3100
;---------------------------------------------------------------------------
; Shoulder Throw
[State -1, Throw]
type = null;ChangeState
value = 800
triggerall = (command = "x" && command = "y") && statetype = S && ctrl && stateno != 100
trigger1 = command = "holdfwd" && p2bodydist X < 5 && (p2statetype = S || p2statetype = C) && p2movetype != H
trigger2 = command = "holdback" && p2bodydist X < 7 && (p2statetype = S || p2statetype = C) && p2movetype != H
trigger3 = stateno = 3100
;---------------------------------------------------------------------------
; Absorb
[State -1, Absorb]
type = ChangeState
value = 900
triggerall = (command = "a" && command = "b") && statetype = S && ctrl && stateno != 100
trigger1 = command = "holdfwd" && p2bodydist X < 13 && (p2statetype = S || p2statetype = C) && p2movetype != H
trigger2 = command = "holdback" && p2bodydist X < 15 && (p2statetype = S || p2statetype = C) && p2movetype != H
trigger3 = stateno = 3100
;---------------------------------------------------------------------------
; Advance Guard
[State -1, Advance Guard]
type = ChangeState
value = 330
triggerall = ((command = "x" && command = "y") || (command = "x" && command = "z") || (command = "z" && command = "y")) && command != "holddown" && power >= 200
trigger1 = stateno = [150, 156]
;---------------------------------------------------------------------------
; Elbow Bash Teleport Chain
[State -1, EBTChain]
type = ChangeState
value = 1550
triggerall = (command = "a" || command = "b" || command = "c" || command = "x" || command = "y" || command = "z") && command = "holddown"
trigger1 = (stateno = 1500 || stateno = 1510 || stateno = 1520) && movehit && time < 20
trigger2 = (stateno = 250 || stateno = 240 || stateno = 1561) && movehit && time = [14,28]
;---------------------------------------------------------------------------
; Kick Upwards Teleport Chain
[State -1, KUChain]
type = ChangeState
value = 1560
triggerall = (command = "a" || command = "b" || command = "c" || command = "x" || command = "y" || command = "z") && command = "holdup"
trigger1 = (stateno = 1500 || stateno = 1510 || stateno = 1520) && movehit && time < 28
;===========================================================================
;-=Basic Attacks=-
;---------------------------------------------------------------------------
; Low jab
[State -1, Low Jab]
type = ChangeState
value = 200
triggerall = command = "x" && command != "holddown" && p2bodydist x <= 9
trigger1 = statetype = S && ctrl
trigger2 = stateno = 3100
;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 205
triggerall = command = "x" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 200 && movecontact
trigger3 = stateno = 3100
;---------------------------------------------------------------------------
; Stand High Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = command = "y" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 200 || stateno=205 || stateno=220) && movecontact
trigger3 = stateno = 230 && movecontact
trigger4 = stateno = 3100
;---------------------------------------------------------------------------
; Stand Force Punch
[State -1, Force Punch]
type = ChangeState
value = 220
triggerall = command = "z" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 210 || stateno = 235) && movecontact
;---------------------------------------------------------------------------
; Launcher
[State -1, Launcher]
type = null;ChangeState
value = 250
triggerall = ((command = "a" && command = "b") || (command = "b" && command = "c") || (command = "a" && command = "c")) && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 200 || stateno = 205 || stateno = 210 || stateno = 220 || stateno = 230 || stateno = 235 || stateno = 240) && movecontact
trigger3 = stateno = 3100
;---------------------------------------------------------------------------
; Knee
[State -1, Knee]
type = ChangeState
value = 230
triggerall = command = "a" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 200 || stateno = 205) && movecontact
trigger3 = stateno = 3100
;---------------------------------------------------------------------------
; Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 235
triggerall = command = "b" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = (stateno = 210 || stateno = 230) && movecontact
trigger3 = stateno = 3100
;---------------------------------------------------------------------------
; Standing Stong Kick
[State -1, Standing Strong Kick]
type = ChangeState
value = 250
triggerall = command = "c" && command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = stateno = 220 && movecontact
trigger3 = stateno = 235 && movecontact
trigger4 = stateno = 3100
;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "s"
trigger1 = statetype != A && ctrl
trigger2 = stateno = 3100
;---------------------------------------------------------------------------
; Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = (command = "x") && command = "holddown"
trigger1 = statetype = C && ctrl
;---------------------------------------------------------------------------
; Crouching Medium Punch
[State -1, Crouching Medium Punch]
type = ChangeState
value = 410
triggerall = (command = "y") && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 400 && movecontact
trigger3 = stateno = 430 && movecontact
;---------------------------------------------------------------------------
; Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 420
triggerall = (command = "z") && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 410 && movecontact
trigger3 = stateno = 440 && movecontact
;---------------------------------------------------------------------------
; Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = (command = "a") && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 400 && movecontact
;---------------------------------------------------------------------------
; Crouching strong Kick
[State -1, Crouching strong Kick]
type = ChangeState
value = 440
triggerall = (command = "b") && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 410 && movecontact
trigger3 = stateno = 430 && movecontact
;---------------------------------------------------------------------------
; Crouching slide Kick
[State -1, Crouching Slide Kick]
type = ChangeState
value = 450
triggerall = (command = "c") && command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 410 && movecontact
trigger3 = stateno = 440 && movecontact
;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = (command = "x")
trigger1 = statetype = A && ctrl
;---------------------------------------------------------------------------
; Jump med Punch
[State -1, Jump med Punch]
type = ChangeState
value = 610
triggerall = (command = "y")
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && movecontact
trigger3 = stateno = 630 && movecontact
;---------------------------------------------------------------------------
; Jump Slash
[State -1, Jump Slash]
type = ChangeState
value = 620
triggerall = (command = "z") && vel x != [-3.0,3.0]
trigger1 = statetype = A && ctrl
trigger2 = stateno = 610 && movecontact
trigger3 = stateno = 640 && movecontact
;---------------------------------------------------------------------------
; Jump strong Punch
[State -1, Jump strong Punch]
type = ChangeState
value = 615
triggerall = (command = "z") && vel x = [-3.0,3.0]
trigger1 = statetype = A && ctrl
trigger2 = stateno = 610 && movecontact
trigger3 = stateno = 640 && movecontact
;---------------------------------------------------------------------------
; Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = (command = "a")
trigger1 = statetype = A && ctrl
trigger2 = stateno = 600 && movecontact
;---------------------------------------------------------------------------
; Jump strong Kick
[State -1, Jump strong Kick]
type = ChangeState
value = 640
triggerall = (command = "b" || command = "c")
trigger1 = statetype = A && ctrl
trigger2 = stateno = 610 && movecontact
trigger3 = stateno = 630 && movecontact
;---------------------------------------------------------------------------
