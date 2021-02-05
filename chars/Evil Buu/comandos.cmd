;---------------------------------------------------------------------------;
;                          [ IA OF RUGAL KOF2k3 ]                           ;
;---------------------------------------------------------------------------;

[Command]
name = "AI_1"
command = ~65535B,a+b+c+x+y+z
time = 1

[Command]
name = "AI_2"
command = ~65535B,a+b+c+x+y+z
time = 1

[Command]
name = "AI_3"
command = ~65535B,a+b+c+x+y+z
time = 1

[Command]
name = "AI_4"
command = ~65535B,a+b+c+x+y+z
time = 1

[Command]
name = "AI_5"
command = ~65535B,a+b+c+x+y+z
time = 1

[Command]
name = "AI_6"
command = ~65535B,a+b+c+x+y+z
time = 1

[Command]
name = "AI_7"
command = ~65535B,a+b+c+x+y+z
time = 1

[Command]
name = "AI_8"
command = ~65535B,a+b+c+x+y+z
time = 1

[Command]
name = "AI_9"
command = ~65535B,a+b+c+x+y+z
time = 1

[Command]
name = "AI_10"
command = ~65535B,a+b+c+x+y+z
time = 1

[Command]
name = "AI_11"
command = ~65535B,a+b+c+x+y+z
time = 1

[Command]
name = "AI_12"
command = ~65535B,a+b+c+x+y+z
time = 1

[Command]
name = "AI_13"
command = ~65535B,a+b+c+x+y+z
time = 1

[Command]
name = "AI_14"
command = ~65535B,a+b+c+x+y+z
time = 1

[Command]
name = "AI_15"
command = ~65535B,a+b+c+x+y+z
time = 1
;---------------------------------------------------------------------------;

;---------------------------------------------------------------------------;
;                            [ Hyper Move's ]                               ;
;---------------------------------------------------------------------------;
[Command]
name        	= "Destruction Omega"
command     	= ~D, DF, F, a
time        	= 25

[Command]
name        	= "Destruction_Omega"
command     	= ~D, DF, F, a
time        	= 25

[Command]
name        	= "genothunder_x"
command     	= ~D, DF, F, b
time        	= 25

[Command]
name        	= "genothunder_y"
command     	= ~D, DF, F, b
time        	= 25

[Command]
name        	= "Resplandor_of_Sky"
command     	= ~D, DF, F, c
time        	= 25

[Command]
name        	= "Resplandor of Sky"
command     	= ~D, DF, F, c
time        	= 25

[Command]       
name            = "Genocide_Haven_b"
command         = ~D, DF, F, x
time            = 25
                
[Command]       
name            = "Genocide_Haven_a"
command         = ~D, DF, F, x
time            = 25
;---------------------------------------------------------------------------;

;---------------------------------------------------------------------------;
;                              [ Super Move's ]                             ;
;---------------------------------------------------------------------------;
[Command]
name            = "god_press_x"
command         = ~D, DF, F, y
time            = 20;10
                
[Command]       
name            = "god_press_y"
command         = ~D, DF, F, y
time            = 20;10

[Command]
name            = "Hammer noken"
command         = ~D, DF, F, z
time            = 15

[Command]
name            = "Hammer_noken"
command         = ~D, DF, F, z
time            = 15

[Command]
name            = "kaiser_wave_x"
command         = ~D, DB, B, a
time            = 15

[Command]
name            = "kaiser_wave_y"
command         = ~D, DB, B, a
time            = 15

[Command]
name            = "3起cutters"
command         = ~D, DB, B, b
time            = 30;10
                
[Command]       
name            = "4起cutters"
command         = ~D, DB, B, b
time            = 30;10

[Command]
name            = "ghosta"
command         = ~D, DB, B, c
time            = 10

[Command]
name            = "ghostb"
command         = ~D, DB, B, c
time            = 10

[Command]
name            = "genocidea"
command         = ~D, DB, B, x
time            = 15

[Command]
name            = "genocideb"
command         = ~D, DB, B, x
time            = 15

[Command]
name            = "dark_ball_a"
command         = ~D, DB, B, y
time            = 10

[Command]
name            = "dark_ball_b"
command         = ~D, DB, B, y
time            = 10

[Command]
name            = "dragon_x"
command         = ~D, DB, B, z
time            = 10

[Command]
name            = "dragon_y"
command         = ~D, DB, B, z
time            = 10

[Command]
name            = "reppukeny"
command         = ~D, DB, B, s
time            = 10

[Command]
name            = "reppukenx"
command         = ~D, DB, B, s
time            = 10
;---------------------------------------------------------------------------;

;---------------------------------------------------------------------------;
;                              [ Double Tap ]                               ;
;---------------------------------------------------------------------------;
[Command]
name = "longjump"
command = D, $U
time = 10

[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10
;---------------------------------------------------------------------------;

;---------------------------------------------------------------------------;
;                       | 2/3 Button Combination |                          ;
;---------------------------------------------------------------------------;
[Command]
name            = "recovery"
command         = a+x
time            = 1

[Command]
name            = "recover"
command         = b+y
time            = 1
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
name = "y+b"
command = y+b
time = 1
;-| Dir + Button |----------------------------------------------------------

[Command]
name = "fwd_b"
command = /F,b
time = 1

[Command]
name = "fwd_x+y"
command = /F,x+y
time = 1

[Command]
name = "back_b"
command = /B,b
time = 1

[Command]
name = "back_x+y"
command = /B,x+y
time = 1

[Command]
name = "df_y"
command = /DF, y
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

[Command]
name = "hold_x"
command = /y
time = 1

[Command]
name = "hold_y"
command = /x
time = 1

[Command]
name = "hold_z"
command = /z
time = 1

[Command]
name = "hold_a"
command = /b
time = 1

[Command]
name = "hold_b"
command = /a
time = 1

[Command]
name = "hold_c"
command = /c
time = 1

;---------------------------------------------------------------------------
[Statedef -1]

;---------------------------------------------------------------------------;
;                         [ Optimizacion de cmd ]                           ;
;---------------------------------------------------------------------------;'
[State -1:          Borrar variable]
type                = VarSet
trigger1            = 1
var(20)             = 0

;prendemos un bit si esta en groove cvs, si el bit vale 0 esta en modo omega
[State -1:          CvS Rugal]
type                = VarSet
trigger1            = Var(7) = 0
var(20)             = Var(20)|1

;prendemos un bit si tiene control la AI
[State -1:          CvS Rugal]
type                = VarSet
trigger1            = Var(4) =1
var(20)             = Var(20)|2

;prendemos un bit si tiene control
[State -1:          CvS Rugal]
type                = VarSet
trigger1            = ctrl
var(20)             = Var(20)|4

;prendemos un bit si estas de pie 
[State -1:          CvS Rugal]
type                = VarSet
trigger1            = StateType = S
var(20)             = Var(20)|8

;prendemos un bit si estas agachado
[State -1:          CvS Rugal]
type                = VarSet
trigger1            = StateType = C
var(20)             = Var(20)|16

;prendemos un bit si estas en el aire
[State -1:          CvS Rugal]
type                = VarSet
trigger1            = StateType != A
var(20)             = Var(20)|24

;prendemos un bit si estas en el aire
[State -1:          CvS Rugal]
type                = VarSet
trigger1            = StateType = A
var(20)             = Var(20)|32

;prendemos un bit si tiene mas de 1000 de poder
[State -1:          CvS Rugal]
type                = VarSet
trigger1            = power >=1000
var(20)             = Var(20)|64

;prendemos un bit si tiene mas de 2000 de poder
[State -1:          CvS Rugal]
type                = VarSet
trigger1            = power >=2000
var(20)             = Var(20)|128

;prendemos un bit si tiene mas de 3000 de poder
[State -1:          CvS Rugal]
type                = VarSet
trigger1            = power >=3000
var(20)             = Var(20)|256

;prendemos un bit si no hay projectiles
[State -1:          CvS Rugal]
type                = VarSet
trigger1            = !numprojid(1000)&&!numprojid(1002)&&!numhelper(1000)&&!numhelper(1001)
var(20)             = Var(20)|512

;prendemos un bit para indicar que se puede cancelar de normal a especial
[State -1:         Movimientos basicos de Stand]
type                = VarSet
trigger1            =(stateno = 200||stateno = 201||stateno = 202||stateno = 203||stateno = 204||stateno = 205||stateno = 206||stateno = 207||stateno = 208) && movecontact
IgnoreHitPause	    = 1
var(20)             = Var(20)|1024

;prendemos un bit para indicar que se puede cancelar hacia golpe debil
[State -1:          CvS Rugal]
type                = VarSet
trigger1            = (stateno = 400||stateno = 401||stateno = 402||stateno = 403) && movecontact
IgnoreHitPause	    = 1
var(20)             = Var(20)|2048

;---------------------------------------------------------------------------;
[State -1:          Recovery]
type                = ChangeState
triggerall          = ((Var(20)&2)=0) && (Command = "recovery") && (!var(0))
trigger1            = (Var(20)&8) && (Var(20)&4)
value               = 502

[State -1:          Destruction Omega]
type                = ChangeState
triggerall          = ((Var(20)&2)=0) && (command = "Destruction Omega"||command = "Destruction_Omega") && (power >= 1000) && (!var(0))
trigger1            = (Var(20)&8) && (Var(20)&4)
trigger2            = (stateno = 200||stateno = 201||stateno = 202||stateno = 203||stateno = 204||stateno = 205||stateno = 206||stateno = 207)&&movecontact
trigger3            = (stateno = 400||stateno = 401||stateno = 402||stateno = 403)&&movecontact
value               = 1000

[State -1:          Resplandor of Sky]
type                = ChangeState
triggerall          = ((Var(20)&2)=0) && (command = "Resplandor_of_Sky"||command = "Resplandor of Sky") && (power >= 1000) && (!var(0))
trigger1            = (Var(20)&8) && (Var(20)&4)
trigger2            = (stateno = 200||stateno = 201||stateno = 202||stateno = 203||stateno = 204||stateno = 205||stateno = 206||stateno = 207)&&movecontact
trigger3            = (stateno = 400||stateno = 401||stateno = 402||stateno = 403)&&movecontact
value               = 1010

[State -1:          Genothunder]
type                = ChangeState
triggerall          = ((Var(20)&2)=0) && (command = "genothunder_x"||command = "genothunder_y") && (power>=1000) && (!var(0))
trigger1            = (Var(20)&8) && (Var(20)&4)
trigger2            = (stateno = 200||stateno = 201||stateno = 202||stateno = 203||stateno = 204||stateno = 205||stateno = 206||stateno = 207)&&movecontact
trigger3            = (stateno = 400||stateno = 401||stateno = 402||stateno = 403)&&movecontact
value               = 2200

[State -1:          Genocide Haven]
type                = ChangeState
triggerall          = ((Var(20)&2)=0) && (command = "Genocide_Haven_a"||command = "Genocide_Haven_b") && (power>=1000) && (!var(0))
trigger1            = (Var(20)&8) && (Var(20)&4)
trigger2            = (stateno = 200||stateno = 201||stateno = 202||stateno = 203||stateno = 204||stateno = 205||stateno = 206||stateno = 207)&&movecontact
trigger3            = (stateno = 400||stateno = 401||stateno = 402||stateno = 403)&&movecontact
value               = 2100
;---------------------------------------------------------------------------;
;                           [ Special's Move's ]                            ;
;---------------------------------------------------------------------------;
[State -1:          God Press]
type                = ChangeState
triggerall          = (((Var(20)&2)=0)) && (command = "god_press_x"||command = "god_press_y") && (!var(0))
trigger1            = (Var(20)&8) && (Var(20)&4)
trigger2            = (stateno = 200||stateno = 201||stateno = 202||stateno = 203||stateno = 204||stateno = 205||stateno = 206||stateno = 207)&&movecontact
trigger3            = (stateno = 400||stateno = 401||stateno = 402||stateno = 403)&&movecontact
value               = 990

[State -1:          Kaiser Wave]
type                = ChangeState
triggerall          = (((Var(20)&2)=0)) && (command = "Hammer noken"||command = "Hammer_noken") && (!var(0))
trigger1            = (Var(20)&8) && (Var(20)&4)
trigger2            = (stateno = 200||stateno = 201||stateno = 202||stateno = 203||stateno = 204||stateno = 205||stateno = 206||stateno = 207)&&movecontact
trigger3            = (stateno = 400||stateno = 401||stateno = 402||stateno = 403)&&movecontact
value               = 896

[State -1:          Kaiser Wave]
type                = ChangeState
triggerall          = (((Var(20)&2)=0)) && (command = "kaiser_wave_x") && !numhelper(901) && (!var(0))
trigger1            = (Var(20)&8) && (Var(20)&4)
trigger2            = (stateno = 200||stateno = 201||stateno = 202||stateno = 203||stateno = 204||stateno = 205||stateno = 206||stateno = 207)&&movecontact
trigger3            = (stateno = 400||stateno = 401||stateno = 402||stateno = 403)&&movecontact
value               = 950

[State -1:          Kaiser Wave]
type                = ChangeState
triggerall          = (((Var(20)&2)=0)) && (command = "kaiser_wave_y") && !numhelper(901) && (!var(0))
trigger1            = (Var(20)&8) && (Var(20)&4)
trigger2            = (stateno = 200||stateno = 201||stateno = 202||stateno = 203||stateno = 204||stateno = 205||stateno = 206||stateno = 207)&&movecontact
trigger3            = (stateno = 400||stateno = 401||stateno = 402||stateno = 403)&&movecontact
value               = 954

[State -1:          Bead destructor]
type                = ChangeState
triggerall          = (((Var(20)&2)=0)) && (command = "3起cutters"||command = "4起cutters") && (!var(0))
trigger1            = (Var(20)&8) && (Var(20)&4)
trigger2            = (stateno = 200||stateno = 201||stateno = 202||stateno = 203||stateno = 204||stateno = 205||stateno = 206||stateno = 207)&&movecontact
trigger3            = (stateno = 400||stateno = 401||stateno = 402||stateno = 403)&&movecontact
value               = 980

[State -1:          Genocide Cutter]
type                = ChangeState
triggerall          = command != "holddown"
triggerall          = ((Var(20)&2)=0) && (command = "genocidea"||command = "genocideb") && (!var(0))
trigger1            = (Var(20)&8) && (Var(20)&4)
trigger2            = (stateno = 200||stateno = 201||stateno = 202||stateno = 203||stateno = 204||stateno = 205||stateno = 206||stateno = 207)&&movecontact
trigger3            = (stateno = 400||stateno = 401||stateno = 402||stateno = 403)&&movecontact
value               = 970

[State -1:          Dark Ball Skeletor]
type                = ChangeState
triggerall          = command != "holddown"
triggerall          = ((Var(20)&2)=0) && (command = "dark_ball_a"||command = "dark_ball_b") && !numhelper(922) && (!var(0))
trigger1            = (Var(20)&8) && (Var(20)&4)
trigger2            = (stateno = 200||stateno = 201||stateno = 202||stateno = 203||stateno = 204||stateno = 205||stateno = 206||stateno = 207)&&movecontact
trigger3            = (stateno = 400||stateno = 401||stateno = 402||stateno = 403)&&movecontact
value               = 919

[State -1:          Dark Ball Skeletor]
type                = ChangeState
triggerall          = command != "holddown"
triggerall          = ((Var(20)&2)=0) && (command = "dark_ball_a"||command = "dark_ball_b") && numhelper(922) && (!var(0))
trigger1            = (Var(20)&8) && (Var(20)&4)
trigger2            = (stateno = 200||stateno = 201||stateno = 202||stateno = 203||stateno = 204||stateno = 205||stateno = 206||stateno = 207)&&movecontact
trigger3            = (stateno = 400||stateno = 401||stateno = 402||stateno = 403)&&movecontact
value               = 917

[State -1:          Reppuken]
type                = ChangeState
triggerall          = command != "holddown" && (!var(0))
triggerall          = ((Var(20)&2)=0) && (command = "reppukenx"||command = "reppukeny") && !numhelper(901)
trigger1            = (Var(20)&32) && (Var(20)&4)
trigger2            = (stateno = 200||stateno = 201||stateno = 202||stateno = 203||stateno = 204||stateno = 205||stateno = 206||stateno = 207)&&movecontact
trigger3            = (stateno = 400||stateno = 401||stateno = 402||stateno = 403)&&movecontact
value               = 890

[State -1:          Reppuken]
type                = ChangeState
triggerall          = command != "holddown" && (!var(0))
triggerall          = ((Var(20)&2)=0) && (command = "reppukenx"||command = "reppukeny") && !numhelper(901)
trigger1            = (Var(20)&8) && (Var(20)&4)
trigger2            = (stateno = 200||stateno = 201||stateno = 202||stateno = 203||stateno = 204||stateno = 205||stateno = 206||stateno = 207)&&movecontact
trigger3            = (stateno = 400||stateno = 401||stateno = 402||stateno = 403)&&movecontact
value               = 900

[State -1:          Dragon Cutter]
type                = ChangeState
triggerall          = command != "holddown" && (!var(0))
triggerall          = ((Var(20)&2)=0) && (command = "dragon_x"||command = "dragon_y")
trigger1            = (Var(20)&8) && (Var(20)&4)
trigger2            = (stateno = 200||stateno = 201||stateno = 202||stateno = 203||stateno = 204||stateno = 205||stateno = 206||stateno = 207)&&movecontact
trigger3            = (stateno = 400||stateno = 401||stateno = 402||stateno = 403)&&movecontact
value               = 960

[State -1:          Reppuken]
type                = ChangeState
triggerall          = command != "holddown" && (!var(0))
triggerall          = ((Var(20)&2)=0) && (command = "ghosta"||command = "ghostb")
trigger1            = (Var(20)&8) && (Var(20)&4)
trigger2            = (stateno = 200||stateno = 201||stateno = 202||stateno = 203||stateno = 204||stateno = 205||stateno = 206||stateno = 207)&&movecontact
trigger3            = (stateno = 400||stateno = 401||stateno = 402||stateno = 403)&&movecontact
value               = 800
;---------------------------------------------------------------------------;

;---------------------------------------------------------------------------;
[State -1:          Taunt]
type                = ChangeState
triggerall          = (command = "s") && (!var(0))
trigger1            = (statetype != A) && (ctrl)
value               = 195

[State -1:          patada fuerte]
type                = ChangeState
triggerall          = ((Var(20)&2)=0) && (command = "a"||command = "b") && (!var(0))
trigger1            = statetype = S && ctrl && stateno = 100
value               = 895
;---------------------------------------------------------------------------;

;---------------------------------------------------------------------------;
;                          [ Basic Movement's ]                             ;
;---------------------------------------------------------------------------;
[State -1:          Run FF]
type                = ChangeState
triggerall          = (command = "FF") && (!var(0))
trigger1            = (Var(20)&14) =12
value               = 100

[State -1:          Brinco atr嫳]
type                = ChangeState
triggerall          = (command = "BB") && (!var(0))
trigger1            = (Var(20)&14) =12
value               = 105
;---------------------------------------------------------------------------;

;---------------------------------------------------------------------------;
;                             [ Stand Moves ]                               ;
;---------------------------------------------------------------------------;
[State -1:          patada doble]
type                = ChangeState
triggerall          = command != "holddown" && (!var(0))
triggerall          = ((Var(20)&2)=0) && (command = "a") && (command = "holdfwd")
trigger1            = (Var(20)&8) && (Var(20)&4)
value               = 207

[State -1:          golpe d嶵il largo]
type                = ChangeState
triggerall          = command != "holddown" && (!var(0))
triggerall          = ((Var(20)&2)=0) && (command = "x")&& (P2bodydist X >= 25)
trigger1            = (Var(20)&8) && (Var(20)&4)
trigger2            = Var(20)&2048
value               = 200

[State -1:          golpe debil corto]
type                = ChangeState
triggerall          = command != "holddown" && (!var(0))
triggerall          = ((Var(20)&2)=0) && (command = "x")&& (P2bodydist X <= 25)
trigger1            = (Var(20)&8) && (Var(20)&4)
value               = 201

[State -1:          golpe fuerte corto]
type                = ChangeState
triggerall          = command != "holddown" && (!var(0))
triggerall          = ((Var(20)&2)=0) && (command = "y")&& (P2bodydist X <= 25)
trigger1            = (Var(20)&8) && (Var(20)&4)
value               = 202

[State -1:          golpe fuerte largo]
type                = ChangeState
triggerall          = ((Var(20)&2)=0) && (command = "y")&& (P2bodydist X >= 25) && (!var(0))
trigger1            = (Var(20)&8) && (Var(20)&4)
value               = 203

[State -1:          patada debil corta]
type                = ChangeState
triggerall          = command != "holddown"
triggerall          = ((Var(20)&2)=0) && (command = "a")&& (P2bodydist X <= 25) && (!var(0))
trigger1            = (Var(20)&8) && (Var(20)&4)
value               = 204

[State -1:          patada debil larga]
type                = ChangeState
triggerall          = command != "holddown"
triggerall          = ((Var(20)&2)=0) && (command = "a")&& (P2bodydist X >= 25) && (!var(0))
trigger1            = (Var(20)&8) && (Var(20)&4)
value               = 205

[State -1:          patada fuerte larga]
type                = ChangeState
triggerall          = command != "holddown"
triggerall          = ((Var(20)&2)=0) && (command = "b")&& (P2bodydist X >= 35) && (!var(0))
trigger1            = (Var(20)&8) && (Var(20)&4)
value               = 206

[State -1:          patada fuerte cerca]
type                = ChangeState
triggerall          = command != "holddown"
triggerall          = ((Var(20)&2)=0) && (command = "b")&& (P2bodydist X <= 35) && (!var(0))
trigger1            = (Var(20)&8) && (Var(20)&4)
value               = 208
;---------------------------------------------------------------------------;

;---------------------------------------------------------------------------;
;                             [ Crunch Moves ]                              ;
;---------------------------------------------------------------------------;
[State -1:		    Light Punch]
type                = ChangeState
triggerall          = command = "holddown" && (!var(0))
triggerall          = ((Var(20)&2)=0) && (command = "x")
trigger1            = (Var(20)&16) && (Var(20)&4)
value               = 400

[State -1:		    Strong Punch]
type                = ChangeState
triggerall          = command = "holddown" && (!var(0))
triggerall          = ((Var(20)&2)=0) && (command = "y")
trigger1            = (Var(20)&16) && (Var(20)&4)
value               = 401

[State -1:		    Light Kick]
type                = ChangeState
triggerall          = command = "holddown" && (!var(0))
triggerall          = ((Var(20)&2)=0) && (command = "a")
trigger1            = (Var(20)&16) && (Var(20)&4)
value               = 402

[State -1:		    Strong Kick]
type                = ChangeState
triggerall          = command = "holddown" && (!var(0))
triggerall          = ((Var(20)&2)=0) && (command = "b")
trigger1            = (Var(20)&16) && (Var(20)&4)
value               = 403

;---------------------------------------------------------------------------;

;---------------------------------------------------------------------------;
;                             [ Air Moves ]                                 ;
;---------------------------------------------------------------------------;
[State -1:          y+b]
type                = ChangeState
triggerall          = ((Var(20)&2)=0) && (command = "y" && command = "b") && (!var(0))
trigger1            = (Var(20)&32) && (Var(20)&4)
value               = 608

[State -1:          golpe debil x 0]
type                = ChangeState
triggerall          = ((Var(20)&2)=0) && (command = "x") && (vel x = 0) && (!var(0))
trigger1            = (Var(20)&32) && (Var(20)&4)
value               = 600

[State -1:          golpe debil]
type                = ChangeState
triggerall          = ((Var(20)&2)=0) && (command = "x") && (vel x != 0) && (!var(0))
trigger1            = (Var(20)&32) && (Var(20)&4)
value               = 601

[State -1:          patada debil x 0]
type                = ChangeState
triggerall          = ((Var(20)&2)=0) && (command = "a") && (vel x = 0) && (!var(0))
trigger1            = (Var(20)&32) && (Var(20)&4)
value               = 602

[State -1:          patada debil]
type                = ChangeState
value               = 603
triggerall          = ((Var(20)&2)=0) && (command = "a") && (vel x != 0) && (!var(0))
trigger1            = (Var(20)&32) && (Var(20)&4)

[State -1:          pu隳 fuerte x 0]
type                = ChangeState
triggerall          = ((Var(20)&2)=0) && (command = "y") && (vel x = 0) && (!var(0))
trigger1            = (Var(20)&32) && (Var(20)&4)
value               = 604

[State -1:          pu隳 fuerte]
type                = ChangeState
triggerall          = ((Var(20)&2)=0) && (command = "y") && (vel x != 0) && (!var(0))
trigger1            = (Var(20)&32) && (Var(20)&4)
value               = 605

[State -1:          patada fuerte x 0]
type                = ChangeState
triggerall          = ((Var(20)&2)=0) && (command = "b") && (vel x = 0) && (!var(0))
trigger1            = (Var(20)&32) && (Var(20)&4)
value               = 606

[State -1:          patada fuerte]
type                = ChangeState
triggerall          = ((Var(20)&2)=0) && (command = "b") && (vel x != 0) && (!var(0))
trigger1            = (Var(20)&32) && (Var(20)&4)
value               = 607
;---------------------------------------------------------------------------;

;---------------------------------------------------------------------------;
;                             [ Power Carge ]                               ;
;---------------------------------------------------------------------------;
[State -1:          Power Carge]
type                = ChangeState
triggerall          = ((Var(20)&2)=0) && (Command = "hold_y" && Command = "hold_b") && (Power < 3000) && (!var(0))
trigger1            = (Var(20)&8) && (Var(20)&4)
value               = 500

[State -1:          Alpha Counter Recovery]
type                = ChangeState
triggerall          = (command = "recover") && (power >= 500) && (!var(0))
trigger1            = stateno = [150,153]
value               = 504
;---------------------------------------------------------------------------;
