[statedef -2]

;-| AI|--------------------------------------------------------------

[state -1]
type = changestate
triggerall = var(59)=1 && RoundState = 2
trigger1 = stateno = 95 && (p2dist y > 90||p2dist y < -90) && p2dist x < 50
value = 900
ignorehitpause = 1

[state -1]
type = changestate
trigger1 = var(59)=1 && ctrl && statetype = S && p2dist x > 90 && random%8=0 && RoundState = 2
value = 91
ignorehitpause = 1

[state -1]
type = changestate
trigger1 = command = "Fly" && ctrl && stateno != 95
value = 95
ignorehitpause = 1

[state -1]
type = changestate
triggerall = var(59)=1 && p2dist x <= 50 && random < 80 && RoundState = 2
trigger1 = ctrl && (statetype = S||statetype = C)
trigger2 = stateno = 95
value = ifelse(pos y < 0,200,ifelse(random&2=0,200,400))
ignorehitpause = 1

[state -1]
type = changestate
triggerall = var(59)=1 && p2dist x <= 50 && random < 150 && RoundState = 2
trigger1 = ctrl && (statetype = S||statetype = C)
trigger2 = ((stateno = 200 || stateno = 400)||(stateno = 230 || stateno = 430)) && movecontact
trigger3 = stateno = 95
value = ifelse(pos y < 0,210,ifelse(random&2=0,210,410))
ignorehitpause = 1

[state -1]
type = changestate
triggerall = var(59)=1 && p2dist x <= 60 && random < 200 && RoundState = 2
trigger1 = ctrl && (statetype = S||statetype = C)
trigger2 = ((stateno = 200 || stateno = 400)||(stateno = 230 || stateno = 430)||(stateno = 210 || stateno = 410)||(stateno = 240 || stateno = 440)) && movecontact
trigger3 = stateno = 95
value = ifelse(pos y < 0,220,ifelse(random&2=0,220,420))
ignorehitpause = 1

[state -1]
type = changestate
trigger1 = var(59)=1 && stateno = 220 && movecontact && time > 0 && random < 333 && RoundState = 2
value = 225
ignorehitpause = 1

[state -1]
type = changestate
triggerall = var(59)=1 && p2dist x <= 60 && random < 230 && RoundState = 2
trigger1 = ctrl && (statetype = S||statetype = C)
trigger2 = (stateno = 200 || stateno = 400) && movecontact
trigger3 = stateno = 95
value = ifelse(pos y < 0,230,ifelse(random&2=0,230,430))
ignorehitpause = 1

[state -1]
type = changestate
triggerall = var(59)=1 && p2dist x <= 60 && random < 270 && RoundState = 2
trigger1 = ctrl && (statetype = S||statetype = C)
trigger2 = ((stateno = 200 || stateno = 400)||(stateno = 230 || stateno = 430)||(stateno = 210 || stateno = 410)) && movecontact
trigger3 = stateno = 95
value = ifelse(pos y < 0,240,ifelse(random&2=0,240,440))
ignorehitpause = 1

[state -1]
type = changestate
triggerall = var(59)=1 && p2dist x <= 60 && random < 300 && RoundState = 2
trigger1 = ctrl && (statetype = S||statetype = C)
trigger2 = ((stateno = 200 || stateno = 400)||(stateno = 230 || stateno = 430)||(stateno = 210 || stateno = 410)||(stateno = 240 || stateno = 440)) && movecontact
trigger3 = stateno = 95
value = ifelse(pos y < 0,250,ifelse(random&2=0,250,450))
ignorehitpause = 1

[state -1]
type = changestate
triggerall = var(59)=1 && p2dist x <= 60 && random < 100 && RoundState = 2
trigger1 = statetype = A && ctrl && stateno != 95
trigger2 = stateno=1202&&movehit
value = 600
ignorehitpause = 1

[state -1]
type = changestate
triggerall = var(59)=1 && p2dist x <= 60 && random < 180 && RoundState = 2
trigger1 = statetype = A && ctrl && stateno != 95
trigger2 = (stateno=600||stateno=630) && movecontact
trigger3 = stateno=1202&&movehit
value = 610
ignorehitpause = 1

[state -1]
type = changestate
triggerall = var(59)=1 && p2dist x <= 60 && random < 235 && RoundState = 2
trigger1 = statetype = A && ctrl && stateno != 95
trigger2 = (stateno=600||stateno=630||stateno=610||stateno=640) && movecontact
trigger3 = stateno=1202&&movehit
value = 620
ignorehitpause = 1

[state -1]
type = changestate
triggerall = var(59)=1 && p2dist x <= 60 && random < 275 && RoundState = 2
trigger1 = statetype = A && ctrl && stateno != 95
trigger2 = stateno=600 && movecontact
trigger3 = stateno=1202&&movehit
value = 630
ignorehitpause = 1

[state -1]
type = changestate
triggerall = var(59)=1 && p2dist x <= 60 && random < 310 && RoundState = 2
trigger1 = statetype = A && ctrl && stateno != 95
trigger2 = (stateno=600||stateno=630||stateno=610) && movecontact
trigger3 = stateno=1202&&movehit
value = 640
ignorehitpause = 1

[state -1]
type = changestate
triggerall = var(59)=1 && p2dist x <= 60 && random < 333 && RoundState = 2
trigger1 = statetype = A && ctrl && stateno != 95
trigger2 = (stateno=600||stateno=630||stateno=610||stateno=640) && movecontact
trigger3 = stateno=1202&&movehit
value = 650
ignorehitpause = 1

[state -1]
type = changestate
triggerall = var(59)=1 && (random = [600,610]) && (((p2dist x)/(p2dist y))=[0.8,1.2]) && RoundState = 2
trigger1 = stateno = 95
trigger2 = ((stateno = [200,250])||(stateno = [400,450])) && movecontact
value = 1010
ignorehitpause = 1

[state -1]
type = changestate
triggerall = var(59)=1 && (random = [600,610]) && (((p2dist x)/(p2dist y))=[-1.2,-0.8]) && RoundState = 2
trigger1 = statetype = S && ctrl
trigger2 = ((stateno = [200,250])||(stateno = [400,450])) && movecontact
trigger3 = stateno = 95
value = 1005
ignorehitpause = 1

[state -1]
type = changestate
triggerall = var(59)=1 && (random = [600,610]) && p2dist y < 40 && p2dist y > -40 && RoundState = 2
trigger1 = statetype != A && ctrl && (pos y = [-2,2])
trigger2 = ((stateno = [200,250])||(stateno = [400,450])) && movecontact
value = 1015
ignorehitpause = 1

[state -1]
type = changestate
triggerall = var(59)=1 && (random = [600,610]) && p2dist y < 40 && p2dist y > -40 && RoundState = 2
trigger1 = statetype = S && ctrl
trigger2 = ((stateno = [200,250])||(stateno = [400,450])) && movecontact
trigger3 = stateno = 95
value = 1000
ignorehitpause = 1

[state -1]
type = changestate
triggerall = var(59)=1 && (random = [600,660]) && (((p2dist x)/(p2dist y))=[0.8,1.2]) && RoundState = 2
trigger1 = statetype = A && ctrl && stateno != 95
trigger2 = (stateno = [600,650]) && movecontact
value = 1030
ignorehitpause = 1

[state -1]
type = changestate
triggerall = var(59)=1 && (random = [600,660])  && (((p2dist x)/(p2dist y))=[-1.2,-0.8]) && RoundState = 2
trigger1 = statetype = A && ctrl && stateno != 95
trigger2 = (stateno = [600,650]) && movecontact
value = 1025
ignorehitpause = 1

[state -1]
type = changestate
triggerall = var(59)=1 && (random = [600,660]) && p2dist y < 40 && p2dist y > -40 && RoundState = 2
trigger1 = statetype = A && ctrl
trigger2 = (stateno = [600,650]) && movecontact
value = 1020
ignorehitpause = 1

[state -1]
type = changestate
triggerall = var(59)=1 && p2dist x <= 60 && random < 335 && RoundState = 2
trigger1 = statetype = S && ctrl
trigger2 = ((stateno = [200,250])||(stateno = [400,450])) && movecontact
trigger3 = stateno = 95
value = 1100
ignorehitpause = prevstateno!=1100

[state -1]
type = changestate
triggerall = var(59)=1 && p2dist x <= 70 && (random = [670,755]) && RoundState = 2
trigger1 = statetype = S && ctrl
trigger2 = ((stateno = [200,250])||(stateno = [400,450])) && movecontact
trigger3 = stateno = 95
value = ifelse(random%7<=2,1202,ifelse(random%7=6||random%7=5,1200,1201))
ignorehitpause = 1

[state -1]
type = changestate
triggerall = var(59)=1 && (random = [620,630])  && random > 430 && RoundState = 2
trigger1 = statetype = S && ctrl
trigger2 = ((stateno = [200,250])||(stateno = [400,450])) && movecontact && var(30) = 0
value = 1300
ignorehitpause = 1

[state -1]
type = changestate
triggerall = var(59)=1 && random > 995 && power >= 1000 && RoundState = 2
trigger1 = statetype = S && ctrl
trigger2 = ((stateno = [200,250])||(stateno = [400,450])) && movehit
trigger3 = stateno=1101
trigger4 = stateno = 95
trigger5 = (stateno=1000||stateno=1015) && (helper(1000), movehit)
value = 3000
ignorehitpause = 1

[state -1]
type = changestate
triggerall = var(59)=1 && random > 987 && power >= 2000 && RoundState = 2
trigger1 = ctrl
trigger2 = ((stateno = [200,250])||(stateno = [400,450])) && movehit
trigger3 = (stateno = [600,650]) && movecontact
trigger4 = stateno=1101
trigger5 = ((stateno=[1200,1202])|| stateno=1300)&&movecontact
trigger6 = stateno = 95
trigger7 = (stateno=1000||stateno=1015) && (helper(1000), movehit)
value = ifelse(pos y >= 0, 3100, 3150)
ignorehitpause = 1

[state -1]
type = changestate
triggerall = var(59)=1 && (random = [880,900]) && power >= 1000 && p2dist y < 45 && p2dist y > -37 && RoundState = 2
trigger1 = ctrl
trigger2 = ((stateno = [200,250])||(stateno = [400,450])) && movehit
trigger3 = (stateno = [600,650]) && movecontact
trigger4 = stateno=1101
trigger5 = ((stateno=[1200,1202])|| stateno=1300)&&movecontact
trigger6 = stateno = 95
trigger7 = (stateno=1000||stateno=1015) && (helper(1000), movehit)
value = 3200
ignorehitpause = 1

[state -1]
type = changestate
triggerall = var(59)=1 && p2dist x <= 30 && (random = [940,975]) && power >= 3000 && RoundState = 2
trigger1 = statetype = S && ctrl
trigger2 = ((stateno = [200,250])||(stateno = [400,450])) && movehit
trigger3 = stateno=1101
trigger4 = stateno = 95
value = 3400
ignorehitpause = 1

[state -1]
type = changestate
triggerall = power >= 2000 && var(59) = 1 && p2dist y < 100 && p2dist y > -100 && random > 9^75 && RoundState = 2
trigger1 = statetype = S && ctrl
trigger2 = ((stateno = [200,250])||(stateno = [400,450])) && movecontact
trigger3 = stateno=1101
trigger4 = (stateno=1000||stateno=1015) && (helper(1000), movecontact)
value = 3300
ignorehitpause = 1

;-| Stuff |--------------------------------------------------------------

[State -2]
type = changestate
trigger1 = matchover = 1 && lose = 1 && stateno =5150
value = 171

[state -2]
type = varset
trigger1 = pos y >= 0
var(30) = 0

[state -2]
type = varset
trigger1 = pos y >= 0
var(31) = 0

[State -2]
type=RemoveExplod
trigger1=stateno!=1100&&stateno!=1101
ID=1100
ignorehitpause=1

[State -2]
type=RemoveExplod
trigger1=stateno!=3000
ID=3000
ignorehitpause=1

[State -2]
type=RemoveExplod
trigger1=stateno!=3100
trigger2=stateno=3100&&animelem=2
ID=3102
ignorehitpause=1

[State -2]
type=RemoveExplod
trigger1=stateno!=3150
trigger2=stateno=3150&&animelem=2
ID=3152
ignorehitpause=1

[State -2]
type=RemoveExplod
trigger1=(stateno!=3401)||(stateno=3401&&anim!=3401)
ID=3401
ignorehitpause=1

[State -2]
type=RemoveExplod
trigger1=stateno!=1300
ID=1300
ignorehitpause=1
