
[cm  ]
[clearfix]
[start_keyconfig]

;ここから4行場面転換用
[bg storage="hantei.gif" method="crossfade" time="1000"]
[wait time="5000"]
[playse storage=se_maoudamashii_onepoint15.ogg volume=50 loop=false ]
[bg storage="StaircaseG.jpg" method="slide" time="1000"]
[wait time="1000"]

;メニューボタンの表示
@showmenubutton

;メッセージウィンドウの設定
[position layer="message0" left=20 top=400 width=920 height=250 page=fore visible=true]

;文字が表示される領域を調整
[position layer=message0 page=fore margint="45" marginl="50" marginr="70" marginb="60"]

;メッセージウィンドウの表示
@layopt layer=message0 visible=true

;キャラクターの名前が表示される文字領域
[ptext name="chara_name_area" layer="message0" color="white" size=24 x=80 y=420]

;上記で定義した領域がキャラクターの名前表示であることを宣言（これがないと#の部分でエラーになります）
[chara_config ptext="chara_name_area"]

;このゲームで登場するキャラクターを宣言
;sadakazu
[chara_new  name="sadakazu" storage="chara/sadakazu/sadakazu_normal_G.png" height="650" jname="定数"  ]
;キャラクターの表情登録
[chara_face name="sadakazu" face="normal" storage="chara/sadakazu/sadakazu_normal_G.png"]
[chara_face name="sadakazu" face="aseri" storage="chara/sadakazu/sadakazu_aseri_G.png"]
[chara_face name="sadakazu" face="lauth" storage="chara/sadakazu/sadakazu_lauth_G.png"]
[chara_face name="sadakazu" face="oteage" storage="chara/sadakazu/sadakazu_oteage_G.png"]

;sitsucho
[chara_new  name="sitsucho"  storage="chara/sitsucho/situtyo_nomal_G.png" height="600" jname="シツチョー" ]
[chara_face name="sitsucho" face="normal" storage="chara/sitsucho/situtyo_nomal_G.png"]
[chara_face name="sitsucho" face="lookup" storage="chara/sitsucho/situtyo_lookup_G.png"]
[chara_face name="sitsucho" face="thinking" storage="chara/sitsucho/situtyo_thinking_G.png"]
[chara_face name="sitsucho" face="thinking2" storage="chara/sitsucho/situtyo_thinking2_G.png"]

;haro
[chara_new  name="haro"  storage="chara/haro/haro_normal.png" height="600" jname="波呂悪蔵" ]
[chara_face name="haro" face="normal" storage="chara/haro/haro_normal.png"]
[chara_face name="haro" face="lauth" storage="chara/haro/haro_lauth.png"]
[chara_face name="haro" face="gimon" storage="chara/haro/haro_gimon.png"]

@layopt layer=message0 visible=true
#
[font  color="yellow" edge="black"][link target=*stepup]最上階へ進み、エンディングへ[endlink][resetfont]
[s]

*stepup
[cm]
@layopt layer=message0 visible=false
[playse storage=kutsuoto.ogg volume=50 loop=true ]
[wait time=2000]
[stopse]
@playbgm time="3000" storage=Thiefs_time.ogg volume=30 loop=true
[bg storage="waitPG_G.jpg" method="crossfade" time="1000"]
[wait time="1000"]
[bg storage="lastfloor.jpg" method="slide" time="1000"]
[cm]

@layopt layer=message0 visible=true
[chara_show  name="sitsucho" left="20" top="120" reflect="true"]
[chara_show  name="haro" left="320" top="120" reflect="true"]

#京子
「シツチョー!!」[p]
#
[chara_mod  time="20" name="haro" face="gimon"]
#波呂
「次から次へと騒がしいな」[p]
「本田、彼女らも君の差し金か」[p]
#
[chara_mod  time="20" name="sitsucho" face="lookup"]
#シツチョー
「はっはっは、その通り」[p]
[chara_mod  time="20" name="sitsucho" face="thinking2"]
#シツチョー
「それにしても京子君、あの問題を解いてきたのかね、[l][r]
素晴らしいよ。日頃の勉強の成果といったところかの」[p]
#京子
「その人が…波呂悪蔵氏ですか？」[p]
#
[chara_mod  time="20" name="sitsucho" face="lookup"]
#シツチョー
「いかにも・・・」[p]
「さぁ、波呂よ、観念して…」[p]
#
「シツチョー、張り切っているところ悪いですが、[l][r]
茶番はスキップしていただけると助かりますよ」[p]
[fadeoutbgm time=2000]
[chara_show  name="sadakazu" left="600" top="120" ]
[chara_mod  time="20" name="sadakazu" face="oteage"]
#定数
「あなたと違って、[l][r]
階段地獄でもうクタクタなんですよ」[p]
#シツチョー
「…」[p]
#定数
「サクッと締めくくりましょう。」[p]
[chara_mod  time="20" name="sadakazu" face="normal"]
[font  size="30"]「すべての黒幕はあなただ！」[p]
[font  size="30"]「[ruby text=ほん]本[ruby text=だ]田[ruby text=けい]慶[ruby text=しょう]尚室長!!」[resetfont][p]
#
[cm]
@playbgm time="3000" storage=oneanswer.ogg volume=30 loop=true
#京子
「シツチョーが黒幕!?[l][r]
サダカズ先輩、どういうことですか!?」[p]
#定数
「京子君、言っただろう？[r]
これは論理パズルなんだ、[l][r]
この人がそこにいる波呂氏と結託していた[r]
黒幕であるという手掛かりは」[p]
「余分なほどに[r]
全て提示されていた。」[p]
「誰にでも推理することが可能だよ。」[p]
#
[chara_mod  time="20" name="sitsucho" face="thinking"]
#シツチョー
「…[l][r]
聞かせてもらおうか、サダカズ君。[l][r]
君の推理とやらを」[p]
#
[chara_mod  time="20" name="sadakazu" face="oteage"]
#定数
「いいでしょう」[p]
「この一連の引き抜き事件はズバリ、[l][r]
[font size="30" color="pink" edge="black"]カリキュラムのモニター試験[resetfont][l][r]
だったと推察します」[p]
#
[chara_mod  time="20" name="sitsucho" face="normal"]
#シツチョー
「…!!」[p]
#
[chara_mod  time="20" name="haro" face="normal"]
#波呂
「…!!」[p]
#京子
「モニター試験!?」[p]
#
[chara_mod  time="20" name="sadakazu" face="normal"]
#定数
「そうだよ、君もシツチョーから聞いたろう?[l][r]
波呂悪奴コーポレーションは[r]
最近プログラミングスクールを始めたがっていたと…」[p]
「しかしいくら、開発事業で名を馳せているとは言え、[l][r]
スクールには教育のノウハウや、カリキュラムの立て付けなど、[l][r]
色々と煩わしいステップが存在する」[p]
[chara_mod  time="20" name="sadakazu" face="oteage"]
「いち早く導入するには、経験者の知見が求められるだろうね」[p]
「そこで波呂氏は、折良く大学時代の旧友が[r]
プログラミングスクールの[r]
経営者になっていたことを思い出す」[p]
「言わずもがな[r]
我らがシツチョーのことだね」[p]
#
[chara_mod  time="20" name="sadakazu" face="lauth"]
#定数
「さて、波呂さん」[p]
#
[chara_mod  time="20" name="haro" face="gimon"]
#波呂
「なんだ」[p]
#定数
「『ウリウリくん』で世間を牽引している[r]
あなたが一番大切にしていることは、」[p]
「[font  color="pink" edge="black"]オリジナルティ[resetfont]でしょうか??」[p]
#
[chara_mod  time="20" name="haro" face="normal"]
#波呂
「いや、[font  color="pink" edge="black"]ユーモアを忘れないこと[resetfont]だな」[p]
#
[chara_mod  time="100" name="sadakazu" face="oteage"]
#定数
「…ふむ、確かにユーモア溢れる問題でしたね、[l][r]
ちょっと単調だったので、少々改善の余地アリですが…」[p]
[chara_mod  time="20" name="sadakazu" face="normal"]
「と、まぁ今話した通り、[r]
プログラミングを既存のやり方で教えるのみならず、[l][r]
一味違った、いわく[font  color="pink" edge="black"]ユーモア溢れる[resetfont][r]
カリキュラムを二人は考案した、それこそが…」[p]
「我々が体験したこのビルへの潜入劇だったわけだよ、京子くん」[p]
#京子
「私たちがモニターだったんですね…[l][r]
途中から、何かおかしいとは思っていましたが…」[p]
「じゃあ、ほかのみんなはどこへ行ったんですか？」[p]
#
[chara_mod  time="20" name="sadakazu" face="lauth"]
#定数
「一番重要な疑問だね、[l][r]
それは、なぜ、君がここにいるのか、[l][r]
という真相にも繋がっている」[p]
#京子
「私が…ですか？」[p]
#
[chara_mod  time="20" name="sadakazu" face="normal"]
#定数
「そう、[font  color="pink" size="30"]美しき神田メンター[resetfont]と[l][r]
その他の講師陣、生徒らはどこへ消えたか…」[p]
「実はどこへも消えていない…」[p]
「彼女らは今日シツチョーから[r]
休校の連絡が入って[l][r]
各々休暇を取っているのさ…」[p]
#京子
「え…でもそんな連絡は…」[p]
「あっ…」[p]
#
[chara_mod  time="20" name="sadakazu" face="oteage"]
#定数
「気づいたかい？[l][r]
そう、休校の連絡は[r]
メールもしくはチャットアプリで出している」[p]
#定数
「家にネット環境がなく、[l][r]
スマホを水没させてしまった君には[l][r]
それを知る術がなかったんだ」[p]
「元々シツチョーも、[l][r]
君をモニターにする気は無く、[r]
あくまで僕だけをターゲットにしていたんじゃないかな??」[p]
「初歩的な内容のくせに問題がひねくれていたから、[l][r]
シツチョーが僕向けに作ったと睨んでいるよ」[p]
[chara_mod  time="20" name="sadakazu" face="normal"]
「思い返せば、複数人でやる必要のないゲームだったからね」[p]
#京子
「うーむ…確かに」[p]
[chara_mod  time="20" name="sitsucho" face="thinking"]
#シツチョー
「サダカズ君、ノっているところ悪いが、[l][r]
君の話は推論の積み重ねではないかね??」[p]
私が黒幕だというにはどうも決定打に欠ける気がするよ」[p]
#
[chara_mod  time="20" name="sadakazu" face="oteage"]
#定数
「推論は根拠により、初めて事実と結合するのですよ。」[p]
#
[chara_mod  time="20" name="sitsucho" face="normal"]
#シツチョー
「根拠とは??」[p]
[chara_mod  time="20" name="sadakazu" face="lauth"]
#定数
「室長、あなたは問題を解いて[r]
最上階へ来てはいませんね」[p]
#
[chara_mod  time="20" name="sitsucho" face="lookup"]
#シツチョー
「君たちと違い、あの程度の問題、私には造作も無いぞ」[p]
#
[chara_mod  time="20" name="sadakazu" face="oteage"]
#定数
「いや、[font  color="pink"]腰痛[resetfont]持ちのあなたには、[r]
このビルを何階も駆け上がるのは困難だ」[p]
「なのにあなたは息切れ一つ起こしていない」[p]
#
[chara_mod  time="20" name="sitsucho" face="normal"]
#シツチョー
「そ…それは…」[p]
#京子
「…でもここにくるにはあの道しか…」[p]
[chara_mod  time="20" name="sadakazu" face="lauth"]
#定数
「エレベーターだよ、京子君、[r]
エントランスにあっただろ？」[p]
#京子
「あれは故障中でしたよ？」[p]
[chara_mod  time="20" name="sadakazu" face="oteage"]
#定数
「『故障中』の[font  color="pink" edge="black"]張り紙[resetfont]が貼ってあっただけで、[l][r]
実際に利用できるか確かめたわけじゃないだろう？」[p]
#京子
「あ…」[p]
[chara_mod  time="20" name="sadakazu" face="normal"]
#定数
「つまりシツチョーの一連の行動はこうだ」[p]
「まず、エントランスの置手紙に憤ったフリをして、[l][r]
僕らを置き去りに階段を駆け上がり」[p]
「第一の問題があるフロアへ先にたどり着く」[p]
「そして波呂悪蔵氏から前もって借りていたカギで[l][r]
『間違いの選択使』の部屋に入り、僕らをやり過ごした。」[p]
「気まぐれな僕が帰るのを防ぐため、[l][r]
帰り際に鍵をかけておくのも忘れない。」[p]
「あとは、階段を下りて、[font  color="pink" edge="black"]『故障中』の張り紙[resetfont]をはがし、[l][r]
エレベーターで最上階へ向かうだけ」[p]
#京子
「なるほど…」[p]
#シツチョー
「私が腰痛持ちだったことだけが…根拠だというのか??」[p]
#定数
「決定的な根拠はもう一つ。」[p]
#シツチョー
「…!!」[p]
#
[chara_mod  time="20" name="sadakazu" face="oteage"]
#定数
[font  color="pink" size="30"]「靴跡だ」[resetfont][p]
#
[chara_mod  time="20" name="sitsucho" face="thinking2"]
#シツチョー
「靴跡…??」[p]
#京子
「靴跡…って」[p]
「もしかしてコーヒーのですか」[p]
#
[chara_mod  time="20" name="sadakazu" face="normal"]
#定数
「そうだ、京子君[l][r]
思い出して欲しい、あの時コーヒーで汚れた階段は、[l][r]
[font  color="pink" edge="black"]靴を汚さずに通るのが不可能[resetfont]だった。」[p]
「にも関わらず、階段を抜けた先には[r]
当然あるべきはずの…」[p]
「[font  size="30" color="pink" edge="black"]シツチョーの足跡が無かった[resetfont]んだよ!!」[p]
#京子
「あっ!!」[p]
#
[chara_mod  time="20" name="sitsucho" face="lookup"]
#シツチョー
「…!!」[p]
#
[chara_mod  time="20" name="sadakazu" face="lauth"]
#定数
「あるべきはずの足跡が何故無いのか、[l][r]
それはシツチョーが問題を解いて上がってきたのではなく」[p]
「エレベーターを使って、[r]
最上階へやってきたという確たる証拠です」[p]
#
[chara_mod  time="100" name="sitsucho" face="normal"]
#シツチョー
「…」[p]
#
[chara_mod  time="20" name="haro" face="gimon"]
#波呂
「横から悪いが、ちょっといいかな??」[p]
#
[chara_mod  time="20" name="sadakazu" face="oteage"]
#定数
「どうぞ」[p]
「君の推理は確かに筋が通っている」[p]
[chara_mod  time="20" name="haro" face="normal"]
「だが少し穴があるんじゃないか??[p]
「本田が階段を登り切った時に、[l][r]
本田自身が缶を倒したという[l][r]
可能性も残ってるんじゃないか??」[p]
#
[chara_mod  time="20" name="sadakazu" face="normal"]
#定数
「……」[p]
「いえ、それはありえません」[p]
#
[chara_mod  time="20" name="haro" face="normal"]
#波呂
「何故だ」[p]
#定数
「コーヒーが乾いて丁度粘土のようにベタついていました。[l][r]
もしシツチョーが通った時に倒していたら、[l][r]
あそこまで固まらず、まだ液状だったはずです」[p]
[chara_mod  time="20" name="haro" face="gimon"]
#波呂
「なるほどな」[p]
#
[fadeoutbgm time=3000]

[wait time="1000"]
[chara_mod  time="1000" name="haro" face="lauth"]
#波呂
「本田、我々は見事に見破られたようだ」[p]
[chara_mod  time="1000" name="sitsucho" face="lookup"]
#シツチョー
「そのようだな」[p]
「…見事だよ、サダカズ君」[p]
#
@playbgm time="3000" storage=clearSE.ogg volume=30 loop=false
@layopt layer=message0 visible=false
[layopt layer=0 visible=true]
[mtext text="GameClear" size="100" color="0xF79800" edge="0xF0FFFF" shadow="0xA95045" x=230 y=300 in_effect="fadeIn" in_shuffle="true" in_delay="60" time="500" out_effect="fadeOut"]
[cm]

[chara_hide_all]
[stopbgm]
@layopt layer=message0 visible=false
@jump storage="end.ks"
