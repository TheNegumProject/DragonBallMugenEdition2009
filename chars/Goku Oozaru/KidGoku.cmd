;-| Default Values |-------------------------------------------------------
[Defaults]
command.time = 15
command.buffer.time = 1
;-| Super Motions |--------------------------------------------------------
[Command]
name = "Kamehameha Wave"
command = ~D, F, a
time = 30
[Command]
name = "Power Pole EXTEND!"
command = ~D, F, b
time = 30
[Command]
name = "Dragon Fist"
command = ~D, F, s
time = 30
[Command]
name = "Oozaru"
command = c
time = 30
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

;===========================================================================
[Statedef -1]

[State -1, Combo condition Reset]
type = VarSet
trigger1 = 1
var(1) = 0

[State -1, Combo condition Check]
type = VarSet
trigger1 = statetype != A
trigger1 = ctrl
trigger2 = (stateno = [200,299]) || (stateno = [400,499])
trigger2 = stateno != 440 ;Except for sweep kick
trigger2 = movecontact
var(1) = 1
;===========================================================================
;Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
;Hop Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;===========================================================================
;Auto Combo Hand
[State -1, Auto Combo Hand]
type = ChangeState
value = 200
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Auto Combo Foot
[State -1, Auto Combo Foot]
type = ChangeState
value = 206
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Auto Combo Power Pole
[State -1, Auto Combo Power Pole]
type = ChangeState
value = 203
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;AIR Auto Combo Hand
[State -1, AIR Auto Combo Hand]
type = ChangeState
value = 210
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;AIR Auto Combo Foot
[State -1, AIR Auto Combo Foot]
type = ChangeState
value = 212
triggerall = command = "y"
triggerall = command != "holddown"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;AIR Power Pole
[State -1, AIR Power Pole]
type = ChangeState
value = 214
triggerall = command = "z"
triggerall = command != "holddown"
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Kamehameha Wave
[State -1, Kamehameha Wave]
type = ChangeState
value = 500
triggerall = command = "Kamehameha Wave"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Power Pole EXTEND!
[State -1, Power Pole EXTEND!]
type = ChangeState
value = 510
triggerall = command = "Power Pole EXTEND!"
triggerall = power >= 1000
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Dragon Fist
[State -1, Dragon Fist]
type = ChangeState
value = 520
triggerall = command = "Dragon Fist"
triggerall = power >= 1500
trigger1 = statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;Oozaru
[State -1, Oozaru]
type = ChangeState
value = 550
triggerall = command = "Oozaru"
triggerall = power >= 500
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
;Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl
