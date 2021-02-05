;  Gogeta SSJ4 By JRX The CMD file.

[Command]
name = "seqchute"
command = ~D, DF, F, a

[Command]
name = "combo1"
command = D, DF, F, a
time = 30

[Command]
name = "masenko"
command = B, b
time = 30

[Command]
name = "kamehameha"
command = F, b
time = 30

[Command]
name = "fly"
command = b+y
time = 1
;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
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
name = "start"
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

[Command]
name = "hold_z";Required (do not remove)
command = /$z
time = 1

[Command]
name = "charge"
command = /x

[Command]
name = "charge 1"
command = /a

; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]
;===========================================================================
[State -1, Sequencia de chutes no ar]
type = ChangeState
value = 960
triggerall = command = "seqchute"
trigger1 = statetype = A
trigger1 = ctrl
;trigger2 = stateno = 8000

;Combo 1
[State -1]
type = ChangeState
value = 218
triggerall = command = "combo1"
trigger1 = statetype = S
trigger1 = ctrl = 1

;Masenko
[State -1]
type = ChangeState
value = 2500
triggerall = command = "masenko"
triggerall = numproj = 0
triggerall = power > 100
trigger1 = statetype != C
trigger1 = ctrl = 1
trigger2 = stateno = 3001

;Kame Hame Ha
[State -1]
type = ChangeState
value = 1900
triggerall = command = "kamehameha"
trigger1 = statetype = S
trigger1 = ctrl = 1

;Voa
[State -1]
type = ChangeState
value = 3001
trigger1 = command = "fly"
trigger1 = ctrl = 1
trigger1 = statetype = A
;---------------------------------------------------------------------------
;Voa
[State -1]
type = ChangeState
value = 3115
trigger1 = command = "fly"
trigger1 = ctrl = 1
trigger1 = statetype != A
;---------------------------------------------------------------------------
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;Velocidade
[State -1]
type = ChangeState
value = 100
triggerall = command = "FF"
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
trigger20 = stateno = 3001
;---------------------------------------------------------------------------
;Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;Velocidade
[State -1]
type = ChangeState
value = 105
triggerall = command = "BB"
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
trigger20 = stateno = 3001
;---------------------------------------------------------------------------

;Stand_x
[State -1]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 3001

[State -1]
type = ChangeState
value = 204
triggerall = command = "x"
triggerall = stateno = 200
triggerall = movecontact 
trigger1 = statetype = S

[State -1]
type = ChangeState
value = 205
triggerall = command = "x"
triggerall = stateno = 204
triggerall = movecontact 
trigger1 = statetype = S


;Stand_y
[State -1]
type = ChangeState
value = 201
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 3001

[State -1]
type = ChangeState
value = 2001
triggerall = command = "y"
triggerall = stateno = 201
triggerall = movecontact 
trigger1 = statetype = S

[State -1]
type = ChangeState
value = 207
triggerall = command = "y"
triggerall = stateno = 2001
triggerall = movecontact 
trigger1 = statetype = S

;Stand_z
[State -1]
type = ChangeState
value = 220
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 3001
;---------------------------------------------------------------------------
;Stand_a
[State -1]
type = ChangeState
value = 213
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 3001

[State -1]
type = ChangeState
value = 214
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 213
trigger2 = movecontact 

[State -1]
type = ChangeState
value = 222
triggerall = command = "a"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 214
trigger2 = movecontact 

;Stand_b
[State -1]
type = ChangeState
value = 211
triggerall = command = "b"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 3001

[State -1]
type = ChangeState
value = 215
triggerall = command = "b"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 211
trigger2 = movecontact 

[State -1]
type = ChangeState
value = 216
triggerall = command = "b"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 215
trigger2 = movecontact 

;Stand_c
[State -1]
type = ChangeState
value = 217
triggerall = command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 3001
;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)


;Crouching Strong Punch
[State -1, Crouching Strong Punch]
type = ChangeState
value = 203
triggerall = command = "z"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 410)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;Crouching Light Kick
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;Crouching Strong Kick
[State -1, Crouching Strong Kick]
type = ChangeState
value = 440
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)

;---------------------------------------------------------------------------
;Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600
trigger2 = statetime >= 7

;---------------------------------------------------------------------------
;Jump Strong Punch
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact

;---------------------------------------------------------------------------
;Jump Light Kick
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl

;---------------------------------------------------------------------------
;Jump Strong Kick
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 ;jump_x or jump_a
trigger2 = movecontact

;Charge
[State -1]
type = ChangeState
value = 730
triggerall = ctrl = 1
trigger1 = command = "charge"
trigger1 = command = "charge 1"
trigger1 = statetype = S

;Air Charge
[State -1]
type = ChangeState
value = 731
trigger1 = ctrl = 0
trigger1 = command = "charge"
trigger1 = command = "charge 1"
trigger1 = stateno = 1500

