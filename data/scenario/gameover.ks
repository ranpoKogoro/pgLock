[cm  ]
[clearfix]
@clearstack
[hidemenubutton]

;ここから4行場面転換用
[bg storage="hantei.gif" method="crossfade" time="1000"]
[wait time="5000"]
[bg storage="gameover_PG.jpg" method="slide" time="5000"]
@playbgm time="3000" storage=bgm_maoudamashii_acoustic43.ogg volume=30 loop=true
[wait time="2000"]
[button graphic="titleback.png" enterimg="titleback_y.png" x="580" y="480" enterse="cursor2.ogg" clickse="decision7.ogg" target=*gogogo1]
[s]

*gogogo1
[chara_hide_all]
[stopbgm]
@layopt layer=message0 visible=false
@jump storage="title.ks"
