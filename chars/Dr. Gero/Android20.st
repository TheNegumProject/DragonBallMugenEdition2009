[statedef 90]
type = S
movetype = I
physics = S
anim = 40
ctrl=0

[State 90]
type=AfterImage
trigger1=time=0
time=10
length=10
timegap=1
palcolor=256
palinvertall=0
palbright=30,30,30
palcontrast=120,120,120
palpostbright=0,0,0
paladd=0,0,0
palmul=.65,.65,.65
trans=add

[State 90]
type=Explod
trigger1=time=0
anim=6305
ID=90
pos=0,14
sprpriority=3
ownpal=1

[State 90]
type=VelSet
trigger1=time=0
y=-14

[state 90]
type = varset
trigger1 = var(31) = 0
var(31) = 1

[State 90]
type=ChangeState
trigger1=animtime=0
value=50
ctrl=1

[statedef 91]
type = S
movetype = I
physics = N
anim = 40
ctrl=0

[State 91]
type=AfterImage
trigger1=time=0
time=10
length=10
timegap=1
palcolor=256
palinvertall=0
palbright=30,30,30
palcontrast=120,120,120
palpostbright=0,0,0
paladd=0,0,0
palmul=.65,.65,.65
trans=add

[State 91]
type=Explod
trigger1=time=0
anim=6304
ID=91
pos=0,0
sprpriority=3
ownpal=1
vel = -1

[State 91]
type=VelSet
trigger1=time=0
y=-5
x=7

[State 91]
type=ChangeState
trigger1=animtime=0
value=50
ctrl=1

[statedef 92]
type = S
movetype = I
physics = N
anim = 40
ctrl=0

[State 92]
type=AfterImage
trigger1=time=0
time=10
length=10
timegap=1
palcolor=256
palinvertall=0
palbright=30,30,30
palcontrast=120,120,120
palpostbright=0,0,0
paladd=0,0,0
palmul=.65,.65,.65
trans=add

[State 92]
type=Explod
trigger1=time=0
anim=6304
ID=91
pos=0,0
sprpriority=3
ownpal=1
facing=-1
vel = 1

[State 92]
type=VelSet
trigger1=time=0
y=-5
x=-7

[State 92]
type=ChangeState
trigger1=animtime=0
value=50
ctrl=1

[StateDef 95]
Type    = A
Physics = N
Ctrl    = 1
Anim    = 95
VelSet  = 0,0

[state -2]
type = varset
trigger1 = var(30) = 0
var(30) = 1

[State 95]
type=ChangeAnim
trigger1=1
value=ifelse(command="holdfwd",96,ifelse(command="holdback",97,ifelse(command="holdup",98,ifelse(command="holddown",99,95))))

[State 95]
type=VelAdd
trigger1=(command="holdup"||command="holddown")&&(vel y>=-8&&vel y<=8)
trigger2=(command="holdup"&&p2dist y<120)&&(vel y>=-8&&vel y<=8)
y=ifelse(command="holdup",-.5,.5)

[State 95]
type=VelAdd
trigger1=(command="holdfwd"||command="holdback")&&(vel x>=-8&&vel x<=8)
x=ifelse(command="holdfwd",.5,-.5)

[State 95]
type=VelAdd
trigger1=(command!="holdup")&&(vel y<0)
y=0.5

[State 95]
type=VelAdd
trigger1=(command!="holddown")&&(vel y>0)
y=-0.5

[State 95]
type=VelAdd
trigger1=(command!="holdfwd")&&(vel x>0)
x=-0.5

[State 95]
type=VelAdd
trigger1=(command!="holdback")&&(vel x<0)
x=0.5

[State 95]
type=Turn
trigger1=(P2dist X<-6)

[State 95]
type=PosAdd
trigger1=(pos y<0)
y=ifelse(gametime%90<45,0.15,-0.15)

[State 95]
type=ChangeState
trigger1=(p2movetype=A&&p2dist x<70&&p2dist y>-70&&p2dist y<70&&command="holdback")
value=132

[State 95]
type = VelSet
trigger1 = Vel Y < 0 && ScreenPos Y < 0
y = 0

[State 95]
type=ChangeState
trigger1=(Pos Y>=0||Win||lose)
value=50
ctrl=1

[Statedef 171]
type    = L
movetype= H
physics = N
anim = 170
velset = 0,0

[State 171]
type=AssertSpecial
trigger1=time < 240
flag=roundnotover

[State 171]
type=PlaySnd
trigger1=time = 50
value=0,6
volume=255

[State 171]
type=PlaySnd
trigger1=animelem=2
value=170,0
volume=128

[State 171]
type=Explod
trigger1=animelem=2
anim=6110
ID=171
pos=-22,-9
removetime=-2
sprpriority=3
ownpal=1
scale = .66,.66

[State 171]
type=Helper
trigger1=animelem=2
name="Head"
ID=171
pos=-20,4
stateno=172
ownpal=1

[Statedef 172]
physics = N
anim = 171
velset = -2

[State 172]
type=ScreenBound
trigger1=1
value=0

[State 172]
type=VelSet
trigger1=animelem=5
x=-.25

[State 172]
type=VelSet
trigger1=animelem=8
x=0

[Statedef 180]
type = S
ctrl = 0
velset = 0,0
anim = 180

[State 180]
type=AssertSpecial
trigger1=time < 120
flag=roundnotover

[State 180]
type=PlaySnd
trigger1=time=5
value=0,0
volume = 255

[Statedef 190]
type = S
ctrl = 0
velset = 0,0

[State 190, 1]
type = ChangeAnim
trigger1 = SelfAnimExist(190)
value = 190

[State 190, 2] ;Go straight to intro.
type = ChangeState
trigger1 = Time = 0
value = 191+random%2

[Statedef 191]
type = S
ctrl = 0
anim = 190

[State 191]
type=AssertSpecial
trigger1=time<120
flag=Intro

[State 191]
type=PlaySnd
trigger1=time=10
value=0,5
volume = 255

[State 191, 1]
type = ChangeState
trigger1 = Time = 120
value = 0

[Statedef 192]
type = S
ctrl = 0
anim = 190

[State 192]
type=AssertSpecial
trigger1=time<300
flag=Intro

[State 192]
type = ScreenBound
trigger1 = 1
value = 0

[State 192]
type=PosSet
trigger1=time=0
y=-315

[State 192]
type=VelSet
trigger1=time=20
y=30

[State 192]
type=VelSet
trigger1=time=30
y=0

[State 192]
type=PlaySnd
trigger1=time=30
value=190,1
volume=255

[State 192]
type=Explod
trigger1=time=30
anim=6310
ID=192
pos=0,-ceil(pos y)
bindtime=1
sprpriority=3
ownpal=1

[State 192]
type = EnvShake
trigger1 = Time >= 30
time = 15
freq = 120
ampl = -2

[State 192]
type = EnvColor
trigger1=time=30
value = 255,255,255
time = 1

[State 192]
type=VelSet
trigger1=time=60
y=.15

[State 192]
type=VelSet
trigger1=pos y >= 0
y=0

[State 192]
type=ChangeState
trigger1=time=300
value=0

[Statedef 200]
type = S
movetype = A
physics = S
anim = 200
velset = 0,0
poweradd = 30
ctrl = 0
juggle = 1

[State 200]
type=PlaySnd
trigger1=time=4
value=10,1

[State 200]
Type                = HitDef
Trigger1            = AnimElem = 2
Attr                = S,NA
HitFlag             = MAF
GuardFlag           = MA
AnimType            = Light
Air.AnimType        = Light
Damage              = 20
PauseTime           = 8,8
SparkNo             = S(6400+random%8)
Guard.SparkNo       = S6420
sparkxy             = -10,-57
HitSound            = S11,0
GuardSound          = S12,0
Ground.Type         = High
Air.Type            = Low
Ground.SlideTime    = 10
Guard.SlideTime     = 5
Ground.HitTime      = 15
Guard.HitTime       = 10
Ground.Velocity     = -2,0
Air.Velocity        = -2,-2
ground.cornerpush.veloff = -4
air.cornerpush.veloff = -4
down.cornerpush.veloff = -4
guard.cornerpush.veloff = -4
airguard.cornerpush.veloff = -4
Persistent          = 0

[State 200]
type = Helper
trigger1 = movehit && numtarget
helpertype = Normal
name = "disperse"
id = 6430
stateno	= 6430
pos = 10,ceil(-57 - p2dist y)
postype	= p2
ownpal = 1
keyctrl	= 0
ignorehitpause = 1
persistent = 0

[State 200]
type = Helper
trigger1 = moveguarded && numtarget
helpertype = Normal
name = "disperse"
id = 6445
stateno	= 6445
pos = 10,ceil(-57 - p2dist y)
postype	= p2
ownpal = 1
keyctrl	= 0
ignorehitpause = 1
persistent = 0

[State 200]
type=ChangeState
trigger1=animtime=0
value=0
ctrl=1

[Statedef 210]
type = S
movetype = A
physics = S
anim = 210
velset = 0,0
poweradd = 40
ctrl = 0
juggle = 1

[State 210]
type=PlaySnd
trigger1=time=5
value=10,2

[State 210]
Type                = HitDef
Trigger1            = AnimElem = 2
Attr                = S, NA
HitFlag             = MAF
GuardFlag           = MA
AnimType            = Medium
Air.AnimType        = Medium
Damage              = 27
PauseTime           = 10,10
SparkNo             = S(6400+random%8)
Guard.SparkNo       = S6420
sparkxy             = -15,-52
HitSound            = S11,2
GuardSound          = S12,0
Ground.Type         = High
Air.Type            = Low
Ground.SlideTime    = 15
Guard.SlideTime     = 10
Ground.HitTime      = 20
Guard.HitTime       = 15
Ground.Velocity     = -4,0
Air.Velocity        = -4,-3
ground.cornerpush.veloff = -4
air.cornerpush.veloff = -4
down.cornerpush.veloff = -4
guard.cornerpush.veloff = -4
airguard.cornerpush.veloff = -4
Persistent          = 0

[State 210]
type = Helper
trigger1 = movehit && numtarget
helpertype = Normal
name = "disperse"
id = 6430
stateno	= 6430
pos = 15,ceil(-52 - p2dist y)
postype	= p2
ownpal = 1
keyctrl	= 0
ignorehitpause = 1
persistent = 0

[State 210]
type = Helper
trigger1 = moveguarded && numtarget
helpertype = Normal
name = "disperse"
id = 6445
stateno	= 6445
pos = 15,ceil(-52 - p2dist y)
postype	= p2
ownpal = 1
keyctrl	= 0
ignorehitpause = 1
persistent = 0

[State 210]
type=ChangeState
trigger1=animtime=0
value=0
ctrl=1

[Statedef 220]
type = S
movetype = A
physics = S
anim = 220
velset = 0,0
poweradd = 50
ctrl = 0
juggle = 1

[State 220]
type=PlaySnd
trigger1=time=6
value=10,3

[State 220]
type=Explod
trigger1=time=0
anim=6200
ID=220
pos=0,0
removetime=-2
bindtime=-1
sprpriority=3
ownpal=1
removeongethit=1

[State 220]
type=Explod
trigger1=animelem=3&&pos y >= 0
anim=6302
ID=221
pos=-15,0
removetime=-2
bindtime=1
sprpriority=3
ownpal=1
removeongethit=0
vel=-1

[State 220]
type=VelSet
trigger1=animelem=3
x=6

[State 220]
Type                = HitDef
Trigger1            = AnimElem = 3
Attr                = S, NA
HitFlag             = MAF
GuardFlag           = MA
AnimType            = Light
Air.AnimType        = Light
Damage              = 27
PauseTime           = 7, 11
SparkNo             = S(6400+random%8)
Guard.SparkNo       = S6420
sparkxy             = -5,-73
HitSound            = S11,1
GuardSound          = S12,0
Ground.Type         = High
Air.Type            = Low
Ground.SlideTime    = 5
Guard.SlideTime     = 6
Ground.HitTime      = 5
Guard.HitTime       = 6
Ground.Velocity     = -1.3,-1
Air.Velocity        = -2,-1
Fall                = 0
Air.Fall            = 0
Persistent          = 0

[State 220]
type = Helper
trigger1 = movehit && numtarget
helpertype = Normal
name = "disperse"
id = 6430
stateno	= 6430
pos = 5,ceil(-73 - p2dist y)
postype	= p2
ownpal = 1
keyctrl	= 0
ignorehitpause = 1
persistent = 0

[State 220]
type = Helper
trigger1 = moveguarded && numtarget
helpertype = Normal
name = "disperse"
id = 6445
stateno	= 6445
pos = 5,ceil(-73 - p2dist y)
postype	= p2
ownpal = 1
keyctrl	= 0
ignorehitpause = 1
persistent = 0

[State 220]
type=ChangeState
trigger1=animtime=0
value=0
ctrl=1

[Statedef 225]
type = S
movetype = A
physics = S
anim = 225
velset = 0,0
poweradd = 25
ctrl = 0
juggle = 2

[State 225]
type=PlaySnd
trigger1=time=6
value=10,5

[State 225]
type=VelSet
trigger1=animelem=3
x=5

[State 225]
Type                = HitDef
trigger1            = AnimElem = 3
Attr                = S, NA
HitFlag             = MAF
GuardFlag           = MA
AnimType            = Light
Air.AnimType        = Light
Damage              = 23
PauseTime           = 7, 11
SparkNo             = S(6400+random%8)
Guard.SparkNo       = S6420
sparkxy             = 0,-50
HitSound            = S11,3
GuardSound          = S12,0
Ground.Type         = High
Air.Type            = Low
Ground.SlideTime    = 10
Guard.SlideTime     = 6
Ground.HitTime      = 10
Guard.HitTime       = 6
Ground.Velocity     = -9,0
Air.Velocity        = -3,-2.3
Persistent          = 0
fall		    = 1

[State 225]
type = Helper
trigger1 = movehit && numtarget
helpertype = Normal
name = "disperse"
id = 6430
stateno	= 6430
pos = 0,ceil(-50 - p2dist y)
postype	= p2
ownpal = 1
keyctrl	= 0
ignorehitpause = 1
persistent = 0

[State 225]
type = Helper
trigger1 = moveguarded && numtarget
helpertype = Normal
name = "disperse"
id = 6445
stateno	= 6445
pos = 0,ceil(-50 - p2dist y)
postype	= p2
ownpal = 1
keyctrl	= 0
ignorehitpause = 1
persistent = 0

[State 225]
type=ChangeState
trigger1=animtime=0
value=0
ctrl=1

[Statedef 230]
type = S
movetype = A
physics = S
anim = 230
velset = 0,0
poweradd = 30
ctrl = 0
juggle = 1

[State 230]
type=PlaySnd
trigger1=time=5
value=10,1

[State 230]
Type                = HitDef
Trigger1            = !time
Attr                = S, NA
HitFlag             = MAF
GuardFlag           = MA
AnimType            = Light
Air.AnimType        = Light
Damage              = 25
PauseTime           = 8,8
SparkNo             = S(6400+random%8)
Guard.SparkNo       = S6420
sparkxy             = -10,-32
HitSound            = S11,0
GuardSound          = S12,0
Ground.Type         = High
Air.Type            = Low
Ground.SlideTime    = 10
Guard.SlideTime     = 5
Ground.HitTime      = 15
Guard.HitTime       = 10
Ground.Velocity     = -2,0
Air.Velocity        = -2,-1
ground.cornerpush.veloff = -4
air.cornerpush.veloff = -4
down.cornerpush.veloff = -4
guard.cornerpush.veloff = -4
airguard.cornerpush.veloff = -4

[State 230]
type = Helper
trigger1 = movehit && numtarget
helpertype = Normal
name = "disperse"
id = 6430
stateno	= 6430
pos = 10,ceil(-32 - p2dist y)
postype	= p2
ownpal = 1
keyctrl	= 0
ignorehitpause = 1
persistent = 0

[State 230]
type = Helper
trigger1 = moveguarded && numtarget
helpertype = Normal
name = "disperse"
id = 6445
stateno	= 6445
pos = 10,ceil(-32 - p2dist y)
postype	= p2
ownpal = 1
keyctrl	= 0
ignorehitpause = 1
persistent = 0

[State 230]
type=ChangeState
trigger1=animtime=0
value=0
ctrl=1

[Statedef 240]
type = S
movetype = A
physics = S
anim = 240
velset = 0,0
poweradd = 40
ctrl = 0
juggle = 1

[State 240]
type=PlaySnd
trigger1=time=5
value=10,4

[State 240]
Type                = HitDef
Trigger1            = !time
Attr                = S, NA
HitFlag             = MAF
GuardFlag           = MA
AnimType            = Medium
Air.AnimType        = Medium
Damage              = 32
PauseTime           = 10,10
SparkNo             = S(6400+random%8)
Guard.SparkNo       = S6420
sparkxy             = -10,-75
HitSound            = S11,2
GuardSound          = S12,0
Ground.Type         = High
Air.Type            = Low
Ground.SlideTime    = 15
Guard.SlideTime     = 10
Ground.HitTime      = 20
Guard.HitTime       = 15
Ground.Velocity     = -3,0
Air.Velocity        = -4,-2
ground.cornerpush.veloff = -4
air.cornerpush.veloff = -4
down.cornerpush.veloff = -4
guard.cornerpush.veloff = -4
airguard.cornerpush.veloff = -4

[State 240]
type = Helper
trigger1 = movehit && numtarget
helpertype = Normal
name = "disperse"
id = 6430
stateno	= 6430
pos = 10,ceil(-75 - p2dist y)
postype	= p2
ownpal = 1
keyctrl	= 0
ignorehitpause = 1
persistent = 0

[State 240]
type = Helper
trigger1 = moveguarded && numtarget
helpertype = Normal
name = "disperse"
id = 6445
stateno	= 6445
pos = 10,ceil(-75 - p2dist y)
postype	= p2
ownpal = 1
keyctrl	= 0
ignorehitpause = 1
persistent = 0

[State 240]
type=ChangeState
trigger1=animtime=0
value=0
ctrl=1

[Statedef 250]
type = S
movetype = A
physics = S
anim = 250
velset = 0,0
poweradd = 50
ctrl = 0
juggle = 1

[State 240]
type=PlaySnd
trigger1=time=6
value=10,3

[State 250]
Type                = HitDef
Trigger1            = !time
Attr                = S, NA
HitFlag             = MAF
GuardFlag           = MA
AnimType            = DiagUp
Air.AnimType        = DiagUp
Damage              = 41
PauseTime           = 12,12
SparkNo             = S(6400+random%8)
Guard.SparkNo       = S6420
sparkxy             = -10,-64
HitSound            = S11,4
GuardSound          = S12,0
Ground.Type         = High
Air.Type            = Low
Ground.SlideTime    = 20
Guard.SlideTime     = 15
Ground.HitTime      = 25
Guard.HitTime       = 20
Ground.Velocity     = -3,-1
Air.Velocity        = -3,-1
ground.cornerpush.veloff = -4
air.cornerpush.veloff = -4
down.cornerpush.veloff = -4
guard.cornerpush.veloff = -4
airguard.cornerpush.veloff = -4

[State 250]
type = Helper
trigger1 = movehit && numtarget
helpertype = Normal
name = "disperse"
id = 6430
stateno	= 6430
pos = 10,ceil(-64 - p2dist y)
postype	= p2
ownpal = 1
keyctrl	= 0
ignorehitpause = 1
persistent = 0

[State 250]
type = Helper
trigger1 = moveguarded && numtarget
helpertype = Normal
name = "disperse"
id = 6445
stateno	= 6445
pos = 10,ceil(-64 - p2dist y)
postype	= p2
ownpal = 1
keyctrl	= 0
ignorehitpause = 1
persistent = 0

[State 250]
type=ChangeState
trigger1=animtime=0
value=0
ctrl=1

[Statedef 400]
type = C
movetype = A
physics = C
anim = 400
velset = 0,0
poweradd = 30
ctrl = 0
juggle = 1

[State 400]
type=PlaySnd
trigger1=time=4
value=10,1

[State 400]
Type                = HitDef
Trigger1            = !time
Attr                = C, NA
Damage              = 20
Priority            = 3,Hit
AnimType            = Light
HitFlag             = MAF
GuardFlag           = M
PauseTime           = 8,10
SparkNo             = S(6400+random%8)
Guard.SparkNo       = S6420
SparkXY             = -10,-47
HitSound            = S11,2
GuardSound          = S12,0
Ground.Type         = Low
Ground.SlideTime    = 7
Ground.HitTime      = 7
Ground.Velocity     = -2
Air.Velocity        = -1.1,-3

[State 400]
type = Helper
trigger1 = movehit && numtarget
helpertype = Normal
name = "disperse"
id = 6430
stateno	= 6430
pos = 10,ceil(-47 - p2dist y)
postype	= p2
ownpal = 1
keyctrl	= 0
ignorehitpause = 1
persistent = 0

[State 400]
type = Helper
trigger1 = moveguarded && numtarget
helpertype = Normal
name = "disperse"
id = 6445
stateno	= 6445
pos = 10,ceil(-47 - p2dist y)
postype	= p2
ownpal = 1
keyctrl	= 0
ignorehitpause = 1
persistent = 0

[State 400]
type=ChangeState
trigger1=animtime=0
value=11
ctrl=1

[Statedef 410]
type = C
movetype = A
physics = C
anim = 410
velset = 0,0
poweradd = 40
ctrl = 0
juggle = 1

[State 410]
type=PlaySnd
trigger1=time=5
value=10,2

[State 410]
Type                = HitDef
Trigger1            = !time
Attr                = C, NA
Priority            = 3,Hit
AnimType            = Light
HitFlag             = MAF
GuardFlag           = M
Damage              = 27
PauseTime           = 9,12
SparkNo             = S(6400+random%8)
Guard.SparkNo       = S6420
SparkXY             = 0,-47
HitSound            = S11,2
GuardSound          = S12,0
Ground.Type         = Low
Ground.SlideTime    = 10
Ground.HitTime      = 10
Ground.Velocity     = -4
Air.Velocity        = -1.4,-3

[State 410]
type = Helper
trigger1 = movehit && numtarget
helpertype = Normal
name = "disperse"
id = 6430
stateno	= 6430
pos = 0,ceil(-47 - p2dist y)
postype	= p2
ownpal = 1
keyctrl	= 0
ignorehitpause = 1
persistent = 0

[State 410]
type = Helper
trigger1 = moveguarded && numtarget
helpertype = Normal
name = "disperse"
id = 6445
stateno	= 6445
pos = 0,ceil(-47 - p2dist y)
postype	= p2
ownpal = 1
keyctrl	= 0
ignorehitpause = 1
persistent = 0

[State 410]
type=ChangeState
trigger1=animtime=0
value=11
ctrl=1

[Statedef 420]
type = C
movetype = A
physics = C
anim = 420
velset = 0,0
poweradd = 50
ctrl = 0
juggle = 1

[State 420]
type=PlaySnd
trigger1=time=6
value=10,3

[State 420]
Type                = HitDef
Trigger1            = !time
Attr                = C,NA
Priority            = 3,Hit
AnimType            = Light
HitFlag             = MAF
GuardFlag           = M
Damage              = 37
PauseTime           = 13,15
SparkNo             = S(6400+random%8)
Guard.SparkNo       = S6420
SparkXY             = 0,-47
HitSound            = S11,1
GuardSound          = S12,0
Ground.Type         = Low
Ground.SlideTime    = 12
Ground.HitTime      = 12
Ground.Velocity     = -1,0
Air.Velocity        = -2,0

[State 420]
type = Helper
trigger1 = movehit && numtarget
helpertype = Normal
name = "disperse"
id = 6430
stateno	= 6430
pos = 0,ceil(-47 - p2dist y)
postype	= p2
ownpal = 1
keyctrl	= 0
ignorehitpause = 1
persistent = 0

[State 420]
type = Helper
trigger1 = moveguarded && numtarget
helpertype = Normal
name = "disperse"
id = 6445
stateno	= 6445
pos = 0,ceil(-47 - p2dist y)
postype	= p2
ownpal = 1
keyctrl	= 0
ignorehitpause = 1
persistent = 0

[State 420]
type=ChangeState
trigger1=animtime=0
value=11
ctrl=1

[Statedef 430]
type = C
movetype = A
physics = C
anim = 430
velset = 0,0
poweradd = 30
ctrl = 0
juggle = 1

[State 430]
type=PlaySnd
trigger1=time=5
value=10,1

[State 430]
Type                = HitDef
Trigger1            = !time
Attr                = C, NA
HitFlag             = MAFD
GuardFlag           = L
Damage              = 25
PauseTime           = 8,11
SparkNo             = S(6400+random%8)
Guard.SparkNo       = S6420
SparkXY             = -10,-9
HitSound            = S11,0
GuardSound          = S12,0
Ground.Type         = Low
Ground.SlideTime    = 12
Ground.HitTime      = 14
Ground.Velocity     = -1,0
Air.Velocity        = -1,-1
Guard.Velocity      = -1

[State 430]
type = Helper
trigger1 = movehit && numtarget
helpertype = Normal
name = "disperse"
id = 6430
stateno	= 6430
pos = 10,ceil(-9 - p2dist y)
postype	= p2
ownpal = 1
keyctrl	= 0
ignorehitpause = 1
persistent = 0

[State 430]
type = Helper
trigger1 = moveguarded && numtarget
helpertype = Normal
name = "disperse"
id = 6445
stateno	= 6445
pos = 10,ceil(-9 - p2dist y)
postype	= p2
ownpal = 1
keyctrl	= 0
ignorehitpause = 1
persistent = 0

[State 430]
type=ChangeState
trigger1=animtime=0
value=11
ctrl=1

[Statedef 440]
type = C
movetype = A
physics = C
anim = 440
velset = 0,0
poweradd = 40
ctrl = 0
juggle = 1

[State 440]
type=PlaySnd
trigger1=time=4
value=10,4

[State 440]
Type                = HitDef
Trigger1            = !time
Attr                = C, NA
HitFlag             = MAFD
GuardFlag           = L
Damage              = 32
PauseTime           = 9,12
SparkNo             = S(6400+random%8)
Guard.SparkNo       = S6420
SparkXY             = -10,-19
HitSound            = S11,2
GuardSound          = S12,0
Ground.Type         = Low
Ground.SlideTime    = 12
Ground.HitTime      = 14
Ground.Velocity     = -2,0
Air.Velocity        = -2,-1
Guard.Velocity      = -2

[State 440]
type = Helper
trigger1 = movehit && numtarget
helpertype = Normal
name = "disperse"
id = 6430
stateno	= 6430
pos = 10,ceil(-19 - p2dist y)
postype	= p2
ownpal = 1
keyctrl	= 0
ignorehitpause = 1
persistent = 0

[State 440]
type = Helper
trigger1 = moveguarded && numtarget
helpertype = Normal
name = "disperse"
id = 6445
stateno	= 6445
pos = 10,ceil(-19 - p2dist y)
postype	= p2
ownpal = 1
keyctrl	= 0
ignorehitpause = 1
persistent = 0

[State 440]
type=ChangeState
trigger1=animtime=0
value=11
ctrl=1

[Statedef 450]
type = C
movetype = A
physics = C
anim = 450
velset = 0,0
poweradd = 50
ctrl = 0
juggle = 1

[State 450]
type=PlaySnd
trigger1=time=6
value=10,3

[State 450]
type=VelSet
trigger1=animelem=2
x=8

[State 450]
type=Explod
trigger1=animelem=2
anim=6303
ID=450
pos=0,0
removetime=-2
bindtime=1
sprpriority=3
ownpal=1
removeongethit=0
vel=-1.75

[State 450]
Type                = HitDef
Trigger1            = !time
Attr                = C, NA
HitFlag             = MAFD
GuardFlag           = L
Damage              = 41
PauseTime           = 12,17
SparkNo             = S(6400+random%8)
Guard.SparkNo       = S6420
SparkXY             = -10,-10
HitSound            = S11,4
GuardSound          = S12,0
Ground.Type         = Trip
Ground.SlideTime    = 10
Ground.HitTime      = 15
Ground.Velocity     = -3,-2
Air.Velocity        = -3,-3
Guard.Velocity      = -5
Fall                = 1

[State 450]
type = Helper
trigger1 = movehit && numtarget
helpertype = Normal
name = "disperse"
id = 6430
stateno	= 6430
pos = 10,ceil(-10 - p2dist y)
postype	= p2
ownpal = 1
keyctrl	= 0
ignorehitpause = 1
persistent = 0

[State 450]
type = Helper
trigger1 = moveguarded && numtarget
helpertype = Normal
name = "disperse"
id = 6445
stateno	= 6445
pos = 10,ceil(-10 - p2dist y)
postype	= p2
ownpal = 1
keyctrl	= 0
ignorehitpause = 1
persistent = 0

[State 450]
type=ChangeState
trigger1=animtime=0
value=11
ctrl=1

[Statedef 600]
type = A
movetype = A
physics = A
anim = 600
poweradd = 30
ctrl = 0
juggle = 1

[State 600]
type=PlaySnd
trigger1=time=4
value=10,1

[State 600]
Type                = HitDef
Trigger1            = !time
Attr                = A, NA
GuardFlag           = HA
Priority            = 3
Damage              = 20
PauseTime           = 8,11
SparkNo             = S(6400+random%8)
Guard.SparkNo       = S6420
SparkXY             = -10,-28
HitSound            = S11,0
GuardSound          = S12,0
Ground.Type         = High
Ground.SlideTime    = 6
Ground.HitTime      = 6
Ground.Velocity     = -2
Air.Velocity        = -2,-5

[State 600]
type = Helper
trigger1 = movehit && numtarget
helpertype = Normal
name = "disperse"
id = 6430
stateno	= 6430
pos = 10,ceil(-28 - p2dist y)
postype	= p2
ownpal = 1
keyctrl	= 0
ignorehitpause = 1
persistent = 0

[State 600]
type = Helper
trigger1 = moveguarded && numtarget
helpertype = Normal
name = "disperse"
id = 6445
stateno	= 6445
pos = 10,ceil(-28 - p2dist y)
postype	= p2
ownpal = 1
keyctrl	= 0
ignorehitpause = 1
persistent = 0

[State 600]
type=ChangeState
trigger1=animtime=0
value=50
ctrl=1

[Statedef 610]
type = A
movetype = A
physics = A
anim = 610
poweradd = 40
ctrl = 0
juggle = 1

[State 610]
type=PlaySnd
trigger1=time=5
value=10,2

[State 610]
Type                = HitDef
Trigger1            = !time
Attr                = A, NA
GuardFlag           = HA
Priority            = 3
Damage              = 27
PauseTime           = 9,12
SparkNo             = S(6400+random%8)
Guard.SparkNo       = S6420
SparkXY             = -10,-28
HitSound            = S11,2
GuardSound          = S12,0
Ground.Type         = High
Ground.SlideTime    = 6
Ground.HitTime      = 6
Ground.Velocity     = -4
Air.Velocity        = -4,-5

[State 610]
type = Helper
trigger1 = movehit && numtarget
helpertype = Normal
name = "disperse"
id = 6430
stateno	= 6430
pos = 10,ceil(-28 - p2dist y)
postype	= p2
ownpal = 1
keyctrl	= 0
ignorehitpause = 1
persistent = 0

[State 610]
type = Helper
trigger1 = moveguarded && numtarget
helpertype = Normal
name = "disperse"
id = 6445
stateno	= 6445
pos = 10,ceil(-28 - p2dist y)
postype	= p2
ownpal = 1
keyctrl	= 0
ignorehitpause = 1
persistent = 0

[State 610]
type=ChangeState
trigger1=animtime=0
value=50
ctrl=1

[Statedef 620]
type = A
movetype = A
physics = A
anim = 620
poweradd = 50
ctrl = 0
juggle = 1

[State 620]
type=PlaySnd
trigger1=time=6
value=10,3

[State 620]
Type                = HitDef
Trigger1            = !time
Attr                = A, NA
Damage              = 37
PauseTime           = 13,15
GuardFlag           = HA
Priority            = 3
SparkNo             = S(6400+random%8)
Guard.SparkNo       = S6420
SparkXY             = -10,-57
HitSound            = S11,1
GuardSound          = S12,0
Ground.Type         = High
Ground.SlideTime    = 10
Ground.HitTime      = 10
Ground.Velocity     = -5
Air.Velocity        = -5,3

[State 620]
type = Helper
trigger1 = movehit && numtarget
helpertype = Normal
name = "disperse"
id = 6430
stateno	= 6430
pos = 10,ceil(-57 - p2dist y)
postype	= p2
ownpal = 1
keyctrl	= 0
ignorehitpause = 1
persistent = 0

[State 620]
type = Helper
trigger1 = moveguarded && numtarget
helpertype = Normal
name = "disperse"
id = 6445
stateno	= 6445
pos = 10,ceil(-57 - p2dist y)
postype	= p2
ownpal = 1
keyctrl	= 0
ignorehitpause = 1
persistent = 0

[State 620]
type=ChangeState
trigger1=animtime=0
value=50
ctrl=1

[Statedef 630]
type = A
movetype = A
physics = A
anim = 630
poweradd = 30
ctrl = 0
juggle = 1

[State 630]
type=PlaySnd
trigger1=time=4
value=10,1

[State 630]
Type                = HitDef
Trigger1            = !time
Attr                = A, NA
GuardFlag           = HA
Priority            = 4
Damage              = 25
PauseTime           = 8,11
SparkNo             = S(6400+random%8)
Guard.SparkNo       = S6420
SparkXY             = -15,-14
HitSound            = S11,0
GuardSound          = S12,0
AnimType            = Med
Ground.Type         = High
Air.Type            = Low
Ground.SlideTime    = 15
Ground.HitTime      = 15
Ground.Velocity     = -2
Air.Velocity        = -3,-2

[State 630]
type = Helper
trigger1 = movehit && numtarget
helpertype = Normal
name = "disperse"
id = 6430
stateno	= 6430
pos = 15,ceil(-14 - p2dist y)
postype	= p2
ownpal = 1
keyctrl	= 0
ignorehitpause = 1
persistent = 0

[State 630]
type = Helper
trigger1 = moveguarded && numtarget
helpertype = Normal
name = "disperse"
id = 6445
stateno	= 6445
pos = 15,ceil(-14 - p2dist y)
postype	= p2
ownpal = 1
keyctrl	= 0
ignorehitpause = 1
persistent = 0

[State 630]
type=ChangeState
trigger1=animtime=0
value=50
ctrl=1

[Statedef 640]
type = A
movetype = A
physics = A
anim = 640
poweradd = 40
ctrl = 0
juggle = 1

[State 640]
type=PlaySnd
trigger1=time=5
value=10,4

[State 640]
Type                = HitDef
Trigger1            = !time
Attr                = A, NA
GuardFlag           = HA
Priority            = 4
Damage              = 32
PauseTime           = 9,12
SparkNo             = S(6400+random%8)
Guard.SparkNo       = S6420
SparkXY             = -10,-32
HitSound            = S11,2
GuardSound          = S12,0
AnimType            = Med
Ground.Type         = High
Air.Type            = Low
Ground.SlideTime    = 15
Ground.HitTime      = 15
Ground.Velocity     = -4
Air.Velocity        = -4,-2

[State 640]
type = Helper
trigger1 = movehit && numtarget
helpertype = Normal
name = "disperse"
id = 6430
stateno	= 6430
pos = 10,ceil(-32 - p2dist y)
postype	= p2
ownpal = 1
keyctrl	= 0
ignorehitpause = 1
persistent = 0

[State 640]
type = Helper
trigger1 = moveguarded && numtarget
helpertype = Normal
name = "disperse"
id = 6445
stateno	= 6445
pos = 10,ceil(-32 - p2dist y)
postype	= p2
ownpal = 1
keyctrl	= 0
ignorehitpause = 1
persistent = 0

[State 640]
type=ChangeState
trigger1=animtime=0
value=50
ctrl=1

[Statedef 650]
type = A
movetype = A
physics = A
anim = 650
poweradd = 50
ctrl = 0
juggle = 1

[State 650]
type=PlaySnd
trigger1=time=6
value=10,3

[State 650]
Type                = HitDef
Trigger1            = !time
Attr                = A, NA
GuardFlag           = HA
Priority            = 4
Damage              = 41
PauseTime           = 12,17
SparkNo             = S(6400+random%8)
Guard.SparkNo       = S6420
SparkXY             = -10,-60
HitSound            = S11,4
GuardSound          = S12,0
AnimType            = Med
Ground.Type         = High
Air.Type            = Low
Ground.SlideTime    = 15
Ground.HitTime      = 15
Ground.Velocity     = -6
Air.Velocity        = -6,-4

[State 650]
type = Helper
trigger1 = movehit && numtarget
helpertype = Normal
name = "disperse"
id = 6430
stateno	= 6430
pos = 10,ceil(-60 - p2dist y)
postype	= p2
ownpal = 1
keyctrl	= 0
ignorehitpause = 1
persistent = 0

[State 650]
type = Helper
trigger1 = moveguarded && numtarget
helpertype = Normal
name = "disperse"
id = 6445
stateno	= 6445
pos = 10,ceil(-60 - p2dist y)
postype	= p2
ownpal = 1
keyctrl	= 0
ignorehitpause = 1
persistent = 0

[State 650]
type=ChangeState
trigger1=animtime=0
value=50
ctrl=1

[statedef 900]
type    = S
movetype= I
physics = S
velset = 0,0
ctrl = 0

[State 900]
type=ChangeAnim
trigger1=1
value=anim
elem=animelemno(0)

[State 900]
type=AssertSpecial
trigger1=time>=8
flag=invisible
flag2=noshadow

[State 900]
type=PlaySnd
trigger1=time=8
value=900,1

[State 900]
type=PlaySnd
trigger1=time=21
value=900,1

[State 900]
type=AfterImage
trigger1=time=8
time=10
length=10
palcontrast=120,120,120
palmul=.35,.35,.35
timegap=1
framegap=1
trans=Add
ignorehitpause=1

[State 900]
type=PlayerPush
trigger1=time>=8
value=0

[State 900]
type=NotHitBy
trigger1=time>=8
value=SCA,NT,AT
time=1
ignorehitpause=1

[State 900]
type=PosAdd
trigger1=time=21&&var(59)=0
x=ifelse(command="holdfwd",160,(ifelse(command="holdback",-160,0)))
y=ifelse(command="holdup",-105,(ifelse(command="holddown",ifelse(pos y <=-105,105,floor(-pos y)),0)))

[State 900]
type=PosAdd
trigger1=time=21&&command!="holdfwd"&&command!="holdback"&&command!="holdup"&&command!="holddown"&&var(59)=0
x=160

[State 900]
type=PosAdd
trigger1=time=21&&var(59)=1
y=ifelse(p2dist y < -90,-105,(ifelse(p2dist y > 90,ifelse(pos y <=-105,105,floor(-pos y)),0)))

[State 900]
type=Helper
trigger1=time=8
helpertype=normal
name="AI1"
ID=900
pos=0,0
postype=p1
facing=1
stateno=901
keyctrl=0
ownpal=1
persistent=0

[State 900]
type=Helper
trigger1=time=8
helpertype=normal
name="AI2"
ID=900
pos=0,0
postype=p1
facing=1
stateno=902
keyctrl=0
ownpal=1
persistent=0

[State 900]
type=Helper
trigger1=time=0
helpertype=normal
name="AI3"
ID=900
pos=0,0
postype=p1
facing=1
stateno=903
keyctrl=0
ownpal=1
persistent=0

[State 900]
type=Turn
trigger1=p2dist x<0

[State 900]
type=null;ScreenBound
trigger1=(command!="holdfwd")&&(command!="holdback")&&(command!="holddown")&&(command!="holdup")&&(time>=25)
movecamera=1,1
value=0

[State 900]
type=ChangeState
trigger1=time>25
value=ifelse(pos y<0,ifelse(var(30)=0,50,95),0)
ctrl=1

[Statedef 901]
type=S
movetype=I
physics=N

[State 901]
type=VelSet
trigger1=1
x=5

[State 901]
type=ChangeAnim
trigger1=1
value=parent,anim
elem=parent,animelemno(0)

[State 901]
type=NotHitBy
trigger1=1
value=SCA
time=1

[State 901]
type=AssertSpecial
trigger1=1
flag=noshadow
flag2=invisible
ignorehitpause=1

[State 901]
type=AfterImage
trigger1=time%4=0   ;\
time=2              ;-> half of the time
length=4            ;/
palcolor=256
palcontrast=120,120,120
palmul=.35,.35,.35
timegap=1
framegap=1
trans=add
ignorehitpause=1

[State 901]
type=DestroySelf
trigger1=time>=12
ignorehitpause=1

[Statedef 902]
type=S
movetype=I
physics=N

[State 902]
type=VelSet
trigger1=1
x=-5

[State 902]
type=ChangeAnim
trigger1=1
value=parent,anim
elem=parent,animelemno(0)

[State 902]
type=NotHitBy
trigger1=1
value=SCA
time=1

[State 902]
type=AssertSpecial
trigger1=1
flag=noshadow
flag2=invisible
ignorehitpause=1

[State 902]
type=AfterImage
trigger1=time%4=0   ;\
time=2              ;-> half of the time
length=4            ;/
palcolor=256
palcontrast=120,120,120
palmul=.35,.35,.35
timegap=1
framegap=1
trans=add
ignorehitpause=1

[State 902]
type=DestroySelf
trigger1=time>=12
ignorehitpause=1

[Statedef 903]
type=S
movetype=I
physics=N

[State 903]
type=BindToParent
trigger1=1
time=1
pos=0,0
ignorehitpause=1
persistent=1

[State 903]
type=ChangeAnim
trigger1=1
value=parent,anim
elem=parent,animelemno(0)

[State 903]
type=NotHitBy
trigger1=1
value=SCA
time=1

[State 903]
type=AssertSpecial
trigger1=1
flag=noshadow
flag2=invisible
ignorehitpause=1

[State 903]
type=AfterImage
trigger1=time=0
time=5
length=10
palcolor=256
palcontrast=120,120,120
palmul=.35,.35,.35
timegap=1
framegap=1
trans=add
ignorehitpause=1

[State 903]
type=AfterImageTime
trigger1=(parent, movetype=H)||(parent, stateno!=900)
time=0
ignorehitpause=1
persistent=1

[State 903]
type=DestroySelf
trigger1=(parent, movetype=H)||(parent, stateno!=900)
ignorehitpause=1
persistent=1

[Statedef 1000]
type = S
movetype = A
physics = S
anim = 1000
poweradd = 75
ctrl = 0
velset = 0,0

[State 1000]
type=PlaySnd
trigger1=animelem=3
value=1,1
volume=255

[State 1000]
type=Helper
trigger1=animelem=3
name="Laser"
ID=1000
pos=47,-59
stateno=1001
ownpal=1

[State 1000]
type=ChangeState
trigger1=time=40
value=0
ctrl=1

[Statedef 1005]
type = S
movetype = A
physics = S
anim = 1005
poweradd = 75
ctrl = 0
velset = 0,0

[State 1005]
type=PlaySnd
trigger1=animelem=3
value=1,1
volume=255

[State 1005]
type=Helper
trigger1=animelem=3
name="Laser"
ID=1005
pos=37,-80
stateno=1002
ownpal=1

[State 1005]
type=ChangeState
trigger1=time=40
value=0
ctrl=1

[Statedef 1010]
type = S
movetype = A
physics = S
anim = 1010
poweradd = 75
ctrl = 0
velset = 0,0

[State 1010]
type=PlaySnd
trigger1=animelem=3
value=1,1
volume=255

[State 1010]
type=Helper
trigger1=animelem=3
name="Laser"
ID=1000
pos=37,-36
stateno=1003
ownpal=1

[State 1010]
type=ChangeState
trigger1=time=40
value=0
ctrl=1

[Statedef 1015]
type = C
movetype = A
physics = C
anim = 1015
poweradd = 75
ctrl = 0
velset = 0,0

[State 1015]
type=PlaySnd
trigger1=animelem=3
value=1,1
volume=255

[State 1015]
type=Helper
trigger1=animelem=3
name="Laser"
ID=1015
pos=44,-46
stateno=1001
ownpal=1

[State 1015]
type=ChangeState
trigger1=time=40
value=0
ctrl=1

[Statedef 1020]
type = A
movetype = A
physics = A
anim = 1020
poweradd = 75
ctrl = 0

[State 1020]
type=PlaySnd
trigger1=animelem=3
value=1,1
volume=255

[State 1020]
type=Helper
trigger1=animelem=3
name="Laser"
ID=1000
pos=48,-59
stateno=1001
ownpal=1

[State 1020]
type=ChangeState
trigger1=time=40
value=50
ctrl=0

[State 1020]
type=VelSet
trigger1=pos y >= - 8 -8*var(31)
y = 0
x = 0
ignorehitpause=1

[State 1020]
type=PosSet
trigger1=pos y >= 0
y=-1
ignorehitpause=1

[Statedef 1025]
type = A
movetype = A
physics = A
anim = 1025
poweradd = 75
ctrl = 0

[State 1025]
type=PlaySnd
trigger1=animelem=3
value=1,1
volume=255

[State 1025]
type=Helper
trigger1=animelem=3
name="Laser"
ID=1000
pos=38,-80
stateno=1002
ownpal=1

[State 1025]
type=ChangeState
trigger1=time=40
value=50
ctrl=0

[State 1025]
type=VelSet
trigger1=pos y >= - 8 -8*var(31)
y = 0
x = 0
ignorehitpause=1

[State 1025]
type=PosSet
trigger1=pos y >= 0
y=-1
ignorehitpause=1

[Statedef 1030]
type = A
movetype = A
physics = A
anim = 1030
poweradd = 75
ctrl = 0

[State 1030]
type=PlaySnd
trigger1=animelem=3
value=1,1
volume=255

[State 1030]
type=Helper
trigger1=animelem=3
name="Laser"
ID=1000
pos=38,-36
stateno=1003
ownpal=1

[State 1030]
type=ChangeState
trigger1=time=40
value=50
ctrl=0

[State 1030]
type=VelSet
trigger1=pos y >= - 8 -8*var(31)
y = 0
x = 0
ignorehitpause=1

[State 1030]
type=PosSet
trigger1=pos y >= 0
y=-1
ignorehitpause=1

[Statedef 1001]
type = S
movetype = A
physics = S
anim = 6000
sprpriority = 3
ctrl = 0

[State 1001]
type=VarRandom
trigger1=1
v=10
range=20,40
ignorehitpause=1
persistent=0

[State 1001]
type=VarRandom
trigger1=1
v=11
range=-300,-200
ignorehitpause=1
persistent=0

[State 1001]
type=VarRandom
trigger1=1
v=12
range=450,625
ignorehitpause=1
persistent=0

[State 1001]
type=VarRandom
trigger1=1
v=13
range=6,9
ignorehitpause=1
persistent=0

[State 1001]
type=VarRandom
trigger1=1
v=20
range=80,100
ignorehitpause=1
persistent=0

[State 1001]
type=VarRandom
trigger1=1
v=21
range=-300,-200
ignorehitpause=1
persistent=0

[State 1001]
type=VarRandom
trigger1=1
v=22
range=450,625
ignorehitpause=1
persistent=0

[State 1001]
type=VarRandom
trigger1=1
v=23
range=6,9
ignorehitpause=1
persistent=0

[State 1001]
type=VarRandom
trigger1=1
v=30
range=140,160
ignorehitpause=1
persistent=0

[State 1001]
type=VarRandom
trigger1=1
v=31
range=-300,-200
ignorehitpause=1
persistent=0

[State 1001]
type=VarRandom
trigger1=1
v=32
range=450,625
ignorehitpause=1
persistent=0

[State 1001]
type=VarRandom
trigger1=1
v=33
range=6,9
ignorehitpause=1
persistent=0

[State 1001]
type=VarRandom
trigger1=1
v=40
range=200,220
ignorehitpause=1
persistent=0

[State 1001]
type=VarRandom
trigger1=1
v=41
range=-300,-200
ignorehitpause=1
persistent=0

[State 1001]
type=VarRandom
trigger1=1
v=42
range=450,625
ignorehitpause=1
persistent=0

[State 1001]
type=VarRandom
trigger1=1
v=43
range=6,9
ignorehitpause=1
persistent=0

[State 1001]
type = Explod
trigger1 = time = (var(13))
anim = 6435
ID = 6435
pos = var(10),0
postype = p1
bindtime = 1
vel = var(11)/200,var(12)/200
removetime = -2
scale = 1, 1
sprpriority = 4
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0

[State 1001]
type = Explod
trigger1 = time = (var(23))
anim = 6435
ID = 6435
pos = var(20),0
postype = p1
bindtime = 1
vel = var(21)/200,var(22)/200
removetime = -2
scale = 1, 1
sprpriority = 4
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0

[State 1001]
type = Explod
trigger1 = time = (var(33))
anim = 6435
ID = 6435
pos = var(30),0
postype = p1
bindtime = 1
vel = var(31)/200,var(32)/200
removetime = -2
scale = 1, 1
sprpriority = 4
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0

[State 1001]
type = Explod
trigger1 = time = (var(43))
anim = 6435
ID = 6435
pos = var(40),0
postype = p1
bindtime = 1
vel = var(41)/200,var(42)/200
removetime = -2
scale = 1, 1
sprpriority = 4
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0

[State 1001]
type=BindToParent
trigger1=parent, stateno = 1000
pos=47,-59
ignorehitpause=1

[State 1001]
type=BindToParent
trigger1=parent, stateno = 1015
pos=44,-46
ignorehitpause=1

[State 1001]
type=BindToParent
trigger1=parent, stateno = 1020
pos=48,-59
ignorehitpause=1

[State 1001]
type=AssertSpecial
trigger1=1
flag=noshadow
ignorehitpause = 1

[State 1001]
type=Explod
trigger1=animelem=6
anim=6001
ID=1001
pos=0,0
ownpal=1

[State 1001]
type=PlaySnd
trigger1=animelem=4
value=2000,1
volume=255

[State 1001]
type=VarSet
trigger1=movecontact
trigger2=animelem=16
var(0)=1
ignorehitpause=1

[State 1001]
type=HitDef
trigger1=!time
attr=S,SP
hitflag=MAF
guardflag=MA
animtype=Medium
damage=55,10
pausetime=4,4
sparkno=S6105
guard.sparkno=S6105
sparkxy=-10,0
hitsound=S1000,1
guardsound=S1000,1
ground.type=High
ground.slidetime=20
guard.slidetime=10
ground.hittime=20
guard.hittime=10
ground.velocity=-4,0
guard.velocity=-1
air.velocity=-3,-1
airguard.velocity=-.75,-.25
palfx.time=6
palfx.mul=192,64,64
palfx.add=128,0,0

[State 1001]
type = Helper
trigger1 = movecontact && numtarget
helpertype = Normal
name = "disperse"
id = 6430
stateno	= 6430
pos = 10,ceil(- p2dist y)
postype	= p2
ownpal = 1
keyctrl	= 0
ignorehitpause = 1
persistent = 0

[State 1001]
type=RemoveExplod
ID=6435
trigger1=(parent, movetype = H && var(0)=0)

[State 1001]
type=DestroySelf
trigger1=animtime=0||(parent, movetype = H && var(0)=0)
trigger2=parent, stateno = [3000,3400]

[Statedef 1002]
type = S
movetype = A
physics = S
anim = 6005
sprpriority = 3
ctrl = 0

[State 1002]
type=VarRandom
trigger1=1
v=10
range=14,28
ignorehitpause=1
persistent=0

[State 1002]
type=VarRandom
trigger1=1
v=11
range=-200,-133
ignorehitpause=1
persistent=0

[State 1002]
type=VarRandom
trigger1=1
v=12
range=540,750
ignorehitpause=1
persistent=0

[State 1002]
type=VarRandom
trigger1=1
v=13
range=6,9
ignorehitpause=1
persistent=0

[State 1002]
type=VarRandom
trigger1=1
v=20
range=56,70
ignorehitpause=1
persistent=0

[State 1002]
type=VarRandom
trigger1=1
v=21
range=-200,-133
ignorehitpause=1
persistent=0

[State 1002]
type=VarRandom
trigger1=1
v=22
range=540,750
ignorehitpause=1
persistent=0

[State 1002]
type=VarRandom
trigger1=1
v=23
range=6,9
ignorehitpause=1
persistent=0

[State 1002]
type=VarRandom
trigger1=1
v=30
range=98,112
ignorehitpause=1
persistent=0

[State 1002]
type=VarRandom
trigger1=1
v=31
range=-200,-133
ignorehitpause=1
persistent=0

[State 1002]
type=VarRandom
trigger1=1
v=32
range=540,750
ignorehitpause=1
persistent=0

[State 1002]
type=VarRandom
trigger1=1
v=33
range=6,9
ignorehitpause=1
persistent=0

[State 1002]
type=VarRandom
trigger1=1
v=40
range=140,154
ignorehitpause=1
persistent=0

[State 1002]
type=VarRandom
trigger1=1
v=41
range=-200,-133
ignorehitpause=1
persistent=0

[State 1002]
type=VarRandom
trigger1=1
v=42
range=540,750
ignorehitpause=1
persistent=0

[State 1002]
type=VarRandom
trigger1=1
v=43
range=6,9
ignorehitpause=1
persistent=0

[State 1002]
type = Explod
trigger1 = time = (var(13))
anim = 6435
ID = 6435
pos = var(10),-var(10)
postype = p1
bindtime = 1
vel = var(11)/200,var(12)/200
removetime = -2
scale = 1, 1
sprpriority = 4
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0

[State 1002]
type = Explod
trigger1 = time = (var(23))
anim = 6435
ID = 6435
pos = var(20),-var(20)
postype = p1
bindtime = 1
vel = var(21)/200,var(22)/200
removetime = -2
scale = 1, 1
sprpriority = 4
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0

[State 1002]
type = Explod
trigger1 = time = (var(33))
anim = 6435
ID = 6435
pos = var(30),-var(30)
postype = p1
bindtime = 1
vel = var(31)/200,var(32)/200
removetime = -2
scale = 1, 1
sprpriority = 4
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0

[State 1002]
type = Explod
trigger1 = time = (var(43))
anim = 6435
ID = 6435
pos = var(40),-var(40)
postype = p1
bindtime = 1
vel = var(41)/200,var(42)/200
removetime = -2
scale = 1, 1
sprpriority = 4
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0

[State 1002]
type=BindToParent
trigger1=parent, stateno = 1005
pos=37,-80
ignorehitpause=1

[State 1002]
type=BindToParent
trigger1=parent, stateno = 1025
pos=38,-80
ignorehitpause=1

[State 1002]
type=AssertSpecial
trigger1=1
flag=noshadow
ignorehitpause = 1

[State 1002]
type=Explod
trigger1=animelem=6
anim=6006
ID=1002
pos=0,0
ownpal=1

[State 1002]
type=PlaySnd
trigger1=animelem=4
value=2000,1
volume=255

[State 1002]
type=VarSet
trigger1=movecontact
trigger2=animelem=16
var(0)=1
ignorehitpause=1

[State 1002]
type=HitDef
trigger1=!time
attr=S,SP
hitflag=MAF
guardflag=MA
animtype=Medium
damage=55,10
pausetime=4,4
sparkno=S6105
guard.sparkno=S6105
sparkxy=-15,-ceil(p2dist x)
hitsound=S1000,1
guardsound=S1000,1
ground.type=High
ground.slidetime=20
guard.slidetime=10
ground.hittime=20
guard.hittime=10
ground.velocity=-3,0
guard.velocity=-.75
air.velocity=-2,-2.25
airguard.velocity=-.5,-.5
palfx.time=6
palfx.mul=192,64,64
palfx.add=128,0,0

[State 1002]
type = Helper
trigger1 = movecontact && numtarget
helpertype = Normal
name = "disperse"
id = 6430
stateno	= 6430
pos = 15,ceil(-p2dist x - p2dist y)
postype	= p2
ownpal = 1
keyctrl	= 0
ignorehitpause = 1
persistent = 0

[State 1002]
type=RemoveExplod
ID=6435
trigger1=(parent, movetype = H && var(0)=0)

[State 1002]
type=DestroySelf
trigger1=animtime=0||(parent, movetype = H && var(0)=0)
trigger2=parent, stateno = [3000,3400]

[Statedef 1003]
type = S
movetype = A
physics = S
anim = 6010
sprpriority = 3
ctrl = 0

[State 1003]
type=VarRandom
trigger1=1
v=10
range=14,28
ignorehitpause=1
persistent=0

[State 1003]
type=VarRandom
trigger1=1
v=11
range=-450,-300
ignorehitpause=1
persistent=0

[State 1003]
type=VarRandom
trigger1=1
v=12
range=300,417
ignorehitpause=1
persistent=0

[State 1003]
type=VarRandom
trigger1=1
v=13
range=6,9
ignorehitpause=1
persistent=0

[State 1003]
type=VarRandom
trigger1=1
v=20
range=56,70
ignorehitpause=1
persistent=0

[State 1003]
type=VarRandom
trigger1=1
v=21
range=-450,-300
ignorehitpause=1
persistent=0

[State 1003]
type=VarRandom
trigger1=1
v=22
range=300,417
ignorehitpause=1
persistent=0

[State 1003]
type=VarRandom
trigger1=1
v=23
range=6,9
ignorehitpause=1
persistent=0

[State 1003]
type=VarRandom
trigger1=1
v=30
range=98,112
ignorehitpause=1
persistent=0

[State 1003]
type=VarRandom
trigger1=1
v=31
range=-450,-300
ignorehitpause=1
persistent=0

[State 1003]
type=VarRandom
trigger1=1
v=32
range=300,417
ignorehitpause=1
persistent=0

[State 1003]
type=VarRandom
trigger1=1
v=33
range=6,9
ignorehitpause=1
persistent=0

[State 1003]
type=VarRandom
trigger1=1
v=40
range=140,154
ignorehitpause=1
persistent=0

[State 1003]
type=VarRandom
trigger1=1
v=41
range=-450,-300
ignorehitpause=1
persistent=0

[State 1003]
type=VarRandom
trigger1=1
v=42
range=300,417
ignorehitpause=1
persistent=0

[State 1003]
type=VarRandom
trigger1=1
v=43
range=6,9
ignorehitpause=1
persistent=0

[State 1003]
type = Explod
trigger1 = time = (var(13))
anim = 6435
ID = 6435
pos = var(10),var(10)
postype = p1
bindtime = 1
vel = var(11)/200,var(12)/200
removetime = -2
scale = 1, 1
sprpriority = 4
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0

[State 1003]
type = Explod
trigger1 = time = (var(23))
anim = 6435
ID = 6435
pos = var(20),var(20)
postype = p1
bindtime = 1
vel = var(21)/200,var(22)/200
removetime = -2
scale = 1, 1
sprpriority = 4
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0

[State 1003]
type = Explod
trigger1 = time = (var(33))
anim = 6435
ID = 6435
pos = var(30),var(30)
postype = p1
bindtime = 1
vel = var(31)/200,var(32)/200
removetime = -2
scale = 1, 1
sprpriority = 4
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0

[State 1003]
type = Explod
trigger1 = time = (var(43))
anim = 6435
ID = 6435
pos = var(40),var(40)
postype = p1
bindtime = 1
vel = var(41)/200,var(42)/200
removetime = -2
scale = 1, 1
sprpriority = 4
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0

[State 1003]
type=BindToParent
trigger1=parent, stateno = 1010
pos=37,-36
ignorehitpause=1

[State 1003]
type=BindToParent
trigger1=parent, stateno = 1030
pos=38,-36
ignorehitpause=1

[State 1003]
type=AssertSpecial
trigger1=1
flag=noshadow
ignorehitpause = 1

[State 1003]
type=Explod
trigger1=animelem=6
anim=6011
ID=1003
pos=0,0
ownpal=1

[State 1003]
type=PlaySnd
trigger1=animelem=4
value=2000,1
volume=255

[State 1003]
type=VarSet
trigger1=movecontact
trigger2=animelem=16
var(0)=1
ignorehitpause=1

[State 1003]
type=HitDef
trigger1=!time
attr=S,SP
hitflag=MAF
guardflag=MA
animtype=Medium
damage=55,10
pausetime=4,4
sparkno=S6105
guard.sparkno=S6105
sparkxy=-15,ceil(p2dist x)
hitsound=S1000,1
guardsound=S1000,1
ground.type=High
ground.slidetime=20
guard.slidetime=10
ground.hittime=20
guard.hittime=10
ground.velocity=-3,0
guard.velocity=-.75
air.velocity=-2,2.75
airguard.velocity=-.5,.5
palfx.time=6
palfx.mul=192,64,64
palfx.add=128,0,0

[State 1003]
type = Helper
trigger1 = movecontact && numtarget
helpertype = Normal
name = "disperse"
id = 6430
stateno	= 6430
pos = 15,ceil(p2dist x - p2dist y)
postype	= p2
ownpal = 1
keyctrl	= 0
ignorehitpause = 1
persistent = 0

[State 1003]
type=RemoveExplod
ID=6435
trigger1=(parent, movetype = H && var(0)=0)

[State 1003]
type=DestroySelf
trigger1=animtime=0||(parent, movetype = H && var(0)=0)
trigger2=parent, stateno = [3000,3400]

[statedef 1100]
type = S
Movetype = A
physics = S
ctrl = 0
anim = 1100
velset = 0,0

[State 1100]
type=Explod
trigger1=time=0
anim=6040
ID=1100
bindtime=-1
sprpriority=3
ownpal=1
removetime=-1
removeongethit=1
ignorehitpause=1

[State 1100]
Type = PlaySnd
Trigger1 = time = 0
Value = 10, 2

[State 1100]
Type                = HitDef
Trigger1            = AnimElem = 1
Attr                = S, SA
HitFlag             = MAF
GuardFlag           = MA
AnimType            = Light
Air.AnimType        = Light
givepower           = 0
Damage              = 0, 0
PauseTime           = 20, 20
sprpriority = -2
SparkNo             = -1
sparkxy             = 0,0
HitSound            = S200,0
GuardSound          = S12,0
Ground.Type         = Low
Air.Type            = Low
Ground.SlideTime    = 5
Guard.SlideTime     = 6
Ground.HitTime      = 5
Guard.HitTime       = 6
Ground.Velocity     = 0,0
Air.Velocity        = 0,0
Fall                = 0
Air.Fall            = 0
Persistent          = 0
p2stateno           = 1102
p2stateno           = 1101
ground.cornerpush.veloff=-6
air.cornerpush.veloff=-6
down.cornerpush.veloff=-6
guard.cornerpush.veloff=-6
airguard.cornerpush.veloff=-6
p2facing = 1

[State 1100]
type=ChangeState
trigger1=time=25
value=0
ctrl=1

[state 1100]
type=ChangeState
trigger1=movehit
value=1101

[statedef 1101]
type = S
Movetype = A
physics = S
ctrl = 0
anim = 1100
velset = 0,0

[State 1101]
type = poweradd
trigger1 = time=0
value = 80
persistent = 0
ignorehitpause=1

[State 1101]
type                = Varset
Trigger1            = fvar(5)<1
fv                  = 5
value               = 1

[State 1101]
type                = Varadd
Trigger1            = MoveHit
fv                  = 5
value               = .025

[State 1101]
type                = AttackMulSet
Trigger1            = MoveHit
value               = FVar(5)

[state 1101]
type=ChangeState
trigger1=numtarget=0
value=0
ctrl=1

[statedef 1102]
type = S
Movetype = H
ctrl = 0
sprpriority = 2
velset = 0,0
anim = ifelse(pos y != 0, 5030, 5000)

[State 1102]
type=VelSet
trigger1=time=30
x=-2.5
ignorehitpause=1

[State 1102]
type=PowerAdd
trigger1=time=0
value=-40
ignorehitpause=1
persistent=0

[State 1102]
type=LifeAdd
trigger1=time=0
value=-40
ignorehitpause=1
persistent=0
absolute=1

[state 1102]
type = palfx
trigger1 = 1;gametime%2 = 0
time = 1
ignorehitpause = 1
add = ceil(128*(sin(gametime)+1)),ceil(128*(sin(gametime)+1)),0

[State 1102]
type = selfState
trigger1 = time = 40
value = ifelse(life=0,5050,ifelse(pos Y!= 0,50,0))
ctrl = 1

[Statedef 1200]
type = S
movetype = A
physics = S
anim = 1200
velset = 0,0
poweradd = 75
ctrl = 0
juggle = 5

[State 1200]
type=PlaySnd
trigger1=time=6
value=10,6

[State 1200]
type=VelSet
trigger1=animelem=2
y=-5

[State 1200]
type=StateTypeSet
trigger1=animelem=2
statetype=A
movetype=A
physics=A

[State 1200]
type=PlayerPush
trigger1=movecontact
value=0

[State 1200]
Type                = HitDef
Trigger1            = !Time
Attr                = S, SA
HitFlag             = MAF
GuardFlag           = MA
AnimType            = Hard
Air.AnimType        = Hard
Damage              = 65, 10
PauseTime           = 4,4
SparkNo             = S(6410+random%8)
Guard.SparkNo       = S6420
sparkxy             = -10,-47
HitSound            = S11,4
GuardSound          = S12,0
Ground.Type         = High
Air.Type            = Low
Ground.SlideTime    = 10
Guard.SlideTime     = 5
Ground.HitTime      = 10
Guard.HitTime       = 5
Ground.Velocity     = -4,-6
Air.Velocity        = 7,-4.3
Fall                = 1
Persistent          = 0

[State 1200]
type = Helper
trigger1 = movehit && numtarget
helpertype = Normal
name = "disperse"
id = 6430
stateno	= 6430
pos = 10,ceil(-47 - p2dist y)
postype	= p2
ownpal = 1
keyctrl	= 0
ignorehitpause = 1
persistent = 0

[State 1200]
type = Helper
trigger1 = moveguarded && numtarget
helpertype = Normal
name = "disperse"
id = 6445
stateno	= 6445
pos = 10,ceil(-47 - p2dist y)
postype	= p2
ownpal = 1
keyctrl	= 0
ignorehitpause = 1
persistent = 0

[State 1200]
type=ChangeState
trigger1=animtime=0
value=ifelse(var(30)=0,50,95)
ctrl=var(30)

[Statedef 1201]
type = S
movetype = A
physics = S
anim = 1200
velset = 0,0
poweradd = 75
ctrl = 0
juggle = 5

[State 1201]
type=PlaySnd
trigger1=time=6
value=10,6

[State 1201]
type=VelSet
trigger1=animelem=2
y=-4
x=-5

[State 1201]
type=StateTypeSet
trigger1=animelem=2
statetype=A
movetype=A
physics=A

[State 1201]
type=PlayerPush
trigger1=movecontact
value=0

[State 1201]
Type                = HitDef
Trigger1            = !Time
Attr                = S, SA
HitFlag             = MAF
GuardFlag           = MA
AnimType            = Hard
Air.AnimType        = Hard
Damage              = 65, 10
PauseTime           = 4,4
SparkNo             = S(6410+random%8)
Guard.SparkNo       = S6420
sparkxy             = -10,-47
HitSound            = S11,4
GuardSound          = S12,0
Ground.Type         = High
Air.Type            = Low
Ground.SlideTime    = 10
Guard.SlideTime     = 5
Ground.HitTime      = 10
Guard.HitTime       = 5
Ground.Velocity     = -6,-5
Air.Velocity        = -5,-6
Fall                = 1
Persistent          = 0

[State 1201]
type = Helper
trigger1 = movehit && numtarget
helpertype = Normal
name = "disperse"
id = 6430
stateno	= 6430
pos = 10,ceil(-47 - p2dist y)
postype	= p2
ownpal = 1
keyctrl	= 0
ignorehitpause = 1
persistent = 0

[State 1201]
type = Helper
trigger1 = moveguarded && numtarget
helpertype = Normal
name = "disperse"
id = 6445
stateno	= 6445
pos = 10,ceil(-47 - p2dist y)
postype	= p2
ownpal = 1
keyctrl	= 0
ignorehitpause = 1
persistent = 0

[State 1201]
type=ChangeState
trigger1=animtime=0
value=ifelse(var(30)=0,50,95)
ctrl=var(30)

[Statedef 1202]
type = S
movetype = A
physics = S
anim = 1200
velset = 0,0
poweradd = 75
ctrl = 0
juggle = 5

[State 1202]
type=PlaySnd
trigger1=time=6
value=10,6

[State 1202]
type=VelSet
trigger1=animelem=2
y=-8
x=3

[State 1202]
type=StateTypeSet
trigger1=animelem=2
statetype=A
movetype=A
physics=A

[State 1202]
Type                = HitDef
Trigger1            = !Time
Attr                = S, SA
HitFlag             = MAF
GuardFlag           = MA
AnimType            = Hard
Air.AnimType        = Hard
Damage              = 65, 10
PauseTime           = 4,4
SparkNo             = S(6410+random%8)
Guard.SparkNo       = S6420
sparkxy             = -10,-47
HitSound            = S11,4
GuardSound          = S12,0
Ground.Type         = High
Air.Type            = Low
Ground.SlideTime    = 10
Guard.SlideTime     = 5
Ground.HitTime      = 10
Guard.HitTime       = 5
Ground.Velocity     = -3.25,-6
Air.Velocity        = -3.25,-5.5
Fall                = 1
Persistent          = 0

[State 1202]
type = Helper
trigger1 = movehit && numtarget
helpertype = Normal
name = "disperse"
id = 6430
stateno	= 6430
pos = 10,ceil(-47 - p2dist y)
postype	= p2
ownpal = 1
keyctrl	= 0
ignorehitpause = 1
persistent = 0

[State 1202]
type = Helper
trigger1 = moveguarded && numtarget
helpertype = Normal
name = "disperse"
id = 6445
stateno	= 6445
pos = 10,ceil(-47 - p2dist y)
postype	= p2
ownpal = 1
keyctrl	= 0
ignorehitpause = 1
persistent = 0

[State 1202]
type=ChangeState
trigger1=animtime=0
value=ifelse(var(30)=0,50,95)
ctrl=var(30)

[Statedef 1300]
type = S
movetype = I
physics = S
anim = 1300
velset = 0,0
poweradd = 75
ctrl = 0
juggle = 2

[State 1300]
type=VarSet
trigger1=time=0&&var(59)=0
v=1
value=ifelse(command="a",0,ifelse(command="b",1,3))
ignorehitpause=1
persistent=0

[State 1300]
type=VarSet
trigger1=time=0&&var(59)=1
v=1
value=ifelse(p2dist x<55,0,ifelse(p2dist x<77,1,3))
ignorehitpause=1
persistent=0

[State 1300]
type=VelSet
trigger1=time=0
x=3
y=-3

[State 1300]
type=StateTypeSet
trigger1=time=0
statetype=A
movetype=A
physics=A

[State 1300]
type=AfterImage
trigger1=anim=1300
time=15
length=10
timegap=1
palcolor=256
palinvertall=0
palbright=30,30,30
palcontrast=120,120,120
palpostbright=0,0,0
paladd=0,0,0
palmul=.65,.65,.65
trans=add
persistent=0

[State 1300]
type=AssertSpecial
trigger1=(animelem=1||animelem=2||animelem=3)&&anim=1300
flag=noshadow
ignorehitpause=1

[State 1300]
type=AssertSpecial
trigger1=anim=1300
flag=invisible
ignorehitpause=1

[State 1300]
type=PlayerPush
trigger1=(animelem=1||animelem=2||animelem=3)&&anim=1300
value=0

[State 1300]
type=PlaySnd
trigger1=animelem=1
value=1300,0
persistent=0
volume=128

[State 1300]
type=PosAdd
trigger1=animelem=3&&anim=1300
x=15+var(1)*25
y=-45-var(1)*15
persistent=0

[State 1300]
type=ChangeAnim
trigger1=anim=1300&&animtime=0
value=1301

[State 1300]
type=VelSet
trigger1=anim=1301&&animelem=2
x=4
y=5

[State 1300]
type=Explod
trigger1=anim=1301&&animelemtime(2)=0
anim=6205
ID=1300
pos=0,0
removetime=-2
bindtime=-1
sprpriority=3
ownpal=1
removeongethit=1

[State 1300]
type=PlaySnd
trigger1=anim=1301&&animelemtime(2)=0
value=10,1

[State 1300]
Type                = HitDef
Trigger1            = !time
Attr                = A, SA
GuardFlag           = HA
Damage              = 50+2*var(1),8
PauseTime           = 6,6
SparkNo             = S(6410+random%8)
Guard.SparkNo       = S6420
SparkXY             = -15,-14
HitSound            = S11,4
GuardSound          = S12,0
AnimType            = Hard
Ground.Type         = High
Air.Type            = Low
Ground.SlideTime    = 20
Ground.HitTime      = 20
Ground.Velocity     = -3+var(1)/2
Air.Velocity        = -4.5+var(1)/2.5,6+var(1)/2.5
air.fall=1

[State 1300]
type = Helper
trigger1 = movehit && numtarget
helpertype = Normal
name = "disperse"
id = 6430
stateno	= 6430
pos = 15,ceil(-14 - p2dist y)
postype	= p2
ownpal = 1
keyctrl	= 0
ignorehitpause = 1
persistent = 0

[State 1300]
type = Helper
trigger1 = moveguarded && numtarget
helpertype = Normal
name = "disperse"
id = 6445
stateno	= 6445
pos = 15,ceil(-14 - p2dist y)
postype	= p2
ownpal = 1
keyctrl	= 0
ignorehitpause = 1
persistent = 0

[Statedef 1400]
type = S
movetype = A
physics = S
anim = 1400
poweradd = 60
ctrl = 0
juggle = 2

[State 1400]
type = VarSet
trigger1 = 1
var(17) = 0
ignorehitpause = 1
persistent = 1

[State 1400]
type=PlaySnd
trigger1=time=6
value=10,3

[State 1400]
Type                = HitDef
Trigger1            = !time
Attr                = S, SA
HitFlag             = MAF
GuardFlag           = MA
AnimType            = Hard
Air.AnimType        = Hard
Damage              = 50
PauseTime           = 4,4
SparkNo             = S(6410+random%8)
Guard.SparkNo       = S6420
sparkxy             = -10,-46
HitSound            = S11,4
GuardSound          = S12,0
Ground.Type         = High
Air.Type            = High
Ground.SlideTime    = 20
Guard.SlideTime     = 10
Ground.HitTime      = 25
Guard.HitTime       = 10
Ground.Velocity     = -4
Air.Velocity        = -4,-1

[State 1400]
type = Helper
trigger1 = movehit && numtarget
helpertype = Normal
name = "disperse"
id = 6430
stateno	= 6430
pos = 10,ceil(-46 - p2dist y)
postype	= p2
ownpal = 1
keyctrl	= 0
ignorehitpause = 1
persistent = 0

[State 1400]
type = Helper
trigger1 = moveguarded && numtarget
helpertype = Normal
name = "disperse"
id = 6445
stateno	= 6445
pos = 10,ceil(-46 - p2dist y)
postype	= p2
ownpal = 1
keyctrl	= 0
ignorehitpause = 1
persistent = 0

[State 1400]
type=ChangeState
trigger1=animtime=0
value=0
ctrl=1

[Statedef 3000]
type = S
movetype = A
physics = S
anim = 3000
ctrl = 0
velset = 0,0

[State 3000]
type=PlaySnd
trigger1=time=10
value=3000,0
volume=128
ignorehitpause=1
persistent=0

[State 3000]
type=Explod
trigger1=time=10
anim=6500
ID=3000
pos=0,0
postype=left
bindtime=-1
removetime=30
supermove=999
pausemovetime=999
sprpriority=-999
ownpal=1
removeongethit=1
ignorehitpause=1
persistent=0

[State 3000]
type=VarSet
trigger1=time=0
fvar(0)=0
ignorehitpause=1
persistent=0

[State 3000]
type=VarAdd
trigger1=time>=10&&time<=35
fvar(0)=.007
ignorehitpause=1
persistent=1

[State 3000]
type=Explod
trigger1=time>=10&&time<=39
anim=6050
ID=3001
pos=4,-69
bindtime=1
removetime=1
supermove=999
pausemovetime=999
scale=fvar(0),fvar(0)
sprpriority=2
ownpal=1
removeongethit=1
ignorehitpause=1
persistent=1

[State 3000]
type=SuperPause
trigger1=time=10
time=30
anim=S1
pos=0,0
movetime=30
poweradd=-1000

[State 3000]
type=Helper
trigger1=time=45||time=75||time=105||time=135||time=165
name="Laser"
ID=3000
pos=ifelse(anim=3000,2,3),ifelse(anim=3000,-72,-69)
stateno=3001
ownpal=1

[State 3000]
type=ChangeAnim
trigger1=time=67||time=127
value=3001

[State 3000]
type=ChangeAnim
trigger1=time=97||time=157
value=3000

[State 3000]
type=ChangeState
trigger1=time=200
value=0
ctrl=1

[Statedef 3001]
type = S
movetype = A
physics = S
anim = ifelse(parent, anim=3000,6015,6016)
sprpriority = 3
ctrl = 0

[State 3001]
type=VarRandom
trigger1=1
v=10
range=20,40
ignorehitpause=1
persistent=0

[State 3001]
type=VarRandom
trigger1=1
v=11
range=-300,-200
ignorehitpause=1
persistent=0

[State 3001]
type=VarRandom
trigger1=1
v=12
range=450,625
ignorehitpause=1
persistent=0

[State 3001]
type=VarRandom
trigger1=1
v=13
range=6,9
ignorehitpause=1
persistent=0

[State 3001]
type=VarRandom
trigger1=1
v=20
range=80,100
ignorehitpause=1
persistent=0

[State 3001]
type=VarRandom
trigger1=1
v=21
range=-300,-200
ignorehitpause=1
persistent=0

[State 3001]
type=VarRandom
trigger1=1
v=22
range=450,625
ignorehitpause=1
persistent=0

[State 3001]
type=VarRandom
trigger1=1
v=23
range=6,9
ignorehitpause=1
persistent=0

[State 3001]
type=VarRandom
trigger1=1
v=30
range=140,160
ignorehitpause=1
persistent=0

[State 3001]
type=VarRandom
trigger1=1
v=31
range=-300,-200
ignorehitpause=1
persistent=0

[State 3001]
type=VarRandom
trigger1=1
v=32
range=450,625
ignorehitpause=1
persistent=0

[State 3001]
type=VarRandom
trigger1=1
v=33
range=6,9
ignorehitpause=1
persistent=0

[State 3001]
type=VarRandom
trigger1=1
v=40
range=200,220
ignorehitpause=1
persistent=0

[State 3001]
type=VarRandom
trigger1=1
v=41
range=-300,-200
ignorehitpause=1
persistent=0

[State 3001]
type=VarRandom
trigger1=1
v=42
range=450,625
ignorehitpause=1
persistent=0

[State 3001]
type=VarRandom
trigger1=1
v=43
range=6,9
ignorehitpause=1
persistent=0

[State 3001]
type = Explod
trigger1 = time = (var(13))
anim = 6440
ID = 6440
pos = var(10),0
postype = p1
bindtime = 1
vel = var(11)/200,var(12)/200
removetime = -2
scale = 1, 1
sprpriority = 4
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0

[State 3001]
type = Explod
trigger1 = time = (var(23))
anim = 6440
ID = 6440
pos = var(20),0
postype = p1
bindtime = 1
vel = var(21)/200,var(22)/200
removetime = -2
scale = 1, 1
sprpriority = 4
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0

[State 3001]
type = Explod
trigger1 = time = (var(33))
anim = 6440
ID = 6440
pos = var(30),0
postype = p1
bindtime = 1
vel = var(31)/200,var(32)/200
removetime = -2
scale = 1, 1
sprpriority = 4
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0

[State 3001]
type = Explod
trigger1 = time = (var(43))
anim = 6440
ID = 6440
pos = var(40),0
postype = p1
bindtime = 1
vel = var(41)/200,var(42)/200
removetime = -2
scale = 1, 1
sprpriority = 4
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0

[State 3001]
type=BindToParent
trigger1=parent, anim = 3000
pos=2,-69
ignorehitpause=1

[State 3001]
type=BindToParent
trigger1=parent, anim = 3001
pos=3,-72
ignorehitpause=1

[State 3001]
type=AssertSpecial
trigger1=1
flag=noshadow
ignorehitpause = 1

[State 3001]
type=Explod
trigger1=time=animelem=6
anim=6018
ID=3001
pos=0,0
ownpal=1

[State 3001]
type=PlaySnd
trigger1=animelem=3
value=2000,1
volume=255

[State 3001]
type=VarSet
trigger1=movecontact
trigger2=animelem=20
var(0)=1
ignorehitpause=1

[State 3001]
type=HitDef
trigger1=!time
attr=S,HP
hitflag=MAF
guardflag=MA
animtype=Hard
damage=30,8
pausetime=0,8
sparkno=S6110
guard.sparkno=S6110
sparkxy=-10,0
hitsound=S1000,1
guardsound=S1000,1
ground.type=High
ground.slidetime=40
guard.slidetime=22
ground.hittime=40
guard.hittime=22
ground.velocity=0,-4.5
guard.velocity=-3
air.velocity=0,-4.2
airguard.velocity=-1.75,-1.25
palfx.time=12
palfx.mul=192,192,64
palfx.add=128,128,0
fall=1
getpower=0

[State 3001]
type = Helper
trigger1 = movecontact && numtarget
helpertype = Normal
name = "disperse"
id = 6431
stateno	= 6431
pos = 10,ceil(- p2dist y)
postype	= p2
ownpal = 1
keyctrl	= 0
ignorehitpause = 1
persistent = 0

[State 3001]
type=DestroySelf
trigger1=animtime=0||(parent, movetype = H && var(0)=0)

[Statedef 3100]
type = S
movetype = A
physics = S
anim = 3100
ctrl = 0
velset = 0,0
sprpriority = 0

[State 3100]
type=PlaySnd
trigger1=time=10
value=3000,0
volume=128
ignorehitpause=1
persistent=0

[State 3100]
type=Explod
trigger1=time=10
anim=6500
ID=3100
pos=0,0
postype=left
bindtime=-1
removetime=30
supermove=999
pausemovetime=999
sprpriority=-999
ownpal=1
removeongethit=1
ignorehitpause=1
persistent=0

[State 3100]
type=Helper
trigger1=time>=10&&time<=35&&time%4=2
helpertype=normal
name="Charge Effect"
ID=3100
pos=-11,-59
stateno=3102
ownpal=1
supermovetime=999
pausemovetime=999
size.xscale=.25
size.yscale=.25
ignorehitpause=1
persistent=1

[State 3100]
type=VarSet
trigger1=time=0
fvar(0)=0
ignorehitpause=1
persistent=0

[State 3100]
type=VarAdd
trigger1=time>=10&&time<=35
fvar(0)=.035
ignorehitpause=1
persistent=1

[State 3100]
type=Explod
trigger1=time=10
anim=6055
ID=3102
pos=-11,-59
bindtime=-1
removetime=999
supermove=999
pausemovetime=999
scale=fvar(0),fvar(0)
sprpriority=2
ownpal=1
removeongethit=1
ignorehitpause=1
persistent=1

[State 3100]
type=ModifyExplod
trigger1=time>=10&&time<=39
ID=3102
scale=fvar(0),fvar(0)
ignorehitpause=1
persistent=1

[State 3100]
type=Explod
trigger1=time=10
anim=3101
ID=3101
pos=0,0
bindtime=1
removetime=30
supermove=999
pausemovetime=999
sprpriority=3
ownpal=1
removeongethit=1
ignorehitpause=1
persistent=1

[State 3100]
type=SuperPause
trigger1=time=10
time=30
anim=S1
pos=0,0
movetime=30
poweradd=-2000

[State 3100]
type=Explod
trigger1=animelem=2
anim=6309
ID=6309
pos=12,0
bindtime=1
vel=0,0
removetime=-2
sprpriority=3
ownpal=1
removeongethit=0
persistent=0

[State 3100]
type=Helper
trigger1=animelem=2
name="Beam"
ID=3000
pos=43,-57
stateno=3101
ownpal=1

[State 3100]
type=ChangeState
trigger1=animtime=0
value=0
ctrl=1

[Statedef 3150]
type = A
movetype = A
physics = S
anim = 3150
ctrl = 0
velset = 0,0
sprpriority = 0

[State 3150]
type=Turn
trigger1=prevstateno=1200&&p2dist x < -10
ignorehitpause=1
persistent=0

[State 3150]
type=PlaySnd
trigger1=time=10
value=3000,0
volume=128
ignorehitpause=1
persistent=0

[State 3150]
type=Explod
trigger1=time=10
anim=6500
ID=3150
pos=0,0
postype=left
bindtime=-1
removetime=30
supermove=999
pausemovetime=999
sprpriority=-999
ownpal=1
removeongethit=1
ignorehitpause=1
persistent=0

[State 3150]
type=Helper
trigger1=time>=10&&time<=35&&time%4=2
helpertype=normal
name="Charge Effect"
ID=3100
pos=-7,-60
stateno=3102
ownpal=1
supermovetime=999
pausemovetime=999
size.xscale=.25
size.yscale=.25
ignorehitpause=1
persistent=1

[State 3150]
type=VarSet
trigger1=time=0
fvar(0)=0
ignorehitpause=1
persistent=0

[State 3150]
type=VarAdd
trigger1=time>=10&&time<=35
fvar(0)=.035
ignorehitpause=1
persistent=1

[State 3150]
type=Explod
trigger1=time=10
anim=6055
ID=3152
pos=-7,-60
bindtime=-1
removetime=999
supermove=999
pausemovetime=999
scale=fvar(0),fvar(0)
sprpriority=2
ownpal=1
removeongethit=1
ignorehitpause=1
persistent=1

[State 3150]
type=ModifyExplod
trigger1=time>=10&&time<=39
ID=3152
scale=fvar(0),fvar(0)
ignorehitpause=1
persistent=1

[State 3150]
type=Explod
trigger1=time=10
anim=3151
ID=3151
pos=0,0
bindtime=1
removetime=30
supermove=999
pausemovetime=999
sprpriority=3
ownpal=1
removeongethit=1
ignorehitpause=1
persistent=1

[State 3150]
type=SuperPause
trigger1=time=10
time=30
anim=S1
pos=0,0
movetime=30
poweradd=-2000

[State 3150]
type=Helper
trigger1=animelem=2
name="Beam"
ID=3000
pos=39,-58
stateno=3101
ownpal=1

[State 3150]
type=ChangeState
trigger1=animtime=0
value=ifelse(var(30)=1,95,50)
ctrl=1

[Statedef 3101]
type = S
movetype = A
physics = S
anim = 6020
sprpriority = 3
ctrl = 0

[State 3101]
type=VarRandom
trigger1=1
v=10
range=20,180
ignorehitpause=1
persistent=1

[State 3101]
type=VarRandom
trigger1=1
v=11
range=-50,50
ignorehitpause=1
persistent=1

[State 3101]
type=VarRandom
trigger1=1
v=12
range=800,1200
ignorehitpause=1
persistent=1

[State 3101]
type=VarRandom
trigger1=1
v=13
range=-50,50
ignorehitpause=1
persistent=1

[State 3101]
type=VarRandom
trigger1=1
v=14
range=0,2
ignorehitpause=1
persistent=1

[State 3101]
type=VarRandom
trigger1=1
v=20
range=20,180
ignorehitpause=1
persistent=1

[State 3101]
type=VarRandom
trigger1=1
v=21
range=-50,50
ignorehitpause=1
persistent=1

[State 3101]
type=VarRandom
trigger1=1
v=22
range=800,1200
ignorehitpause=1
persistent=1

[State 3101]
type=VarRandom
trigger1=1
v=23
range=-50,50
ignorehitpause=1
persistent=1

[State 3101]
type=VarRandom
trigger1=1
v=24
range=0,2
ignorehitpause=1
persistent=1

[State 3101]
type = Explod
trigger1 = var(14)=2
anim = 6440
ID = 6440
pos = var(10),var(11)
postype = p1
bindtime = 1
vel = var(12)/200,var(13)/200
removetime = -2
scale = 1, 1
sprpriority = 4
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 1

[State 3101]
type = Explod
trigger1 = var(24)=2
anim = 6440
ID = 6440
pos = var(20),var(21)
postype = p1
bindtime = 1
vel = var(22)/200,var(23)/200
removetime = -2
scale = 1, 1
sprpriority = 4
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 1

[State 3101]
type=VarRandom
trigger1=1
v=40
range=100,160
ignorehitpause=1
persistent=1

[State 3101]
type=Helper
trigger1=gametime%4=0&&random<700&&(parent, pos y=0)&&time<24&&numhelper(6455)<4
helpertype=normal
name="rock"
ID=6455
pos=var(40),57
postype=p1
facing=1
stateno=3103
ownpal=1
ignorehitpause=1
persistent=1

[State 3101]
type=BindToParent
trigger1=parent, stateno = 3100
pos=43,-57
ignorehitpause=1

[State 3101]
type=BindToParent
trigger1=parent, stateno = 3150
pos=39,-58
ignorehitpause=1

[State 3101]
type=BindToParent
trigger1=1
pos=43,-57
ignorehitpause=1

[State 3101]
type=AssertSpecial
trigger1=1
flag=noshadow
ignorehitpause = 1

[State 3101]
type=PlaySnd
trigger1=animelem=3
value=3100,0
volume=255

[State 3101]
type=HitDef
trigger1=!time
attr=S,HP
hitflag=MAF
guardflag=MA
animtype=Hard
damage=285,65
pausetime=0,10
sparkno=S6110
guard.sparkno=S6110
sparkxy=-20,0
hitsound=S170,0
guardsound=S3100,5
ground.type=Low
ground.slidetime=45
guard.slidetime=24
ground.hittime=45
guard.hittime=24
ground.velocity=-9,-4
guard.velocity=-4
air.velocity=-9,-4.5
airguard.velocity=-3.5,-2.5
palfx.time=20
palfx.mul=192,192,64
palfx.add=128,128,0
fall=1
getpower=0

[State 3301]
type = Helper
trigger1 = movecontact && numtarget
helpertype = Normal
name = "disperse"
id = 6431
stateno	= 6431
pos = 10,ceil(- p2dist y)
postype	= p2
ownpal = 1
keyctrl	= 0
ignorehitpause = 1
persistent = 0

[State 3101]
type=DestroySelf
trigger1=animtime=0||parent, movetype = H

[Statedef 3102]
physics = N
anim = 6045
sprpriority = 2

[State 3102]
type=PalFX
trigger1=1
time=2
add=0,0,-64
mul=512,512,0
ignorehitpause=1
persistent=1

[State 3102]
type=VarRandom
trigger1=time=0
v=0
range=0,200
ignorehitpause=1
persistent=0

[State 3102]
type=PosAdd
trigger1=time=0
x=sin(Pi*var(0)/100)*50
y=cos(Pi*var(0)/100)*50
ignorehitpause=1
persistent=0

[State 3102]
type=VelSet
trigger1=1
x=-sin(Pi*var(0)/100)*3.333333333333333333333333333
y=-cos(Pi*var(0)/100)*3.333333333333333333333333333
ignorehitpause=1
persistent=1

[State 3102]
type=AssertSpecial
trigger1=1
flag=noshadow
ignorehitpause=1
persistent=1

[State 3102]
type=DestroySelf
trigger1=(parent, stateno!=3100&&parent, stateno!=3150)||(parent, animelem=2)||time>=15
ignorehitpause=1
persistent=1

[Statedef 3103]
ctrl = 0
movetype = I

[State 3103]
type=VarRandom
trigger1=time=0
v=0
range=0,4
ignorehitpause=1
persistent=0

[State 3103]
type=VarRandom
trigger1=time=0
v=1
range=1,4
ignorehitpause=1
persistent=0

[State 3103]
type=VarRandom
trigger1=time=0
v=2
range=375,625
ignorehitpause=1
persistent=0

[State 3103]
type=VarRandom
trigger1=time=0
v=3
range=-250,-200
ignorehitpause=1
persistent=0

[State 3103]
type=VarRandom
trigger1=time=0
v=4
range=0,25
ignorehitpause=1
persistent=0

[State 3103]
type=ChangeAnim
trigger1=var(0)<=3
value=6457
elem=var(1)
ignorehitpause=1
persistent=1

[State 3103]
type=ChangeAnim
trigger1=var(0)=4
value=6456
elem=var(1)%2+1
ignorehitpause=1
persistent=1

[State 3103]
type=VelSet
trigger1=time=0
x=var(2)/100
y=var(3)/100
ignorehitpause=1
persistent=1

[State 3103]
type=PlaySnd
trigger1=time=0&&var(0)<=3
value=6455,0
volume=-160
ignorehitpause=1
persistent=0

[State 3103]
type=PlaySnd
trigger1=time=0&&var(0)=4
value=6455,0
volume=-96
ignorehitpause=1
persistent=0

[State 3103]
type=PlaySnd
trigger1=pos y >= 0&&time>0&&var(0)<=3
value=6455,1
volume=-96
ignorehitpause=1
persistent=0

[State 3103]
type=PlaySnd
trigger1=pos y >= 0&&time>0&&var(0)=4
value=6455,1
volume=-32
ignorehitpause=1
persistent=0

[State 3103]
type=velset
trigger1=pos y >= 0&&time>0
y=0
ignorehitpause=1
persistent=1

[State 3103]
type=posset
trigger1=pos y >= 0&&time>0
y=0
ignorehitpause=1
persistent=1

[State 3103]
type=Gravity
trigger1=vel y >=0
trigger2=parent, time>=24
ignorehitpause=1
persistent=1

[State 3103]
type=StateTypeSet
trigger1=pos y >= 0&&time>0
physics=S
ignorehitpause=1
persistent=1

[State 3103]
type=AssertSpecial
trigger1=time>=20+var(4)&&time<80+var(4)&&time%7=0
flag=invisible
ignorehitpause=1
persistent=1

[State 3103]
type=AssertSpecial
trigger1=time>=40+var(4)&&time<100+var(4)&&time%6=0
flag=invisible
ignorehitpause=1
persistent=1

[State 3103]
type=AssertSpecial
trigger1=time>=60+var(4)&&time%5=0
flag=invisible
ignorehitpause=1
persistent=1

[State 3103]
type=DestroySelf
trigger1=time=80+var(4)
trigger2=frontedgedist < 3
ignorehitpause=1
persistent=1

[Statedef 3200]
type = C
movetype = A
physics = N
anim = 3200
ctrl = 0
velset = 0,0

[State 3200]
type=Helper
trigger1=animelem=2
helpertype=normal
name="Afterimage"
ID=3200
pos=0,0
stateno=3202
ownpal=0
ignorehitpause=1
persistent=0

[State 3200]
type=Turn
trigger1=prevstateno=1200&&p2dist x < -10
ignorehitpause=1
persistent=0

[State 3200]
type=PlaySnd
trigger1=time=5
value=3000,0
volume=128
ignorehitpause=1
persistent=0

[State 3200]
type=Explod
trigger1=time=5
anim=6500
ID=3000
pos=0,0
postype=left
bindtime=-1
removetime=30
supermove=999
pausemovetime=999
sprpriority=-999
ownpal=1
removeongethit=1
ignorehitpause=1
persistent=0

[State 3200]
type=SuperPause
trigger1=time=5
time=30
anim=S1
pos=0,0
movetime=0
poweradd=-1000

[State 3200]
type=PlaySnd
trigger1=animelemtime(2)=0
value=3200,0
volume=255
freqmul=1.0
ignorehitpause=1

[State 3200]
type=Explod
trigger1=animelemtime(2)=0&&pos y >= -8
anim=6307
ID=3200
pos=0,ceil(-pos y)
removetime=-2
bindtime=1
sprpriority=3
ownpal=1

[State 3200]
type=Helper
trigger1=gametime%3=0&&vel x > 0&&random<800&&!movecontact&&pos y=0
helpertype=normal
name="rock"
ID=6455
pos=-5,0
postype=p1
facing=1
stateno=3203
ownpal=1
ignorehitpause=1
persistent=1

[State 3200]
type=VelSet
trigger1=animelemtime(2)=0
x=13

[State 3200]
type=HitDef
trigger1=animelem=2
attr=C,HA
hitflag=MAF
guardflag=M
animtype=Hard
air.animtype=Hard
fall.animtype=Hard
damage=65,10
pausetime=10,10
sparkno=S(6410+random%8)
guard.sparkno=S6420
sparkxy=-10,-10
hitsound=S3200,1
guardsound=S12,0
ground.type=Low
air.type=Low
ground.slidetime=0
guard.slidetime=5
ground.hittime=20
guard.hittime=15
air.hittime=20
ground.velocity=1.7,-5.25
guard.velocity=-2
air.velocity=1.7,-5.25
airguard.velocity=-3,-3
fall=1
getpower=0,0
envshake.time=10
envshake.freq=60
envshake.ampl=-3
persistent=1

[State 3200]
type = Helper
trigger1 = movehit && numtarget
helpertype = Normal
name = "disperse"
id = 6430
stateno	= 6430
pos = 10,ceil(-10 - p2dist y)
postype	= p2
ownpal = 1
keyctrl	= 0
ignorehitpause = 1
persistent = 0

[State 3200]
type = Helper
trigger1 = moveguarded && numtarget
helpertype = Normal
name = "disperse"
id = 6445
stateno	= 6445
pos = 10,ceil(-10 - p2dist y)
postype	= p2
ownpal = 1
keyctrl	= 0
ignorehitpause = 1
persistent = 0

[State 3200]
type=VelSet
trigger1=movehit
x=8
ignorehitpause=1

[State 3200]
type=VelAdd
trigger1=time>=20&&vel x>=.2
x=-.2
ignorehitpause=1

[State 3200]
type=ChangeState
trigger1=movehit=0&&time>23
value=11
ctrl=1

[State 3200]
type=PlayerPush
trigger1=movehit
value=0

[State 3200]
type=ChangeState
trigger1=movehit>=6&&p2dist x<-5
value=3201
ctrl=1

[Statedef 3201]
type = S
movetype = A
physics = S
anim = 3201
ctrl = 0
velset = 0,0

[State 3201]
type=PlaySnd
trigger1=time=16
value=10,6
volume=128

[State 3201]
type=Turn
trigger1=time=0

[State 3201]
type=HitDef
trigger1=animelem=5
attr=S,HA
hitflag=MAF
guardflag=MA
animtype=Back
damage=105,10
pausetime=5,5
sparkno=S6110
guard.sparkno=S6110
sparkxy=-35,-39
hitsound=S3200,2
guardsound=S12,0
ground.type=Trip
ground.slidetime=0
guard.slidetime=5
ground.hittime=20
guard.hittime=10
ground.velocity=-8,-1
guard.velocity=-2.5
air.velocity=-8,-.5
airguard.velocity=-1.5,-1.5
fall=1
fall.damage=10
envshake.time=10
envshake.freq=60
envshake.ampl=-4

[State 3201]
type = Helper
trigger1 = movecontact && numtarget
helpertype = Normal
name = "disperse"
id = 6431
stateno	= 6431
pos = 10,ceil(- p2dist y)
postype	= p2
ownpal = 1
keyctrl	= 0
ignorehitpause = 1
persistent = 0

[State 3201]
type=ChangeState
trigger1=animtime=0
value=0
ctrl=1

[Statedef 3202]
ctrl = 0

[State 3202]
type=BindToParent
trigger1=1
time=1
pos=0,0
ignorehitpause=1
persistent=1
facing = 1

[State 3202]
type=ChangeAnim
trigger1=1
value=parent,anim
elem=parent,animelemno(0)
ignorehitpause=1
persistent=1

[State 3202]
type=AssertSpecial
trigger1=1
flag=noshadow
flag2=invisible
ignorehitpause=1
persistent=1

[State 3202]
type=NotHitBy
trigger1=1
value=SCA
time=1
ignorehitpause=1
persistent=1

[State 3202]
type=AfterImage
trigger1=time=0
time=999
length=15
timegap=1
palcolor=256
palinvertall=0
palbright=30,30,30
palcontrast=120,120,120
palpostbright=0,0,0
paladd=0,0,0
palmul=.65,.65,.65
trans=add
persistent=0

[State 3202]
type=AfterImageTime
trigger1=(parent, movetype=H)||((parent, stateno!=3200)&&(parent, stateno!=3201)&&(parent, stateno!=3300))
time=0
ignorehitpause=1
persistent=1

[State 3202]
type=DestroySelf
trigger1=(parent, movetype=H)||((parent, stateno!=3200)&&(parent, stateno!=3201)&&(parent, stateno!=3300))
ignorehitpause=1
persistent=1

[Statedef 3203]
ctrl = 0
movetype = I

[State 3203]
type=VarRandom
trigger1=time=0
v=0
range=0,6
ignorehitpause=1
persistent=0

[State 3203]
type=VarRandom
trigger1=time=0
v=1
range=1,4
ignorehitpause=1
persistent=0

[State 3203]
type=VarRandom
trigger1=time=0
v=2
range=-475,-225
ignorehitpause=1
persistent=0

[State 3203]
type=VarRandom
trigger1=time=0
v=3
range=-650,-350
ignorehitpause=1
persistent=0

[State 3203]
type=VarRandom
trigger1=time=0
v=4
range=0,40
ignorehitpause=1
persistent=0

[State 3203]
type=ChangeAnim
trigger1=var(0)<=2
value=6455
elem=var(1)
ignorehitpause=1
persistent=1

[State 3203]
type=ChangeAnim
trigger1=var(0)>2&&var(0)<=5
value=6456
elem=var(1)
ignorehitpause=1
persistent=1

[State 3203]
type=ChangeAnim
trigger1=var(0)=6
value=6458
elem=(var(1)%2)+1
ignorehitpause=1
persistent=1

[State 3203]
type=VelSet
trigger1=time=0
x=var(2)/100
y=var(3)/100
ignorehitpause=1
persistent=1

[State 3203]
type=PlaySnd
trigger1=time=0&&var(0)<=2
value=6455,0
volume=-128
ignorehitpause=1
persistent=0

[State 3203]
type=PlaySnd
trigger1=time=0&&var(0)<=5
value=6455,0
volume=-96
ignorehitpause=1
persistent=0

[State 3203]
type=PlaySnd
trigger1=time=0&&var(0)=6
value=6455,0
volume=-64
ignorehitpause=1
persistent=0

[State 3203]
type=PlaySnd
trigger1=pos y >= 0&&time>0&&var(0)<=2
value=6455,1
volume=-64
ignorehitpause=1
persistent=0

[State 3203]
type=PlaySnd
trigger1=pos y >= 0&&time>0&&var(0)<=5
value=6455,1
volume=-32
ignorehitpause=1
persistent=0

[State 3203]
type=PlaySnd
trigger1=pos y >= 0&&time>0&&var(0)=6
value=6455,1
volume=0
ignorehitpause=1
persistent=0

[State 3203]
type=velset
trigger1=pos y >= 0&&time>0
y=0
ignorehitpause=1
persistent=1

[State 3203]
type=posset
trigger1=pos y >= 0&&time>0
y=0
ignorehitpause=1
persistent=1

[State 3203]
type=Gravity
trigger1=1
ignorehitpause=1
persistent=1

[State 3203]
type=StateTypeSet
trigger1=pos y >= 0&&time>0
physics=S
ignorehitpause=1
persistent=1

[State 3203]
type=AssertSpecial
trigger1=time>=60+var(4)&&time<80+var(4)&&time%7=0
flag=invisible
ignorehitpause=1
persistent=1

[State 3203]
type=AssertSpecial
trigger1=time>=80+var(4)&&time<100+var(4)&&time%6=0
flag=invisible
ignorehitpause=1
persistent=1

[State 3203]
type=AssertSpecial
trigger1=time>=100+var(4)&&time%5=0
flag=invisible
ignorehitpause=1
persistent=1

[State 3203]
type=DestroySelf
trigger1=time=120+var(4)
ignorehitpause=1
persistent=1

[Statedef 3300]
type = S
movetype = A
physics = N
anim = 3300
ctrl = 0
velset = 0,0

[State 3300]
type=Helper
trigger1=animelem=3
helpertype=normal
name="Afterimage"
ID=3200
pos=0,0
stateno=3202
ownpal=0
ignorehitpause=1
persistent=0

[State 3300]
type=Helper
trigger1=time=5
helpertype=normal
name="charge1"
ID=3301
pos=-21,-41
postype=p1
stateno=3301
ownpal=1
supermovetime=999
pausemovetime=999
ignorehitpause=1
persistent=0

[State 3300]
type=Helper
trigger1=time=5
helpertype=normal
name="charge2"
ID=3302
pos=14,-35
postype=p1
stateno=3302
ownpal=1
supermovetime=999
pausemovetime=999
ignorehitpause=1
persistent=0

[State 3300]
type=PlaySnd
trigger1=time=5
value=3000,0
volume=128
ignorehitpause=1
persistent=0

[State 3300]
type=Explod
trigger1=time=5
anim=6500
ID=3000
pos=0,0
postype=left
bindtime=-1
removetime=30
supermove=999
pausemovetime=999
sprpriority=-999
ownpal=1
removeongethit=1
ignorehitpause=1
persistent=0

[State 3300]
type=SuperPause
trigger1=time=5
time=30
anim=S1
pos=0,0
movetime=0
poweradd=-2000

[State 3300]
type=PlaySnd
trigger1=animelemtime(3)=0
value=50,0
volume=255
freqmul=1.0
ignorehitpause=1

[State 3300]
type=Explod
trigger1=animelem=3
anim=6304
ID=3300
pos=0,ceil(-pos y)
sprpriority=3
ownpal=1
vel = -2

[State 3300]
type=VelSet
trigger1=animelemtime(3)=0
x=11
y=-4
ignorehitpause=1
persistent=1

[State 3300]
type=PlaySnd
trigger1=animelemtime(3)=0
value=2,1
volume=255

[State 3300]
type=StateTypeSet
trigger1=pos y<0
statetype=A
physics=A
ignorehitpause=1
persistent=1

[State 3300]
type=HitDef
trigger1=animelem=3
attr=A,HA
hitflag=MAF
guardflag=M
animtype=Hard
air.animtype=Hard
fall.animtype=Hard
damage=290,80
pausetime=10,10
sparkno=S6110
guard.sparkno=S6110
sparkxy=-10,-10
hitsound=-1
guardsound=-1
ground.type=High
air.type=High
ground.slidetime=0
guard.slidetime=5
ground.hittime=20
guard.hittime=15
air.hittime=20
ground.velocity=-8.3,-6
guard.velocity=-3.5
air.velocity=-8.1,-7
airguard.velocity=-3,-3
fall=1
fall.damage=10
getpower=0,0
envshake.time=10
envshake.freq=60
envshake.ampl=-3
persistent=1

[State 3300]
type=PlaySnd
trigger1=movecontact
value=170,0
volume=255
ignorehitpause=1
persistent=0

[State 3300]
type=EnvColor
trigger1=movecontact
value=255,255,255
time=10
ignorehitpause=1
persistent=0

[State 3300]
type = Helper
trigger1 = movecontact && numtarget
helpertype = Normal
name = "disperse"
id = 6431
stateno	= 6431
pos = 10,ceil(- p2dist y)
postype	= p2
ownpal = 1
keyctrl	= 0
ignorehitpause = 1
persistent = 0

[State 3300]
type=PosSet
trigger1=pos y>0&&animelem=3
y=0
ignorehitpause=1
persistent=1

[State 3300]
type=VelSet
trigger1=pos y>0&&animelem=3
y=0
ignorehitpause=1
persistent=1

[State 3300]
type=ChangeState
trigger1=pos y>0&&animelem=3
value=11
ctrl=1

[State 3300]
type=ChangeState
trigger1=movecontact
value=50
ctrl=1

[Statedef 3301]
physics = N
anim = 1
sprpriority = 2

[State 3301]
type=PlayerPush
trigger1=1
value=0
ignorehitpause=1
persistent=1

[State 3301]
type=BindToParent
trigger1=time<35
pos=-21,-41
bindtime=-1
ignorehitpause=1
persistent=1

[State 3301]
type=BindToParent
trigger1=time>=35
pos=-13,-40
bindtime=-1
ignorehitpause=1
persistent=1

[State 3301]
type=VarSet
trigger1=time=0
fvar(0)=0
ignorehitpause=1
persistent=0

[State 3301]
type=VarAdd
trigger1=parent,animelem=1
fvar(0)=0.08
ignorehitpause=1
persistent=1

[State 3301]
type=Explod
trigger1=time=0
anim=6056
ID=3301
pos=0,0
bindtime=-1
removetime=-1
supermove=999
pausemovetime=999
scale=0,0
sprpriority=3
ownpal=0
removeongethit=1
ignorehitpause=1
persistent=1

[State 3301]
type=ModifyExplod
trigger1=time>0&&time<20
ID=3301
pos=0,0
bindtime=-1
removetime=-1
supermove=999
pausemovetime=999
scale=(time*0.0325),(time*0.0325)
sprpriority=3
ownpal=0
removeongethit=1
ignorehitpause=1
persistent=1

[State 3301]
type=Explod
trigger1=numexplod(3303)=0&&time<25&&time%2=0
anim=6051
ID=3303
pos=0,0
bindtime=2
removetime=2
supermove=999
pausemovetime=999
scale=(0.04*(time%5+2)),(0.04*(time%5+2))
sprpriority=3
ownpal=0
removeongethit=1
ignorehitpause=1
persistent=1

[State 3301]
type=AssertSpecial
trigger1=1
flag=noshadow
ignorehitpause=1
persistent=1

[State 3301]
type=RemoveExplod
trigger1=(parent,movecontact)||(parent,stateno!=3300)
ID=3301
ignorehitpause=1
persistent=1

[State 3301]
type=RemoveExplod
trigger1=(parent,movecontact)||(parent,stateno!=3300)
ID=3303
ignorehitpause=1
persistent=1

[State 3301]
type=DestroySelf
trigger1=(parent,movecontact)||(parent,stateno!=3300)
ignorehitpause=1
persistent=1

[Statedef 3302]
physics = N
anim = 1
sprpriority = 2

[State 3302]
type=PlayerPush
trigger1=1
value=0
ignorehitpause=1
persistent=1

[State 3302]
type=BindToParent
trigger1=time<35
pos=14,-35
bindtime=-1
ignorehitpause=1
persistent=1

[State 3302]
type=BindToParent
trigger1=time>=35
pos=22,-36
bindtime=-1
ignorehitpause=1
persistent=1

[State 3302]
type=Explod
trigger1=time=0
anim=6057
ID=3302
pos=0,0
bindtime=-1
removetime=-1
supermove=999
pausemovetime=999
scale=0,0
sprpriority=3
ownpal=0
removeongethit=1
ignorehitpause=1
persistent=1

[State 3302]
type=ModifyExplod
trigger1=time>0&&time<20
ID=3302
pos=0,0
bindtime=-1
removetime=-1
supermove=999
pausemovetime=999
scale=(time*0.0325),(time*0.0325)
sprpriority=3
ownpal=0
removeongethit=1
ignorehitpause=1
persistent=1

[State 3302]
type=Explod
trigger1=numexplod(3304)=0&&time<25&&time%2=0
anim=6052
ID=3304
pos=0,0
bindtime=2
removetime=2
supermove=999
pausemovetime=999
scale=(0.04*(time%5+2)),(0.04*(time%5+2))
sprpriority=3
ownpal=0
removeongethit=1
ignorehitpause=1
persistent=1

[State 3302]
type=AssertSpecial
trigger1=1
flag=noshadow
ignorehitpause=1
persistent=1

[State 3302]
type=RemoveExplod
trigger1=(parent,movecontact)||(parent,stateno!=3300)
ID=3302
ignorehitpause=1
persistent=1

[State 3302]
type=RemoveExplod
trigger1=(parent,movecontact)||(parent,stateno!=3300)
ID=3304
ignorehitpause=1
persistent=1

[State 3302]
type=DestroySelf
trigger1=(parent,movecontact)||(parent,stateno!=3300)
ignorehitpause=1
persistent=1

[Statedef 3400]
type = S
movetype = A
physics = S
anim = 3400
ctrl = 0
velset = 0,0

[State 3400]
type=PlaySnd
trigger1=time=10
value=3000,0
volume=128
ignorehitpause=1
persistent=0

[State 3400]
type=Explod
trigger1=time=10
anim=6500
ID=3400
pos=0,0
postype=left
bindtime=-1
removetime=30
supermove=999
pausemovetime=999
sprpriority=-999
ownpal=1
removeongethit=1
ignorehitpause=1
persistent=0

[State 3400]
type=SuperPause
trigger1=time=10
time=30
anim=S1
pos=0,0
movetime=30
poweradd=-3000

[State 3400]
type=PlaySnd
trigger1=animelemtime(2)=0
value=2,0
volume=128
ignorehitpause=1
persistent=0

[State 3400]
type=HitDef
trigger1=animelemtime(2)>=0&&animelemtime(2)<=8&&time>0
attr=S,HA
hitflag=MAF
guardflag=MA
affectteam=E
animtype=Hard
damage=10,0
pausetime=0,10
sparkno=S-1
guard.sparkno=S-1
hitsound=S3400,0
guardsound=S12,0
ground.type=High
ground.slidetime=0
guard.slidetime=0
ground.hittime=5
guard.hittime=10
air.hittime=5
p2stateno=3402
forcestand=1
kill=0
guard.kill=1
getpower=0,0
ignorehitpause=1
persistent=0
ID=3400

[State 3400]
type=EnvColor
trigger1=movehit&&time>0
value=0,0,0
time=1
ignorehitpause=1
persistent=1

[State 3400]
type=ChangeState
trigger1=movehit&&numtarget(3400)&&time>0
value=3401
ignorehitpause=1
persistent=1

[State 3400]
type=ChangeState
trigger1=animtime=0
value=0
ctrl=1
ignorehitpause=1
persistent=1

[Statedef 3401]
type = S
movetype = A
physics = S
anim = 3401
ctrl = 0
velset = 0,0
sprpriority=2

[State 3401]
type=PlayerPush
trigger1=1
value=0
ignorehitpause=1
persistent=1

[State 3401]
type=AllPalFX
trigger1=time<40
time=1
add=-256,-256,-256
mul=256,256,256
color=256
ignorehitpause=1
persistent=1

[State 3401]
type=AllPalFX
trigger1=time>=40&&time<=140
time=1
add=(floor(6.4/3*((time-40)-100))),(floor(12.8/3*((time-40)-100))),(floor(12.8/3*((time-40)-100)))
mul=256,256,256
color=256
ignorehitpause=1
persistent=1

[State 3401]
type=TargetBind
trigger1=time=0
time=1
ID=3400
pos=38,-49
ignorehitpause=1
persistent=1

[State 3401]
type=Explod
trigger1=numexplod(3401)=0&&anim=3401
anim=3402
ID=3401
pos=0,0
bindtime=-1
sprpriority=0
shadow=-1,0,0
ownpal=0
removeongethit=1
ignorehitpause=1
persistent=1

[State 3401]
type=PlaySnd
trigger1=time=185
value=0,3
volume=192
ignorehitpause=1
persistent=0

[State 3401]
type=NotHitBy
trigger1=time<400
value=SCA
time=1
ignorehitpause=1
persistent=1

[State 3401]
type=RemoveExplod
trigger1=anim!=3401
ID=3401
ignorehitpause=1
persistent=1

[State 3401]
type=ChangeAnim
trigger1=anim=3401&&animtime=0
value=3403
ignorehitpause=1
persistent=0

[State 3401]
type=PlaySnd
trigger1=anim=3403
value=3400,1
volume=512
ignorehitpause=1
persistent=0

[State 3401]
type=Explod
trigger1=anim=3403&&animelemtime(1)=3
anim=6450
ID=6450
pos=43,-49
bindtime=1
removetime=-2
sprpriority=2
ownpal=1
removeongethit=0
ignorehitpause=1
persistent=0

[State 3401]
type=ChangeState
trigger1=anim=3403&&animtime=0
trigger2=!numtarget
value=0
ctrl=1
ignorehitpause=1
persistent=1

[Statedef 3402]
type = S
movetype = H
physics = S
ctrl = 0
velset = 0,0
sprpriority=1

[State 3402]
type=ScreenBound
trigger1=1
value=1
movecamera=0,0
ignorehitpause=1
persistent=1

[State 3402]
type=PlayerPush
trigger1=1
value=0
ignorehitpause=1
persistent=1

[State 3402]
type=ChangeAnim2
trigger1=time=0
value=3404
ignorehitpause=1
persistent=1

[State 3402]
type=LifeAdd
trigger1=time=305
value=-540
kill=1
ignorehitpause=1
absolute=1

[State 3402]
type=VelSet
trigger1=animelemtime(2)=0
y=-2.4
ignorehitpause=1
persistent=1

[State 3402]
type=Gravity
trigger1=animelemtime(2)>=0
ignorehitpause=1
persistent=1

[State 3402]
type=VelSet
trigger1=pos y>=0
y=0
ignorehitpause=1
persistent=1

[State 3402]
type=PosSet
trigger1=pos y>=0
y=0
ignorehitpause=1
persistent=1

[State 3402]
type=SelfState
trigger1=pos y>=0
value=5110
ignorehitpause=1
persistent=1

[statedef 6430]
anim = 1
velset = 0,0

[State 6430]
type = VarRandom
trigger1 = time = 0
v = 0
range = 360,1260
ignorehitpause = 1
persistent = 1

[State 6430]
type = VarRandom
trigger1 = time = 0
v = 1
range = 360,1260
ignorehitpause = 1
persistent = 1

[State 6430]
type = VarRandom
trigger1 = time = 0
v = 10
range = 360,1260
ignorehitpause = 1
persistent = 1

[State 6430]
type = VarRandom
trigger1 = time = 0
v = 11
range = -1260,-360
ignorehitpause = 1
persistent = 1

[State 6430]
type = VarRandom
trigger1 = time = 0
v = 20
range = -1260,-360
ignorehitpause = 1
persistent = 1

[State 6430]
type = VarRandom
trigger1 = time = 0
v = 21
range = 360,1260
ignorehitpause = 1
persistent = 1

[State 6430]
type = VarRandom
trigger1 = time = 0
v = 30
range = -1260,-360
ignorehitpause = 1
persistent = 1

[State 6430]
type = VarRandom
trigger1 = time = 0
v = 31
range = -1260,-360
ignorehitpause = 1
persistent = 1

[State 6430]
type = VarRandom
trigger1 = time = 0
v = 40
range = -450,450
ignorehitpause = 1
persistent = 1

[State 6430]
type = VarRandom
trigger1 = time = 0
v = 41
range = -180,720
ignorehitpause = 1
persistent = 1

[State 6430]
type = VarRandom
trigger1 = time = 0
v = 50
range = -450,900
ignorehitpause = 1
persistent = 1

[State 6430]
type = VarRandom
trigger1 = time = 0
v = 51
range = -450,900
ignorehitpause = 1
persistent = 1

[State 6430]
type = Explod
trigger1 = time = 0
anim = 6430
ID = 6430
pos = 0,0
postype = p1
bindtime = 1
vel = var(0)/200,var(1)/200
removetime = -2
scale = 1, 1
sprpriority = 4
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0

[State 6430]
type = Explod
trigger1 = time = 0
anim = 6430
ID = 6430
pos = 0,0
postype = p1
bindtime = 1
vel = var(10)/200,var(11)/200
removetime = -2
scale = 1, 1
sprpriority = 4
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0

[State 6430]
type = Explod
trigger1 = time = 0
anim = 6430
ID = 6430
pos = 0,0
postype = p1
bindtime = 1
vel = var(20)/200,var(21)/200
removetime = -2
scale = 1, 1
sprpriority = 4
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0

[State 6430]
type = Explod
trigger1 = time = 0
anim = 6430
ID = 6430
pos = 0,0
postype = p1
bindtime = 1
vel = var(30)/200,var(31)/200
removetime = -2
scale = 1, 1
sprpriority = 4
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0

[State 6430]
type = Explod
trigger1 = time = 0
anim = 6430
ID = 6430
pos = 0,0
postype = p1
bindtime = 1
vel = var(40)/200,var(41)/200
removetime = -2
scale = 1, 1
sprpriority = 4
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0

[State 6430]
type = Explod
trigger1 = time = 0
anim = 6430
ID = 6430
pos = 0,0
postype = p1
bindtime = 1
vel = var(50)/200,var(51)/200
removetime = 16
scale = 1, 1
sprpriority = 4
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0

[State 6430]
type = DestroySelf
trigger1 = time = 0
ignorehitpause = 1
persistent = 1

[statedef 6431]
anim = 1
velset = 0,0

[State 6431]
type = VarRandom
trigger1 = time = 0
v = 0
range = 400,1300
ignorehitpause = 1
persistent = 1

[State 6431]
type = VarRandom
trigger1 = time = 0
v = 1
range = 400,1300
ignorehitpause = 1
persistent = 1

[State 6431]
type = VarRandom
trigger1 = time = 0
v = 5
range = -400,600
ignorehitpause = 1
persistent = 1

[State 6431]
type = VarRandom
trigger1 = time = 0
v = 6
range = 100,700
ignorehitpause = 1
persistent = 1

[State 6431]
type = VarRandom
trigger1 = time = 0
v = 7
range = -48,-25
ignorehitpause = 1
persistent = 1

[State 6431]
type = VarRandom
trigger1 = time = 0
v = 8
range = -47,-27
ignorehitpause = 1
persistent = 1

[State 6431]
type = VarRandom
trigger1 = time = 0
v = 9
range = 75,150
ignorehitpause = 1
persistent = 1

[State 6431]
type = VarRandom
trigger1 = time = 0
v = 10
range = 400,1300
ignorehitpause = 1
persistent = 1

[State 6431]
type = VarRandom
trigger1 = time = 0
v = 11
range = -1300,-400
ignorehitpause = 1
persistent = 1

[State 6431]
type = VarRandom
trigger1 = time = 0
v = 15
range = -600,400
ignorehitpause = 1
persistent = 1

[State 6431]
type = VarRandom
trigger1 = time = 0
v = 16
range = -700,-100
ignorehitpause = 1
persistent = 1

[State 6431]
type = VarRandom
trigger1 = time = 0
v = 17
range = -42,-10
ignorehitpause = 1
persistent = 1

[State 6431]
type = VarRandom
trigger1 = time = 0
v = 18
range = -50,-64
ignorehitpause = 1
persistent = 1

[State 6431]
type = VarRandom
trigger1 = time = 0
v = 19
range = 75,150
ignorehitpause = 1
persistent = 1

[State 6431]
type = VarRandom
trigger1 = time = 0
v = 20
range = -1300,-400
ignorehitpause = 1
persistent = 1

[State 6431]
type = VarRandom
trigger1 = time = 0
v = 21
range = 400,1300
ignorehitpause = 1
persistent = 1

[State 6431]
type = VarRandom
trigger1 = time = 0
v = 25
range = 300,800
ignorehitpause = 1
persistent = 1

[State 6431]
type = VarRandom
trigger1 = time = 0
v = 26
range = -100,100
ignorehitpause = 1
persistent = 1

[State 6431]
type = VarRandom
trigger1 = time = 0
v = 27
range = 31,61
ignorehitpause = 1
persistent = 1

[State 6431]
type = VarRandom
trigger1 = time = 0
v = 28
range = -83,-53
ignorehitpause = 1
persistent = 1

[State 6431]
type = VarRandom
trigger1 = time = 0
v = 29
range = 75,150
ignorehitpause = 1
persistent = 1

[State 6431]
type = VarRandom
trigger1 = time = 0
v = 30
range = -1300,-400
ignorehitpause = 1
persistent = 1

[State 6431]
type = VarRandom
trigger1 = time = 0
v = 31
range = -1300,-400
ignorehitpause = 1
persistent = 1

[State 6431]
type = VarRandom
trigger1 = time = 0
v = 35
range = -800,-300
ignorehitpause = 1
persistent = 1

[State 6431]
type = VarRandom
trigger1 = time = 0
v = 36
range = -100,100
ignorehitpause = 1
persistent = 1

[State 6431]
type = VarRandom
trigger1 = time = 0
v = 37
range = 38,51
ignorehitpause = 1
persistent = 1

[State 6431]
type = VarRandom
trigger1 = time = 0
v = 38
range = 25,39
ignorehitpause = 1
persistent = 1

[State 6431]
type = VarRandom
trigger1 = time = 0
v = 39
range = 75,150
ignorehitpause = 1
persistent = 1

[State 6431]
type = VarRandom
trigger1 = time = 0
v = 40
range = -500,500
ignorehitpause = 1
persistent = 1

[State 6431]
type = VarRandom
trigger1 = time = 0
v = 41
range = -20,800
ignorehitpause = 1
persistent = 1

[State 6431]
type = VarRandom
trigger1 = time = 0
v = 45
range = -100,100
ignorehitpause = 1
persistent = 1

[State 6431]
type = VarRandom
trigger1 = time = 0
v = 46
range = 300,800
ignorehitpause = 1
persistent = 1

[State 6431]
type = VarRandom
trigger1 = time = 0
v = 50
range = -500,1000
ignorehitpause = 1
persistent = 1

[State 6431]
type = VarRandom
trigger1 = time = 0
v = 51
range = -500,1000
ignorehitpause = 1
persistent = 1

[State 6431]
type = VarRandom
trigger1 = time = 0
v = 55
range = -100,100
ignorehitpause = 1
persistent = 1

[State 6431]
type = VarRandom
trigger1 = time = 0
v = 56
range = -800,-300
ignorehitpause = 1
persistent = 1

[State 6431]
type = Explod
trigger1 = time = 0
anim = 6431
ID = 6431
pos = 0,0
postype = p1
bindtime = 1
vel = var(0)/200,var(1)/200
removetime = -2
scale = 1.5, 1.5
sprpriority = 4
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0

[State 6431]
type = Explod
trigger1 = time = 0
anim = 6431
ID = 6431
pos = 0,0
postype = p1
bindtime = 1
vel = var(5)/200,var(6)/200
removetime = -2
scale = 1.5, 1.5
sprpriority = 4
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0

[State 6431]
type = Explod
trigger1 = time = 0
anim = 6431
ID = 6431
pos = 0,0
postype = p1
bindtime = 1
vel = var(10)/200,var(11)/200
removetime = -2
scale = 1.5, 1.5
sprpriority = 4
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0

[State 6431]
type = Explod
trigger1 = time = 0
anim = 6431
ID = 6431
pos = 0,0
postype = p1
bindtime = 1
vel = var(15)/200,var(16)/200
removetime = -2
scale = 1.5, 1.5
sprpriority = 4
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0

[State 6431]
type = Explod
trigger1 = time = 0
anim = 6431
ID = 6431
pos = 0,0
postype = p1
bindtime = 1
vel = var(20)/200,var(21)/200
removetime = -2
scale = 1.5, 1.5
sprpriority = 4
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0

[State 6431]
type = Explod
trigger1 = time = 0
anim = 6431
ID = 6431
pos = 0,0
postype = p1
bindtime = 1
vel = var(25)/200,var(26)/200
removetime = -2
scale = 1.5, 1.5
sprpriority = 4
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0

[State 6431]
type = Explod
trigger1 = time = 0
anim = 6431
ID = 6431
pos = 0,0
postype = p1
bindtime = 1
vel = var(30)/200,var(31)/200
removetime = -2
scale = 1.5, 1.5
sprpriority = 4
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0

[State 6431]
type = Explod
trigger1 = time = 0
anim = 6431
ID = 6431
pos = 0,0
postype = p1
bindtime = 1
vel = var(35)/200,var(36)/200
removetime = -2
scale = 1.5, 1.5
sprpriority = 4
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0

[State 6431]
type = Explod
trigger1 = time = 0
anim = 6431
ID = 6431
pos = 0,0
postype = p1
bindtime = 1
vel = var(40)/200,var(41)/200
removetime = -2
scale = 1.5, 1.5
sprpriority = 4
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0

[State 6431]
type = Explod
trigger1 = time = 0
anim = 6431
ID = 6431
pos = 0,0
postype = p1
bindtime = 1
vel = var(45)/200,var(46)/200
removetime = -2
scale = 1.5, 1.5
sprpriority = 4
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0

[State 6431]
type = Explod
trigger1 = time = 0
anim = 6431
ID = 6431
pos = 0,0
postype = p1
bindtime = 1
vel = var(50)/200,var(51)/200
removetime = 16
scale = 1.5, 1.5
sprpriority = 4
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0

[State 6431]
type = Explod
trigger1 = time = 0
anim = 6431
ID = 6431
pos = 0,0
postype = p1
bindtime = 1
vel = var(55)/200,var(56)/200
removetime = 16
scale = 1.5, 1.5
sprpriority = 4
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0

[State 6431]
type = Explod
trigger1 = time = 0
anim = 6100+var(9)%2
ID = 6431
pos = var(7),var(8)
postype = p1
bindtime = 1
vel = 0,0
removetime = -2
scale = var(9)/100, var(9)/100
sprpriority = 3
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0

[State 6431]
type = Explod
trigger1 = time = 0
anim = 6100+var(19)%2
ID = 6431
pos = var(17),var(18)
postype = p1
bindtime = 1
vel = 0,0
removetime = -2
scale = var(19)/100, var(19)/100
sprpriority = 3
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0

[State 6431]
type = Explod
trigger1 = time = 0
anim = 6100+var(29)%2
ID = 6431
pos = var(27),var(28)
postype = p1
bindtime = 1
vel = 0,0
removetime = -2
scale = var(29)/100, var(29)/100
sprpriority = 3
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0

[State 6431]
type = Explod
trigger1 = time = 0
anim = 6100+var(39)%2
ID = 6431
pos = var(37),var(38)
postype = p1
bindtime = 1
vel = 0,0
removetime = -2
scale = var(39)/100, var(39)/100
sprpriority = 3
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0

[State 6431]
type = DestroySelf
trigger1 = time = 0
ignorehitpause = 1
persistent = 1

[statedef 6445]
anim = 1
velset = 0,0

[State 6445]
type = VarRandom
trigger1 = time = 0
v = 0
range = 200,700
ignorehitpause = 1
persistent = 1

[State 6445]
type = VarRandom
trigger1 = time = 0
v = 1
range = 200,700
ignorehitpause = 1
persistent = 1

[State 6445]
type = VarRandom
trigger1 = time = 0
v = 10
range = 200,700
ignorehitpause = 1
persistent = 1

[State 6445]
type = VarRandom
trigger1 = time = 0
v = 11
range = -700,-200
ignorehitpause = 1
persistent = 1

[State 6445]
type = VarRandom
trigger1 = time = 0
v = 20
range = -700,-200
ignorehitpause = 1
persistent = 1

[State 6445]
type = VarRandom
trigger1 = time = 0
v = 21
range = 200,700
ignorehitpause = 1
persistent = 1

[State 6445]
type = VarRandom
trigger1 = time = 0
v = 30
range = -700,-200
ignorehitpause = 1
persistent = 1

[State 6445]
type = VarRandom
trigger1 = time = 0
v = 31
range = -700,-200
ignorehitpause = 1
persistent = 1

[State 6445]
type = VarRandom
trigger1 = time = 0
v = 40
range = -250,250
ignorehitpause = 1
persistent = 1

[State 6445]
type = VarRandom
trigger1 = time = 0
v = 41
range = -100,400
ignorehitpause = 1
persistent = 1

[State 6445]
type = VarRandom
trigger1 = time = 0
v = 50
range = -250,500
ignorehitpause = 1
persistent = 1

[State 6445]
type = VarRandom
trigger1 = time = 0
v = 51
range = -250,500
ignorehitpause = 1
persistent = 1

[State 6445]
type = Explod
trigger1 = time = 0
anim = 6445
ID = 6445
pos = 0,0
postype = p1
bindtime = 1
vel = var(0)/200,var(1)/200
removetime = -2
scale = 1, 1
sprpriority = 4
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0

[State 6445]
type = Explod
trigger1 = time = 0
anim = 6445
ID = 6445
pos = 0,0
postype = p1
bindtime = 1
vel = var(10)/200,var(11)/200
removetime = -2
scale = 1, 1
sprpriority = 4
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0

[State 6445]
type = Explod
trigger1 = time = 0
anim = 6445
ID = 6445
pos = 0,0
postype = p1
bindtime = 1
vel = var(20)/200,var(21)/200
removetime = -2
scale = 1, 1
sprpriority = 4
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0

[State 6445]
type = Explod
trigger1 = time = 0
anim = 6445
ID = 6445
pos = 0,0
postype = p1
bindtime = 1
vel = var(30)/200,var(31)/200
removetime = -2
scale = 1, 1
sprpriority = 4
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0

[State 6445]
type = Explod
trigger1 = time = 0
anim = 6445
ID = 6445
pos = 0,0
postype = p1
bindtime = 1
vel = var(40)/200,var(41)/200
removetime = -2
scale = 1, 1
sprpriority = 4
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0

[State 6445]
type = Explod
trigger1 = time = 0
anim = 6445
ID = 6445
pos = 0,0
postype = p1
bindtime = 1
vel = var(50)/200,var(51)/200
removetime = 16
scale = 1, 1
sprpriority = 4
ownpal = 1
removeongethit = 0
ignorehitpause = 1
persistent = 0

[State 6445]
type = DestroySelf
trigger1 = time = 0
ignorehitpause = 1
persistent = 1
