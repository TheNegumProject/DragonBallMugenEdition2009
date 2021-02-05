;------------------ Supers---------------------
[Command]
name = "RR MasiveBall Shield"
command = ~D, DB, B, D, DB, B, x+y
time = 30

[Command]
name = "Shock Volt"
command = ~D, DF, F, D, DF, F, c
time = 30

[Command]
name = "Shock Wave"
command = ~D, DB, B, D, DB, B, c
time = 30

[Command]
name = "Energy Fireball"
command = D, DB, B, F, c
time = 30

;---------------- Specials Energy --------------------
[Command]
name = "Back Shot"
command = D, DB, B, c
time = 15

[Command]
name = "Energy Explosion"
command = F, DF, D, DB, B, c
time = 25

[Command]
name = "Fire Balls"
command = c
time = 15

;------------------ Specials---------------------

[Command]
name = "RKnee"
command = ~F, D, DF, a
time = 15

[Command]
name = "MPunch"
command = ~D, DB, B, x
time = 15

[Command]
name = "RPunch"
command = ~D, DB, B, y
time = 15

[Command]
name = "DashKick"
command = ~D, DB, B, a
time = 15

[Command]
name = "Desesperation"
command = ~F, DF, D, DB, B, b
time = 15

;------------------ Comands ------------------
[Command]
name = "Zanzoken"
command = z
time = 30

[Command]
name = "Super Jump"
command = ~D, U
time = 30

[Command]
name = "fly"
command = a+b
time = 20

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 12

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 12

[Command]
name = "UU"
command = U, U
time = 10

[Command]
name = "DD"
command = D, D
time = 10

;-| 2/3 Button Combination |-----------------------------------------------

[Command]
name = "charge"
command = /y

[Command]
name = "charge 1"
command = /x

[Command]
name = "all"
command = x+y+z
time = 1

[Command]
name = "recovery";Required (do not remove)
command = a+b
time = 1

[Command]
name = "x+z"
command = x+z
time = 1

[Command]
name = "y+z"
command = y+z
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

[Command]
name = "for_x"
command = /$F,x
time = 1

[Command]
name = "for_y"
command = /$F,y
time = 1

[Command]
name = "for_z"
command = /$F,z
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
name = "start"
command = s
time = 1

;-| Hold Key |--------------------------------------------------------------
[Command]
name = "holda"
command = /$a
time = 1

[Command]
name = "holdb"
command = /$b
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
;--------------------------- Supers ----------------------------------------
;===========================================================================
;Shock Volt
[State -1, RR MasiveBall Shield]
type = ChangeState
value = 4500
triggerall = command = "RR MasiveBall Shield"
triggerall = pos Y <= -100
;triggerall = stateno = 1500 || stateno = 60
triggerall = power >= 2000
trigger1 =  ((statetype = A) && (ctrl = 1))
trigger2 = (stateno = 1050) && movecontact = 1
trigger3 = (stateno = 600) && movecontact = 1
trigger4 = (stateno = 610) && movecontact = 1
trigger5 = (stateno = 2003) && movecontact = 1
trigger6 = (stateno = 1450) && movecontact = 1
trigger7 = stateno = 1500


;Shock Volt
[State -1, Shock Volt]
type = ChangeState
value = 4000
triggerall = command = "Shock Volt"
triggerall = power >= 1000
trigger1 =  ((statetype = A) && (ctrl = 1))
trigger2 = (stateno = 1050) && movecontact = 1
trigger3 = (stateno = 600) && movecontact = 1
trigger4 = (stateno = 610) && movecontact = 1
trigger5 = (stateno = 2003) && movecontact = 1
trigger6 = (stateno = 1450) && movecontact = 1
trigger7 = stateno = 1500


;Shock Wave
[State -1, Shock Wave]
type = ChangeState
value = 1150
triggerall = command = "Shock Wave"
triggerall = power >= 500
trigger1 =  ((statetype = S) && (ctrl = 1))
trigger2 = (stateno = 200) && movecontact = 1 || (stateno = 205) && movecontact = 1
trigger3 = (stateno = 201) && movecontact = 1
trigger4 = (stateno = 230) && movecontact = 1
trigger5 = (stateno = 235) && movecontact = 1
trigger6 = (stateno = 2000) && movecontact = 1


;Massive Fireball
[State -1, Energy Fireball]
type = ChangeState
value = 10011
triggerall = command = "Energy Fireball"
triggerall = power >= 500
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1500
trigger3 = (stateno = 200) && movecontact = 1 || (stateno = 205) && movecontact = 1
trigger4 = (stateno = 201) && movecontact = 1
trigger5 = (stateno = 230) && movecontact = 1
trigger6 = (stateno = 235) && movecontact = 1
trigger7 = stateno = 7003
trigger8 = (stateno = 2000) && movecontact = 1



;-------------------- Specials Energy -------------------------
;Back Shot
[State -1, Back Shot]
type = ChangeState
value = 3000
triggerall = power >= 100
triggerall = command = "Back Shot"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = (stateno = 600) && movecontact = 1
trigger3 = (stateno = 605) && movecontact = 1
trigger4 = (stateno = 610) && movecontact = 1
trigger5 = (stateno = 611) && movecontact = 1
trigger6 = (stateno = 410) && movecontact = 1
trigger7 = (stateno = 1050) && movecontact = 1
trigger8 = (stateno = 1450) && movecontact = 1
trigger9 = (stateno = 2002) && movecontact = 1
trigger10 = (stateno = 2003) && movecontact = 1
trigger11 = stateno = 1500

;Energy Explosion
[State -1, Energy Explosion]
type = ChangeState
value = 2000
triggerall = power >= 200
triggerall = command = "Energy Explosion"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = (stateno = 200) && movecontact = 1 || (stateno = 205) && movecontact = 1
trigger3 = (stateno = 201) && movecontact = 1
trigger4 = (stateno = 230) && movecontact = 1
trigger5 = (stateno = 235) && movecontact = 1

;RR Shield
[State -1, RR Shield]
type = ChangeState
value = 730
trigger1 = ctrl = 1
trigger1 = command = "charge"
trigger1 = command = "charge 1"
trigger1 = statetype = S

;Fire Balls
[State -1, Fire Balls]
type = ChangeState
value = 1320
triggerall = power >= 20
trigger1 = command = "Fire Balls"
trigger1 = statetype = S
trigger1 = ctrl = 1

;---------------------------- Specials ---------------------------
;Dash Air Kick
[State -1, Dash Kick]
type = ChangeState
value = 410
triggerall = command = "DashKick"
trigger1 = ((statetype = A) && (ctrl = 1))
trigger2 = (stateno = 1050) && movecontact = 1
trigger3 = (stateno = 600) && movecontact = 1
trigger4 = (stateno = 610) && movecontact = 1
trigger5 = (stateno = 2003) && movecontact = 1
trigger6 = stateno = 1500


;Desesperation
[State -1, Desesperation]
type = ChangeState
value = 1450
triggerall = command = "Desesperation"
trigger1 = ((StateType = S) && (ctrl = 1)) || (Var(3) = 1)
trigger2 = ((StateType = A) && (ctrl = 1)) || (Var(3) = 1)
trigger3 = (stateno = 200) && movecontact = 1 || (stateno = 205) && movecontact = 1
trigger4 = (stateno = 201) && movecontact = 1
trigger5 = (stateno = 230) && movecontact = 1
trigger6 = (stateno = 235) && movecontact = 1
trigger7 = (stateno = 220) && movecontact = 1
trigger8 = (stateno = 1050) && movecontact = 1
trigger3 = (stateno = 2505) && movecontact = 1 || (stateno = 2506)
trigger10 = (stateno = 2003) && movecontact = 1

;Rising Knee
[State -1, Rising Knee]
type = ChangeState
value = 1050
triggerall = command = "RKnee"
trigger1 =  ((statetype = S) && (ctrl = 1))
trigger2 = (stateno = 1001)
trigger2 = (stateno = 200) ||  (stateno = 205) ||(stateno = 201) || (stateno = 230) || (stateno = 235) || (stateno = 400) || (stateno = 401) || (stateno = 420)
trigger3 = (stateno = 2505) && movecontact = 1 || (stateno = 2506)
trigger4 = (stateno = 220) && movecontact = 1

;Dash Punch2
[State -1, Dash Punch2]
type = ChangeState
value = 2505
triggerall = command = "RPunch"
trigger1 =  ((statetype = S) && (ctrl = 1))
trigger2 = (stateno = 200) ||  (stateno = 205) ||(stateno = 201) || (stateno = 230) || (stateno = 235) || (stateno = 220) || (stateno = 400) || (stateno = 401) || (stateno = 420)

;Dash Punch
[State -1, Dash Punch]
type = ChangeState
value = 2002
triggerall = (p2bodydist X > 20) && (command = "MPunch")
trigger1 =  ((statetype = S) && (ctrl = 1))
trigger2 = (stateno = 200) ||  (stateno = 205) ||(stateno = 201) || (stateno = 230) || (stateno = 235) || (stateno = 220) || (stateno = 400) || (stateno = 401) || (stateno = 420)
trigger3 = (stateno = 2505) && movecontact = 1 || (stateno = 2506)

;Dash Punch  cercano
[State -1, Dash Punch  cercano]
type = ChangeState
value = 2003
triggerall =  (command = "MPunch")
trigger1 =  ((statetype = S) && (ctrl = 1))
trigger2 = (stateno = 200) || (stateno = 205) ||(stateno = 201) || (stateno = 230) || (stateno = 235) || (stateno = 220) || (stateno = 400) || (stateno = 401) || (stateno = 420)
trigger3 = (stateno = 2505) && movecontact = 1 || (stateno = 2506)


;---------------------- Commands -----------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl


;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Super Jump
[State -1:      Super Jump]
type            = ChangeState
value      = 60
triggerall      = command = "Super Jump"
trigger1        = (statetype = S) && (ctrl)
;---------------------------------------------------------------------------
;Flying
[State -1, Flying]
type = ChangeState
value = 1510
trigger1 = command = "fly"
trigger1 = statetype = A
trigger1 = ctrl = 1

;------------------------------------------------------------------------
;zanzoken
[State -1, zanzoken]
type = ChangeState
value = 10000
triggerall = command = "z"
triggerall = (power > 400)
triggerall = alive = 1
trigger1 = ctrl = 1
trigger1 = stateno >= 150
trigger2 = Stateno <= 153
trigger3 = stateno = 5000
trigger4 = stateno = 5001
trigger5 = stateno = 5002
trigger6 = stateno = 5010
trigger7 = stateno = 5011
trigger8 = stateno = 5012
trigger9 = stateno = 5020
trigger10 = stateno = 5021
trigger11 = stateno = 5022
trigger12 = stateno = 5110
trigger13 = stateno = 5120
trigger14 = stateno = 5110
trigger15 = stateno = 5035
trigger16 = stateno = 5030
trigger17 = stateno = 5050
trigger18 = stateno = 5040
trigger19 = stateno = 5071
trigger20 = stateno = 1500

;----------------------------------------------------------------------------------------
;Auto - Charge
[State -1, Auto Charge]
type = PowerAdd
trigger1 = 1
value = 1

;===========================================================================
;------------------------- Normal Moves ------------------------------------
;===========================================================================
;---------------------------------------------------------------------------------------
;Grulla
[State -1]
type = ChangeState
value = 220
triggerall = (command = "holdfwd") &&  (command = "a")
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = (stateno = 200) && movecontact = 1
trigger3 = (stateno = 205) && movecontact = 1
trigger4 = (stateno = 201) && movecontact = 1
trigger5 = (stateno = 230) && movecontact = 1
trigger6 = (stateno = 235) && movecontact = 1
;----------------------------------------------------------------------------------------

;Stand Light Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = (stateno = 230) && movecontact = 1
trigger3 = stateno = 7003

;Stand Light Punch - 2nd hit
[State -1, Stand Medium Punch]
type = ChangeState
value = 205
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = (stateno = 200)
trigger1 = statetype = S
trigger2 = stateno = 7003

;---------------------------------------------------------------------------
;Stand Medium Punch
[State -1]
type = ChangeState
value = 201
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = (stateno = 200) && movecontact = 1
trigger3 = (stateno = 205) && movecontact = 1
trigger4 = (stateno = 230) && movecontact = 1
trigger5 = stateno = 7003

;---------------------------------------------------------------------------
;Stand Light Kick
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact = 1
trigger3 = (stateno = 205) && movecontact = 1
trigger4 = (stateno = 230) && movecontact = 1
trigger5 = stateno = 7003

;---------------------------------------------------------------------------
;Stand Medium Kick
[State -1, Stand Medium Kick]
type = ChangeState
value = 235
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && movecontact = 1
trigger3 = (stateno = 205) && movecontact = 1
trigger4 = (stateno = 230) && movecontact = 1
trigger5 = stateno = 7003

;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = (stateno = 400)

;Crouching Stong Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 420
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = (stateno = 400) || (stateno = 401)

;Ctouching light Kick
[State -1, Crouching Light Punch]
type = ChangeState
value = 401
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = (stateno = 400)


;Ctouching Strong Kick
[State -1, Crouching Light Punch]
type = ChangeState
value = 421
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger2 = (stateno = 400) || (stateno = 401)

;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = (stateno = 610)

;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 605
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = (stateno = 610) || (stateno = 600)

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 610
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = (stateno = 600)

;Jump Strong Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 611
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = (stateno = 610) || (stateno = 600)

;-----------------------------------------------------------------------------------
;Flying Light Punch
[State -1]
type = ChangeState
value = 500
triggerall = command = "x"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = Stateno = 1500

;Flying  Strong Punch
[State -1]
type = ChangeState
value = 505
triggerall = command = "y"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = Stateno = 1500

;Flying Light Kick
[State -1]
type = ChangeState
value = 510
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = Stateno = 1500

;Flying Strong Kick
[State -1]
type = ChangeState
value = 511
triggerall = command = "b"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = Stateno = 1500

