;moves for Kame

;-) Super Motions |--------------------------------------------------------
[Command]
name = "kamehameha"
command = ~D, B, F, a

[Command]
name = "kamehameha2"
command = ~D, B, F, b

;-) Special Motions |------------------------------------------------------

[Command]
name = "fireball"
command = ~D, DF, F, c

[command]
name = "teleport_a"
command = ~B, D, DB, a

[command]
name = "teleport_b"
command = ~B, D, DB, b

[command]
name = "teleport_x"
command = ~B, D, DB, x

[command]
name = "teleport_y"
command = ~B, D, DB, y

;-) -------------------------------------------------------------------------

[Command]
name = "QCF_b"
command = ~D, DF, F, b

[Command]
name = "QCF_c"
command = ~D, DF, F, c

[Command]
name = "QCF_x"
command = ~D, DF, F, x

[Command]
name = "QCF_y"
command = ~D, DF, F, y

;[Command]
;name = "QCF_z"
;command = ~D, DF, F, z

;[Command]
;name = "fireball3"
;command = ~D, DF, F, z

; QCF
;[Command]
;name = "QCF_a"
;command = ~D, DF, F, a

;-----------------
; QCB
;[Command]
;name = "QCB_a"
;command = ~D, DB, B, a

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

;[Command]
;name = "QCB_z"
;command = ~D, DB, B, z

;-----------------
; Uppercut
[Command]
name = "uppercut_a"
command = ~F, D, DF, a

[Command]
name = "uppercut_b"
command = ~F, D, DF, b

[Command]
name = "uppercut_c"
command = ~F, D, DF, c

[Command]
name = "uppercut_x"
command = ~F, D, DF, x

[Command]
name = "uppercut_y"
command = ~F, D, DF, y

[Command]
name = "uppercut_z"
command = ~F, D, DF, z


;--------------------
;Charge_Down_up
[Command]
name = "chargedownup_a"
command = ~60$D, U, a
time = 10

[Command]
name = "chargedownup_b"
command = ~60$D, U, b
time = 10

[Command]
name = "chargedownup_c"
command = ~60$D, U, c
time = 10

[Command]
name = "chargedownup_x"
command = ~60$D, U, x
time = 10

[Command]
name = "chargedownup_y"
command = ~60$D, U, y
time = 10

[Command]
name = "chargedownup_z"
command = ~60$D, U, z
time = 10

;--------------------
;Charge_Back_fwd
[Command]
name = "chargebackfwd_a"
command = ~60$B, F, a
time = 10

[Command]
name = "chargebackfwd_b"
command = ~60$B, F, b
time = 10

[Command]
name = "chargedownup_c"
command = ~60$D, U, c
time = 10

[Command]
name = "chargedownup_x"
command = ~60$D, U, x
time = 10

[Command]
name = "chargedownup_y"
command = ~60$D, U, y
time = 10

[Command]
name = "chargedownup_z"
command = ~60$D, U, z
time = 10

;-| Double Tap |-----------------------------------------------------------
;[Command]
;name = "FF";Required (do not remove)
;command = F, F
;time = 10

[Command]
name = "BB";Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "holda"
command = /a
time = 1

[Command]
name = "holdb"
command = /b
time = 1

[Command]
name = "recovery"
command = a+b
time = 1

[Command]
name = "charge"
command = /a
time = 1

[Command]
name = "charge 1"
command = /x
time = 1

;[Command]
;name = "fly"
;command = a+x
;time = 1

;[Command]
;name = "ab"
;command = a+b
;time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "fwd_a"
command = /F,a
time = 1

[Command]
name = "fwd_b"
command = /F,b
time = 1

[Command]
name = "fwd_c"
command = /F,c
time = 1

[Command]
name = "fwd_x"
command = /F,x
time = 1

[Command]
name = "fwd_y"
command = /F,y
time = 1

[Command]
name = "fwd_z"
command = /F,z
time = 1

[Command]
name = "back_a"
command = /B,a
time = 1

[Command]
name = "back_b"
command = /B,b
time = 1

[Command]
name = "back_c"
command = /B,c
time = 1

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "down_c"
command = /$D,c
time = 1

[Command]
name = "fwd_ab"
command = /F, a+b
time = 1

[Command]
name = "back_ab"
command = /B, a+b
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
name = "holdup";Required (do not remove)
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
;   [State -1]                  ;Don't change this
;   type = ChangeState          ;Don't change this
;   value = new_state_number
;   trigger1 = command = "command_name"
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

;---------------------------------------------------------------------------

; Kamehameha
[State -1]
type = ChangeState
value = 1700
triggerall = command = "kamehameha"
triggerall = power >= 1000 ;Level 1 Super
triggerall = stateno != 1700 
triggerall = numprojid(1700) = 0
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact = 1

; Kamehameha2
[State -1]
type = ChangeState
value = 1800
triggerall = command = "kamehameha2"
triggerall = power >= 2000 ;Level 1 Super
triggerall = stateno != 1800
triggerall = numprojid(1800) = 0
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = statetype != A
trigger2 = hitdefattr = SC, NA, SA
trigger2 = movecontact = 1
;----------------------------------------------------------------------------
; Voar 
;[State -1]
;type = ChangeState
;value = 1500
;trigger1 = statetype = A
;trigger1 = ctrl = 1
;trigger1 = Pos Y < 0
;trigger1 = command = "fly"

;---------------------------------------------------------------------------
; CHARGE
[State -1]
type = ChangeState
value = 730
trigger1 = statetype = S
triggerall = Power < 3000
trigger1 = ctrl = 1
trigger1 = command = "holda"
trigger1 = command = "holdb"
trigger2 = stateno = 680
trigger2 = command = "holda"
trigger2 = command = "holdb"

;---------------------------------------------------------------------------
;Fireball_A
[State -1]
type = ChangeState
value = 1000
triggerall = command = "fireball";-------
triggerall = numproj = 0
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 200        ;Stand_a
trigger3 = stateno = 300        ;Stand_fwd_a
trigger3 = movecontact = 1
trigger4 = stateno = 500        ;Crouch_fwd_a
trigger4 = time <= 2
trigger5 = stateno = 410        ;Crouch_b
trigger5 = movecontact = 1
trigger6 = stateno = 210        ;stand_b
trigger6 = movecontact = 1
trigger7 = stateno = 1500

;------------------------------------------------

; Triple Fireball
;[State -1]
;type = ChangeState
;value = 1097
;triggerall = command = "fireball3"
;triggerall = numproj = 0
;trigger1 = statetype = S
;trigger1 = ctrl = 1
;trigger2 = stateno = 200        ;Stand_a
;trigger3 = stateno = 300        ;Stand_fwd_a
;trigger3 = movecontact = 1
;trigger4 = stateno = 500        ;Crouch_fwd_a
;trigger4 = time <= 2
;trigger5 = stateno = 410        ;Crouch_b
;trigger5 = movecontact = 1
;trigger6 = stateno = 210        ;stand_b
;trigger6 = movecontact = 1

;---------------------------------------------------------------------------
;RunFwd
;[State -1]
;type = ChangeState
;value = 100
;trigger1 = command = "FF"
;trigger1 = statetype = S
;trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;RunBack
[State -1]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl = 1
;----------------------------------------------------------------------------

;Teleport A
[State -1]
type = ChangeState
value = 7500
triggerall = command = "teleport_a"
trigger1 = statetype != A
trigger1 = ctrl = 1

;-------------------------------------------------------------
;Teleport B
[State -1]
type = ChangeState
value = 7510
triggerall = command = "teleport_b"
trigger1 = statetype != A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Teleport X
[State -1]
type = ChangeState
value = 7520
triggerall = command = "teleport_x"
trigger1 = statetype != A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Teleport Y
[State -1]
type = ChangeState
value = 7530
triggerall = command = "teleport_y"
trigger1 = statetype != A
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Stand_Throw (close dir+b)
; Complicated? Skip the throws and look at stand_a, etc, first.
; This is disabled right now. Remove the "null;" below when you
; want to use it.
[State -1]
type = null; ChangeState
value = 900
triggerall = statetype = S
triggerall = ctrl = 1
triggerall = p2bodydist X < 5 ;Near P2
trigger1 = command = "fwd_b";p2 stand
trigger1 = stateno != 100    ;Not running
trigger1 = p2statetype = S
trigger1 = p2movetype != H
trigger2 = command = "fwd_b";p2 crouch
trigger2 = stateno != 100    ;Not running
trigger2 = p2statetype = C
trigger2 = p2movetype != H
trigger3 = command = "back_b";p2 stand
trigger3 = p2statetype = S
trigger3 = p2movetype != H
trigger4 = command = "back_b";p2 crouch
trigger4 = p2statetype = C
trigger4 = p2movetype != H

;---------------------------------------------------------------------------
;Air_Throw1 (close dir+b)
; This is disabled right now. Remove the "null;" below when you
; want to use it.
[State -1]
type = null; ChangeState
value = 950
triggerall = statetype = A
triggerall = ctrl = 1
triggerall = p2bodydist X < 9
triggerall = p2bodydist Y > -22
triggerall = p2bodydist Y < 22
triggerall = p2statetype = A
triggerall = p2movetype != H
trigger1 = command = "fwd_b"
trigger2 = command = "back_b"

;---------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 200
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1500

[State -1]
type = ChangeState
value = 201
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1500

[State -1]
type = ChangeState
value = 202
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1500

;---------------------------------------------------------------------------
;Stand_y
[State -1]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1500

;--------------------------------------------------------------------------

;Stand_x
[State -1]
type = ChangeState
value = 211
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1500

;---------------------------------------------------------------------------
;Stand_z
[State -1]
type = ChangeState
value = 212
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1500

;---------------------------------------------------------------------------
;Crouch_a
[State -1]
type = ChangeState
value = 400
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger3 = stateno = 230
trigger3 = movecontact = 1
trigger4 = stateno = 220
trigger4 = movecontact = 1
trigger5 = stateno = 210
trigger5 = movecontact = 1
trigger6 = stateno = 250
trigger6 = movecontact = 1
trigger7 = stateno = 200
trigger7 = movecontact = 1
trigger8 = stateno = 240
trigger8 = movecontact = 1
trigger9 = stateno = 420
trigger9 = movecontact = 1
trigger10 = stateno = 600
trigger10 = movecontact = 1
trigger11 = stateno = 610
trigger11 = movecontact = 1

;---------------------------------------------------------------------------
;Crouch_b
[State -1]
type = ChangeState
value = 400
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger3 = stateno = 230
trigger3 = movecontact = 1
trigger4 = stateno = 220
trigger4 = movecontact = 1
trigger5 = stateno = 210
trigger5 = movecontact = 1
trigger6 = stateno = 250
trigger6 = movecontact = 1
trigger7 = stateno = 200
trigger7 = movecontact = 1
trigger8 = stateno = 400
trigger8 = movecontact = 1
trigger9 = stateno = 240
trigger9 = movecontact = 1
trigger10 = stateno = 600
trigger10 = movecontact = 1
trigger11 = stateno = 610
trigger11 = movecontact = 1

;---------------------------------------------------------------------------
;Crouch_c
[State -1]
type = ChangeState
value = 400
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1

;---------------------------------------------------------------------------
;Crouch_x
[State -1]
type = ChangeState
value = 410
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger3 = stateno = 230
trigger3 = movecontact = 1
trigger4 = stateno = 220
trigger4 = movecontact = 1
trigger5 = stateno = 210
trigger5 = movecontact = 1
trigger6 = stateno = 250
trigger6 = movecontact = 1
trigger7 = stateno = 200
trigger7 = movecontact = 1
trigger8 = stateno = 400
trigger8 = movecontact = 1
trigger9 = stateno = 420
trigger9 = movecontact = 1
trigger10 = stateno = 600
trigger10 = movecontact = 1
trigger11 = stateno = 610
trigger11 = movecontact = 1
;---------------------------------------------------------------------------
;Crouch_y
[State -1]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger3 = stateno = 230
trigger3 = movecontact = 1
trigger4 = stateno = 220
trigger4 = movecontact = 1
trigger5 = stateno = 210
trigger5 = movecontact = 1
trigger6 = stateno = 250
trigger6 = movecontact = 1
trigger7 = stateno = 200
trigger7 = movecontact = 1
trigger8 = stateno = 400
trigger8 = movecontact = 1
trigger9 = stateno = 420
trigger9 = movecontact = 1
trigger10 = stateno = 600
trigger10 = movecontact = 1
trigger11 = stateno = 610
trigger11 = movecontact = 1
;---------------------------------------------------------------------------
;Crouch_z
[State -1]
type = ChangeState
value = 410
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl = 1
trigger3 = stateno = 230
trigger3 = movecontact = 1
trigger4 = stateno = 220
trigger4 = movecontact = 1
trigger5 = stateno = 210
trigger5 = movecontact = 1
trigger6 = stateno = 250
trigger6 = movecontact = 1
trigger7 = stateno = 200
trigger7 = movecontact = 1
trigger8 = stateno = 400
trigger8 = movecontact = 1
trigger9 = stateno = 420
trigger9 = movecontact = 1
trigger10 = stateno = 600
trigger10 = movecontact = 1
trigger11 = stateno = 610
trigger11 = movecontact = 1
;---------------------------------------------------------------------------

;Três FireBalls
;[State -1]
;type = ChangeState
;value = 1098
;triggerall = command = "tres_fb"
;trigger1 = statetype = S
;trigger1 = ctrl = 1
;trigger2 = stateno = 1500

;-----------------------------------------------------
;Jump_a
[State -1]
type = ChangeState
value = 600
trigger1 = command = "a"
trigger1 = statetype = A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Jump_b
[State -1]
type = ChangeState
value = 600
trigger1 = command = "b"
trigger1 = statetype = A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Jump_c
[State -1]
type = ChangeState
value = 600
trigger1 = command = "c"
trigger1 = statetype = A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Jump_x
[State -1]
type = ChangeState
value = 610
trigger1 = command = "x"
trigger1 = statetype = A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Jump_y
[State -1]
type = ChangeState
value = 610
trigger1 = command = "y"
trigger1 = statetype = A
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
;Jump_z
[State -1]
type = ChangeState
value = 610
trigger1 = command = "z"
trigger1 = statetype = A
trigger1 = ctrl = 1

;provoc
[State -1]
type = ChangeState
value = 195
trigger1 = command = "s"
trigger1 = statetype = S
trigger1 = stateno != 312
trigger1 = ctrl = 1

