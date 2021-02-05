
[Command]
name = "CPU_1"
command = F, F, F, F, F, F
time = 1
[Command]
name = "CPU_2"
command = b, b, b, b, b, b
time = 1
[Command]
name = "CPU_3"
command = D, U, D, U, D, U 
time = 1
[Command]
name = "CPU_4"
command = a, b, b, a, a, b 
time = 1
[Command]
name = "CPU_5"
command = y, y, y, y, y, y 
time = 1
[Command]
name = "CPU_6"
command = x, a, x, a, x, a 
time = 1
[Command]
name = "CPU_7"
command = B, B, B, B, B, B
time = 1
[Command]
name = "CPU_8"
command = z, z, z, z, z 
time = 1
[Command]
name = "CPU_9"
command = c, c, c, c, c, c 
time = 1
[Command]
name = "CPU_10"
command = ~D, B, F, a
time = 1
[Command]
name = "CPU_11"
command = ~D, B, a
time = 1
[Command]
name = "CPU_12"
command = ~D, B, F, b
time = 1
[Command]
name = "CPU_13"
command = ~D, DB, B, y
time = 1
[Command]
name = "CPU_14"
command = ~D, DB, B, x
time = 1
[Command]
name = "CPU_15"
command = ~F, DF, F, y
time = 1
[Command]
name = "CPU_16"
command = ~D, F, y
time = 1
[Command]
name = "brutality"    
command = B,F a
time = 100
[Command]
name = "FATALITY"
command = B,F x
time = 100
[Command]
name = "combo 4"
command = D, DB, B, b
time = 10
[Command]
name = "combo 5"
command = D, DB, B,  a
time = 10
[Command]
name = "start"
command = s
time = 1
[Command]
name = "camehameha fraco"
command = D, DB, B, F, x
time = 30
[Command]
name = "KiBeam"
command = ~D, DB, B, F, a
time = 30
[Command]
name = "sequencia forte"
command = ~D, DB, B, F, z
time = 30
[Command]
name = "gohan camehameha"
command = D, DB, B, F ,y
time = 30
[Command]
name = "gohan furioso"
command = D, DB, B, F ,b
time = 30
[Command]
name = "kiaiho"
command = ~D, DF, F, z
[Command]
name = "kiaiho2"
command = ~D, DB, B, z
[Command]
name = "QCF_b"
command = ~D, DF, F, c
time = 10
[Command]
name = "porradas"
command = D, DB, B, c
time = 10
[Command]
name = "counter attack"
command = x+y
time = 20
[Command]
name = "kick"
command = B, a
[Command]
name = "kick2"
command = B, b
[Command]
name = "kick3"
command = B, c
[Command]
name = "rafagas de puños A"
command = x, x
[Command]
name = "teleporte"
command = x+a
time = 1
[Command]
name = "rafagas de puños B"
command = y, y
[Command]
name = "combos consecutivos"
command = D,F, x
[Command]
name = "patadas consecutivas"
command = D,F, a
time = 10
[Command]
name = "patadaerea"
command = D, b
time = 10
[Command]
name = "patadaerea2"
command = D, a
time = 10
[Command]
name = "fireball2"
command = D, DB, B, F, a
time = 10
[Command]
name = "take"
command = D,F, b
time = 10
[Command]
name = "take1"
command = D,F, b
time = 10
[Command]
name = "combo 2"
command = ~D, DB, B, y
time = 10
[Command]
name = "combo 1"
command = ~D, DB, B, x
time = 10
[Command]
name = "TELETRANSPORTACION + CODAZO"
command = D,F, y
time = 10
[Command]
name="Super Jump"
command=~D,U
[Command]
name = "FF"
command = F, F
time = 10
[Command]
name = "BB"
command = B, B
time = 10
[Command]
name = "UU"
command = U, U
time = 10
[Command]
name = "DD"
command = D, D
time = 10
[Command]
name = "recovery"
command = x+y
time = 1
[Command]
name = "ab"
command = x+y
time = 1
[Command]
name = "fly"
command = b+y
time = 1
[Command]
name = "counter"
command = D, B, D, B
time = 30
[Command]
name = "down_a"
command = /$D,a
time = 1
[Command]
name = "down_b"
command = /$D,b
time = 1
[Command]
name = "down_y"
command = c
time = 1
[Command]
name = "rafagas de puños A"
command = B, x
time = 1
[Command]
name = "rafagas de puños B"
command = B, y
time = 1
[Command]
name = "a"
command = a
time = 1
[Command]
name = "b"
command = c
time = 1
[Command]
name = "c"
command = b
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
name = "fire_ball"
command = z
time = 30
[Command]
name = "z"
command = z
time = 1
[Command]
name = "start"
command = s
time = 1
[Command]
name = "holdfwd"
command = /$F
time = 1
[Command]
name = "holdback"
command = /$B
time = 1
[Command]
name = "holdup"
command = /$U
time = 1
[Command]
name = "holddown"
command = /$D
time = 1
[Command]
name = "charge"
command = /a
[Command]
name = "charge 1"
command = /b
[Command]
name = "hold_z"
command = /$z
time = 1
[Statedef -1]
[state -1, UPA Punch]
type = changestate
triggerall = power >= 1000
value = 275989
triggerall = command = "sequencia forte"
trigger1 = ((ctrl) && (statetype = S))
[State -1]
type = ChangeState
value = 1510
triggerall= command = "fly"
trigger1 = statetype != A
trigger1 = ctrl = 1
[State -1]
type = changestate
value = 10050
triggerall = p2bodydist x <= 120
triggerall = command = "take"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1510
ignorehitpause = 1
[State -1]
type = changestate
value = 10050
triggerall = command = "take1"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1510
ignorehitpause = 1
[State -1]
type = ChangeState
value = 1750109
triggerall = command = "gohan camehameha"
triggerall = power >= 3000
triggerall = stateno != 1700
triggerall = numprojid(1700) = 0
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 1500
trigger3 = statetype != A
trigger3 = hitdefattr = SC, NA, SA
trigger3 = movecontact = 1
trigger4= stateno = 1500
[State -1]
type = ChangeState
value = 147
triggerall = command = "gohan furioso"
triggerall = power >= 3000
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 1500
[State -1, KiBeam]
type = ChangeState
value = 1900
triggerall = command = "KiBeam" && command != "holddown" && power >= 1000
trigger1 = statetype = S && ctrl
trigger2 = stateno = 1500
[State -1, Chain Ki Beam]
type = ChangeState
value = 1905
triggerall = command = "KiBeam" && command != "holddown" && power >= 1000
trigger1 = (stateno = 220 || stateno = 225) && (movecontact)
trigger2 = (stateno = 240 || stateno = 250 || stateno = 1300) && (movecontact)
trigger3 = (stateno = [1000, 1003]) && (NumProjID(12110) = 0) && (time > 5)
[State -1]
type = changestate
value = 1060989
triggerall = command ="QCF_b"
trigger1 = statetype = S
trigger1 = ctrl = 1
[State -1: 		Triangle Kick]
type 			= ChangeState
value 		= 1030
triggerall 		= (Command = "patadaerea")
trigger1		= ((StateType = A) && (Ctrl))
ignorehitpause = 1
[State -1]
type = ChangeState
value = 336
triggerall = command = "teleporte"
trigger1 = statetype != A
trigger1 = ctrl = 1
trigger2 = stateno = 1510
trigger3 = stateno = 1500
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl
[State -1]
type = ChangeState
value = 2123
triggerall = command = "kiaiho"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
[State -1]
type = ChangeState
value = 21239
triggerall = power >= 500
triggerall = command = "kiaiho2"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
[State -1]
type = ChangeState
value = 87479
triggerall = command = "porradas"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 202
trigger2 = MoveContact
trigger3 = stateno = 215
trigger3 = MoveContact
trigger4 = stateno = 213
trigger4 = MoveContact
trigger5 = stateno = 200
trigger5 = MoveContact
trigger6 = stateno = 201
trigger6 = MoveContact
trigger7 = stateno = 211
trigger7 = MoveContact
trigger8 = stateno = 214
trigger8 = MoveContact
trigger9 = stateno = 300
trigger9 = MoveContact
trigger10 = stateno = 301
trigger10= MoveContact
trigger11= stateno = 302
trigger11= MoveContact
trigger12= stateno = 303
trigger12= MoveContact
trigger13= stateno = 400
trigger13= MoveContact
trigger14= stateno = 405
trigger14= MoveContact
trigger15= stateno = 401
trigger15= MoveContact
trigger16= stateno = 402
trigger16= MoveContact
trigger17= stateno = 403
trigger17= MoveContact
trigger18= stateno = 404
trigger18= MoveContact
trigger19 = stateno = 1500
[State -1]
type = Changestate
trigger1 = ctrl
trigger1 = P2Life = 1
trigger1 = NumHelper(7000) = 1
trigger1 = P2StateNo = 003
trigger1 = RoundNo != 1
trigger1 = var(58) >= 1
trigger1 = command = "FATALITY"
trigger1 = statetype = S
trigger1 = (p2statetype = S) || (p2statetype = C)
value = 3199
[State -1]
type = ChangeState
value = 1850
triggerall = command = "patadaerea2"
trigger1 = statetype = A
trigger1 = ctrl = 1
trigger2 = stateno = 1900
ignorehitpause = 1
[State -1,SJ]
type=ChangeState
value=707
triggerall=var(59)=0
triggerall=command="Super Jump"
triggerall=alive
triggerall=pos y>=0
triggerall=!win
trigger1=(statetype!=A&&ctrl)
[State -1]
type = changestate
value = 1162
triggerall = command = "combo 4"
trigger1 = statetype = S
trigger1 = ctrl = 1
ignorehitpause = 1
[State -1]
type = changestate
value = 1182
triggerall = command = "combo 5"
trigger1 = statetype = S
trigger1 = ctrl = 1
ignorehitpause = 1
[state -1, UPA Punch]
type = changestate
value = 275
triggerall = command = "ab"
trigger1 = ((ctrl) && (statetype = S))
[State -1]
type = ChangeState
value = 1114
triggerall = command = "fireball2"
trigger1 = statetype = S
trigger1 = Power >= 1000
trigger1 = ctrl = 1
[State -1]
type = ChangeState
value = 1111
triggerall = command = "camehameha fraco"
trigger1 = statetype = S
trigger1 = Power >= 2000
trigger1 = ctrl = 1
[State -1]
type = ChangeState
value = 100
triggerall = power > 300
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl = 1
ignorehitpause = 1
[State -1]
type = ChangeState
triggerall = power > 300
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl = 1
ignorehitpause = 1
[State -1, Kung Fu Throw]
type = ChangeState
value = 800
triggerall = command = "y"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 3
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 5
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H
[State -1, Stand Light Punch]
type = ChangeState
value = 201
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = command != "combo 1"
triggerall = command != "combos consecutivos"
triggerall = command != "rafagas de puños A"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 6
trigger3 = stateno = 1510
trigger4 = stateno = 1500
ignorehitpause = 1
[State -1, 2nd Puño x]
type = ChangeState
value = 202
triggerall = alive = 1  && command = "x" && stateno = 201 && movecontact 
trigger1 = statetype = S
trigger2 = stateno = 1510
trigger3 = stateno = 1500
[State -1, 3nd Puño x]
type = ChangeState
value = 207
triggerall = power > 500
triggerall = alive = 1  && command = "x" && stateno = 202 && movecontact 
trigger1 = statetype = S
trigger2 = stateno = 1510
trigger3 = stateno = 1500
[State -1, Stand Light Punch]
type = ChangeState
value = 207
triggerall = power > 500
triggerall = command = "rafagas de puños A"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 1510
trigger3 = stateno = 1500
[State -1, Stand Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 6
ignorehitpause = 1
[State -1, Stand Strong Punch]
type = ChangeState
value = 210
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = command != "fly"
triggerall = command != "combo 2"
triggerall = command != "TELETRANSPORTACION + CODAZO"
triggerall = command != "camehameha fraco"
triggerall = command != "rafagas de puños B"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 200
trigger2 = time > 6
trigger3 = stateno = 1510
trigger4 = stateno = 1500
ignorehitpause = 1
[State -1, 2nd Puño Y]
type = ChangeState
value = 203
triggerall = alive = 1  && command = "y" && stateno = 210 && movecontact 
trigger1 = statetype = S
trigger2 = stateno = 1510
trigger3 = stateno = 1500
[State -1, 3nd Puño Y]
type = ChangeState
value = 208
triggerall = power > 500
triggerall = alive = 1  && command = "y" && stateno = 203 && movecontact 
trigger1 = statetype = S
trigger2 = stateno = 1510
trigger3 = stateno = 1500
[State -1, Stand Light Punch]
type = ChangeState
value = 208
triggerall = power > 500
triggerall = command = "rafagas de puños B"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 1510
trigger3 = stateno = 1500
[State -1, Stand Light Kick]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = command != "combo 4"
triggerall = command != "combo 5"
triggerall = command != "FATALITY"
triggerall = command != "kick"
triggerall = command != "patadas consecutivas"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 7
trigger3 = (stateno = 230) && time > 8
trigger4 = stateno = 1510
trigger5 = stateno = 1500
[State -1, 2nd Patada A]
type = ChangeState
value = 231
triggerall = alive = 1  && command = "a" && stateno = 230 && movecontact 
trigger1 = statetype = S
trigger2 = stateno = 1510
trigger3 = stateno = 1500
[State -1, 3ra patada A]
type = ChangeState
value = 206
triggerall = power >= 500
triggerall = alive = 1  && command = "a" && stateno = 231 && movecontact
trigger1 = statetype = S
trigger2 = stateno = 1510
trigger3 = stateno = 1500
[State -1, Stand Light Kick]
type = ChangeState
value = 270
triggerall = command = "kick"
triggerall = command != "holddown"
triggerall = command != "combo 4"
triggerall = command != "combo 5"
triggerall = command != "FATALITY"
time = 30
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 7
trigger3 = (stateno = 230) && time > 9
trigger4 = stateno = 1510
trigger5 = stateno = 1500
ignorehitpause = 1
[State -1, Standing Strong Kick]
type = ChangeState
value = 240
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = command != "fly"
triggerall = command != "take"
triggerall = command != "take1"
triggerall = command != "kick2"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6
trigger4 = stateno = 1510
trigger5 = stateno = 1500
ignorehitpause = 1
[State -1, Standing Strong Kick]
type = ChangeState
value = 280
triggerall = command = "kick2"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6
trigger4 = stateno = 1510
trigger5 = stateno = 1500
ignorehitpause = 1
[State -1, Standing high Kick]
type = ChangeState
value = 250
triggerall = command = "c"
triggerall = command != "holddown"
triggerall = command != "kick3"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = (stateno = 200) && time > 5
trigger3 = (stateno = 230) && time > 6
trigger4 = stateno = 1510
trigger5 = stateno = 1500
ignorehitpause = 1
[State -1, 2da patada C]
type = ChangeState
value = 212
triggerall = power > 500
triggerall = alive = 1  && command = "c" && stateno = 250 && movecontact 
trigger1 = statetype = S
[State -1, Standing high Kick]
type = ChangeState
value = 281
triggerall = command =  "kick3"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = stateno = 1510
trigger3 = stateno = 1500
ignorehitpause = 1
[State -1, Taunt]
type = null
value = 195
triggerall = command = "start"
trigger1 = statetype != A
trigger1 = ctrl
[State -1, Crouching Light Punch]
type = ChangeState
value = 400
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
ignorehitpause = 1
[State -1, Crouching Strong Punch]
type = ChangeState
value = 410
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)
ignorehitpause = 1
[State -1, Crouching Light Kick]
type = ChangeState
value = 430
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)
ignorehitpause = 1
[State -1, 2nd Punch X]
type = ChangeState
value = 440
triggerall = alive = 1  && command = "a" && stateno = 430 && movecontact = 1
trigger1 = statetype = C
[State -1, Crouching Strong Kick]
type = ChangeState
value = 431
triggerall = command = "c"
triggerall = command = "holddown"
trigger1 = statetype = C
trigger1 = ctrl
trigger2 = (stateno = 400) || (stateno = 430)
trigger2 = (time > 9) || (movecontact && time > 5)
ignorehitpause = 1
[State -1, 2nd Punch X]
type = ChangeState
value = 440
triggerall = alive = 1  && command = "a" && stateno = 431 && movecontact = 1
trigger1 = statetype = C
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 610 && MoveContact
trigger2 = statetime >= 5
trigger3 = (stateno = 641) && time > 6
trigger4 = (stateno = 640) && time > 7
trigger5 = (stateno = 630) && time > 8
ignorehitpause = 1
[State -1, 2nd Punch X]
type = ChangeState
value = 612
triggerall = alive = 1  && command = "x" && stateno = 600 && movecontact = 1
trigger1 = statetype = A
[State -1, Jump Strong Punch]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 600) && time > 5
trigger3 = (stateno = 630) && time > 6
trigger4 = (stateno = 640) && time > 7
trigger5 = (stateno = 641) && time > 8
trigger6 = (stateno = 611) && time > 9
ignorehitpause = 1
[State -1, 2nd Punch X]
type = ChangeState
value = 612
triggerall = alive = 1  && command = "y" && stateno = 610 && movehit = 1
trigger1 = statetype = A
[State -1, Jump Strong Punch]
type = null
value = 611
triggerall = command = "z"
triggerall = command != "fire_ball"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 610 
[State -1, Jump Light Kick]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 641) && time > 5
trigger3 = (stateno = 640) && time > 6
trigger4 = (stateno = 600) && time > 7
trigger5 = (stateno = 611) && time > 8
trigger6=  (stateno = 610) && time > 9
ignorehitpause = 1
[State -1, Jump Strong Kick]
type = ChangeState
value = 641
triggerall = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = (stateno = 630) && time > 5
trigger3 = (stateno = 640) && time > 6
trigger4 = (stateno = 600) && time > 7
trigger5 = (stateno = 610) && time > 8
trigger6 = (stateno = 611) && time > 9
ignorehitpause = 1
[State -1, 2nd Punch X]
type = ChangeState
value = 631
triggerall = alive = 1  && command = "a" && stateno = 641 && movehit = 1
trigger1 = statetype = A
[State -1, Jump Strong Kick]
type = ChangeState
value = 640
triggerall = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
trigger2 = stateno = 600 || stateno = 630 
trigger2 = movecontact
[State -1]
type = ChangeState
value = 730
triggerall = ctrl = 1
trigger1 = command = "charge"
trigger1 = command = "charge 1"
trigger1 = statetype = S
trigger2 = stateno = 1500
[state -1, DB Smash]
type = changestate
value = 450
triggerall = command = "down_y"
trigger1 = ((ctrl) && (statetype = A) && (command! = "holddown"))
trigger2 = ((stateno = 400) && (animelem = 2, >1))
trigger3 = ((stateno = 401) && (animelem = 2, >1))
trigger4 = ((stateno = 405) && (animelem = 2, >1))
trigger5 = ((stateno = 410) && (animelem = 2, >1))
trigger6 = ((stateno = 411) && (animelem = 2, >1))
trigger7 = ((stateno = 415) && (animelem = 2, >1))
trigger8 = ((stateno = 100) && (animelem = 2, >8))
ignorehitpause = 1
[State -1]
type = changestate
value = 1059
triggerall = command = "combo 1"
trigger1 = statetype = S
trigger1 = ctrl = 1
ignorehitpause = 1
[State -1]
type = changestate
value = 1155
triggerall = command = "combo 2"
trigger1 = statetype = S
trigger1 = ctrl = 1
ignorehitpause = 1
[State -1]
type = changestate
value = 233
triggerall = command = "TELETRANSPORTACION + CODAZO"
trigger1 = statetype = S
trigger1 = ctrl 
[State -1]
type = ChangeState
value = 700
triggerall = power >= 1
triggerall = command = "fire_ball"
trigger1 = statetype = S
trigger1 = ctrl = 1
trigger2 = stateno = 1510
trigger3 = stateno = 1500
ignorehitpause = 1
[State -1]
type = Changestate
trigger1 = ctrl 
trigger1 = P2Life <= 1 
trigger1 = NumHelper(9010) = 0
trigger1 = P2StateNo != 003
trigger1 = RoundNo != 1
trigger1 = var(58) >= 1
trigger1 = statetype = S
trigger1 = (p2statetype = S) || (p2statetype = C)
value = 9000 
[State -1]
type = Changestate
value = 8550
triggerall = P2Life = 1
triggerall = NumHelper(9010) = 1
triggerall = enemy(0), stateno = 003
triggerall = RoundNo != 1
triggerall = var(58) >= 1
trigger1 = command = "brutality"
trigger1 = ctrl = 1
trigger1 = statetype = S
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = P2BodyDist X >= 60
trigger1 = p2Dist X <= 300
[State -1]
type = VarSet
trigger1 = command = "CPU_1"
trigger2 = command = "CPU_2"
trigger3 = command = "CPU_3"
trigger4 = command = "CPU_4"
trigger5 = command = "CPU_5"
trigger6 = command = "CPU_6"
trigger7 = command = "CPU_7"
trigger8 = command = "CPU_8"
trigger9 = command = "CPU_9"
trigger10 = command = "CPU_10"
trigger11 = command = "CPU_11"
trigger12 = command = "CPU_12"
trigger13 = command = "CPU_13"          
trigger14 = command = "CPU_14"
trigger15 = command = "CPU_15"
trigger16 = command = "CPU_16"
v = 59
value = 1
[State -1]
type = ChangeState
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = P2BodyDist X <= 1000 && Random <= 650
trigger1 = Ctrl && P2MoveType = A && StateType = S
value = 1059
[State -1]
type = ChangeState
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = P2BodyDist X <= 1000 && Random <= 650
trigger1 = Ctrl && P2MoveType = A && StateType = S
value = 1155
[State -1]
type = ChangeState
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = P2BodyDist X <= 1000 && Random <= 650
trigger1 = Ctrl && P2MoveType = A && StateType = S
value = 1170
[State -1]
type = ChangeState
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = P2BodyDist X <= 1000 && Random <= 650
trigger1 = Ctrl && P2MoveType = A && StateType = S
value = 1182
[State -1]
type = ChangeState
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = P2BodyDist X <= 100 && Random <=0
trigger1 = Ctrl && P2MoveType = A && StateType = S
value = 730
[State -1]
type = ChangeState
trigger1 = RoundState = 2 && Var(59) != 0
trigger1 = P2BodyDist X <= 100 && Random <=0
trigger1 = Ctrl && P2MoveType = A && StateType = S
value = 731
[state -1]
type = poweradd
trigger1 = roundno = 1
trigger1 = roundstate = 0
trigger1 = power < 3000
value = 730
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = !win
trigger1 = Var(59) = 1
trigger1 = Random <= 900
trigger1 = P2bodydist X > 10
trigger1 = statetype = S
trigger1 = ctrl
[State -1]
type = ChangeState
value = 207
triggerall = power > 500
triggerall = !win
triggerall = P2bodydist X < 20
triggerall = Var(59) = 1
trigger1 = Random <= 700
trigger1 = statetype = S
trigger1 = ctrl
trigger2 = Random <= 500
trigger2 = stateno = 208 && MoveHit = 1
[State -2]
type = ChangeState
value = 208
triggerall = power > 500
triggerall = !win
triggerall = Var(59) = 1
triggerall = P2bodydist X < 20
trigger1 = Random <= 500
trigger1 = statetype = S
trigger1 = ctrl
[State -2]
type = ChangeState
value = 233
triggerall = !win
triggerall = Var(59) = 1
triggerall = P2bodydist X > 20
trigger1 = Random <= 500
trigger1 = statetype = S
trigger1 = ctrl
[State -2]
type = ChangeState
value = 130
triggerall = !win
triggerall = p2movetype = A
triggerall = Var(59) = 1
triggerall = Random <= 449
trigger1 = ctrl
[State -2]
type = ChangeState
value = 50
triggerall = !win
triggerall = Var(59) = 1
trigger1 = P2bodydist X > 50
trigger1 = Random <= 200
trigger1 = statetype = S
trigger1 = ctrl
[State -2]
type = ChangeState
value = 707
triggerall = !win
triggerall = Var(59) = 1
trigger1 = P2bodydist X < 50
trigger1 = var(59) >= 200
trigger1 = statetype = S
trigger1 = ctrl
[State -1]
type = ChangeState
value = 235
triggerall = command = "combos consecutivos"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
[State -1]
type = ChangeState
value = 237
triggerall = command = "patadas consecutivas"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
[State -2]
type = ChangeState
triggerall = power > 300
value = 237
triggerall = !win
triggerall = P2bodydist X < 40
triggerall = Var(59) = 1
trigger1 = Random <= 500
trigger1 = statetype = S
trigger1 = ctrl
[State -2]
type = ChangeState
value = 235
triggerall = power > 300
triggerall = !win
triggerall = P2bodydist X < 50
triggerall = Var(59) = 1
trigger1 = Random <= 500
trigger1 = statetype = S
trigger1 = ctrl
