;チュートリアル用スクリプトファイル
*start

;処理を一時的に止めるwait。timeはその長さを表す。
;@wait time=200とも書ける。
[wait time=200]


[call target=*start storage="tyrano.ks"]

;[position vertical=true]縦書き
;[position vertical=false]縦書きやめる

[position vertical=false]

;[bg]タグは背景画像の設定。timeには背景が切り替わる速度。1000ミリ秒=1秒
[bg storage=room_dai.jpg time=3000]
;キャラの名前を表示するエリアを生成。メッセージエリアに[ptext]タグを配置。
[ptext name="chara_name_area" layer=message0 width="200" color=white x=110 y=390 size=26]
[chara_config ptext="chara_name_area"]
[position layer=message0 width=820 height=300 top=380 left=70 ]
[position layer=message0 page=fore frame="frame_gw.png" margint="65" marginl="50" marginr="70" marginb="60"]
 [cm]
 ;[l]クリック待ち[r]改行


ゲーム内の物語はすべてフィクションです。[l][r]
実在の人物や団体などとは関係ありません。[l][cm]

;[cm]メッセージクリア次のページへ
;[cm]を使わなくても表示限界に到達した場合自動的にページは切り替わる
この度は幣ゲームをプレイしていただき、誠にありがとうございます。[l][cm]

製作者としては、敬意と感謝の念をプレイヤーの皆様に[r]
お返しする気持ちも込めまして[l][r]
物語を読み解くヒントを、事前にお伝えいたします。[l][cm]
「この物語は、いわゆる双子モノのミステリーです。」[l][cm]
どうぞじっくりお楽しみください。[l][cm]

;chara_newはキャラクターを定義する命令。1人につき、1回、登場する前に記述する必要がある。
;name属性はキャラクターの名前を半角英数字で指定する。
;storage属性は表示する画像ファイルのパスを指定する。
;jname属性はキャラの日本語名を登録する。
;chara_showタグで実際に表示。

[chara_new name="man" storage="chara/otoko/man.png" jname="男"]
[chara_show name="man"]
#man
男が登場しました。[l][r]

[chara_new name="woman" storage="chara/onna/woman.png" jname="女"]
[chara_show name="woman"]
#woman
女が登場しました。[l][r]
;chara_newで定義した女の情報、今回のfaceでは表情を登録。
[chara_face name="woman" face="angry" storage="chara/onna/angry.png"]

表情を変更します。[p]
[chara_mod name="woman" face="angry"]

表情を元に戻します。[p]
[chara_mod name="woman" face="default"]
;defaultではキャラクターを新規登録した最初の画像が表示される。
;一旦メッセージウィンドウを非表示にする。trueで戻す。
@layopt layer=message0 page=fore visible=false
@layopt layer=message0 page=back visible=false

[chara_hide name="man"]
[chara_hide name="woman"]
;表示されているキャラクターを退場させる。

;他にも
;[chara_config]キャラクター表示に関する基本設定。
;[chara_mod]定義されたキャラクターの画像を変更
;[chara_delete]キャラクター定義の削除。つまり新しくそのキャラクターの表情などを登録し直せる。

[chara_new name="akane" storage="chara/akane/normal.png" jname="茜"]
[chara_new name="yamato" storage="chara/yamato/normal.png" jname="大和"]
;表情はこのように事前に登録しておけば手間が省ける。
[chara_face name="akane" face="angry" storage="chara/akane/angry.png"]
[chara_face name="yamato" face="angry" storage="chara/yamato/angry.png"]
[chara_face name="akane" face="happy" storage="chara/akane/happy.png"]
[chara_face name="yamato" face="happy" storage="chara/yamato/happy.png"]
[chara_face name="akane" face="sad" storage="chara/akane/sad.png"]
[chara_face name="yamato" face="sad" storage="chara/yamato/sad.png"]
[chara_face name="akane" face="doki" storage="chara/akane/doki.png"]
[chara_face name="yamato" face="tohoho" storage="chara/yamato/tohoho.png"]

[chara_show name="akane"]
[chara_show name="yamato"]
@layopt layer=message0 page=fore visible=true
@layopt layer=message0 page=back visible=true

#akane
ただの茜なわけがない[l][cm]
#yamato
ただの大和でしかない[l][cm]
#akane:doki
ただの茜なわけがない[l][cm]
#yamato:tohoho
ただの大和でしかない[l][cm]
#akane:sad
ただの茜なわけがない[l][cm]
#yamato:angry
ただの大和でしかない[l][cm]

;#キャラクターname属性でキャラクターに設定されたjnameがptextに表示される

[s]
