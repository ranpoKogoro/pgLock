[cm  ]
[clearfix]
@clearstack
[hidemenubutton]

;ここから4行場面転換用
[bg storage="anten.png" method="crossfade" time="4000"]
[wait time="2000"]
[bg storage="thankYou.png" method="slide" time="5000"]
@playbgm time="3000" storage=bgm_maoudamashii_acoustic43.ogg volume=30 loop=true
[wait time="5000"]
[button graphic="titleback.png" enterimg="titleback_y.png" x="620" y="550" height="70" clickse="decision7.ogg" target=*gogogo1]
[s]

*gogogo1
[chara_hide_all]
[stopbgm]
@layopt layer=message0 visible=false
@jump storage="title.ks"
