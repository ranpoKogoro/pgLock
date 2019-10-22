
*start

;背景変更マクロ　storage と time を指定する
;マクロ(頻繁に使用する機能を登録すること)
;
[macro name="back"]

;@layopt layer=message0 visible=false
;レイヤ情報の表ページから裏ページへのコピー(レイヤーには表示されている表と表示されていない裏という概念がある)
[backlay]

;[image]レイヤに画像を表示します。キャラクター表示や背景切り替えなどに使用できます。
;layer--対象とするレイヤーを指定。"base"指定すると背景レイヤ。0以上の整数を指定すると対応する前景レイヤに画像を表示
;page--対象とするページを指定(fore[表]かback[裏]を指定。省略するとforeとみなす)
;storage--画像ファイル名を指定。ファイルは背景レイヤならプロジェクトフォルダのbgimage、前景レイヤならfgimageに入れる。
;マクロ中に書かれたタグの中には特別に%を頭につけた値を指定することが出来る。%以降にはマクロに与えられた属性名を指定する。
;すると、マクロに渡された属性の値をその属性の値とすることができる。
[image layer=base page=back storage=%storage]

;[trans]は指定したレイヤでトランジション[カメラの切り替え]を行う。layerとtimeは必須。トランジションは、常に裏ページの対象のレイヤが、
;表ページの対象のレイヤに 入れ替わる方向で行われる。トランジション後は、表ページの対象のレイヤの画像、位置、サイズ、
;可視・不可視 の状態は裏ページの対象のレイヤと同じになります。また、トランジション中はレイヤの属性変更などは行わないようにする
;method=切り替えのタイプを指定します。デフォルトは"fadeIn"です。指定できる演出は,下記参照。
;「crossfade」「explode」「slide」「blind」「bounce」「clip」「drop」「fold」「puff」「scale」「shake」「size」
;[children]はlayerで指定した場所だけtransする。デフォルトはfalse。現在は廃止？
;[time]はトランジションを行っている時間をミリ秒で指定。
[trans layer="base" method=%method|crossfade children=false time=%time|2000]

;wt--トランジションが終了するまで、待ちます。
[wt]
;@layopt layer=message0 visible=true
;マクロの終了
[endmacro]


;キャラクターを表示、そして設定するマクロ記述の開始
[macro name="charaset"]

[backlay]
;left,top画像の左端、上端、x,y表記も同様の効果。
[image storage=%storage left=%left|0 top=%top|0 layer=%layer page=back visible=true  ]
[trans time=%time|1]
@wt

[endmacro]


[macro name="chararemove"]
;freeimage--レイヤに追加された要素をすべて削除.レイヤ指定は必須.
;freeimage pageで表fore、裏backを指定
;freeimage timeで時間をかけてイメージが消えていく
[freeimage layer = %layer]


[endmacro]


[macro name="saveinfo"]
;save情報を取得、ptextを継承する
;セーブ関係
;[iscript]と[endscript]に囲まれた箇所にJavaScriptを記述することが可能
[iscript]
//ここからjavascript
//下記はおそらく初期値の設定
tf.savetext = "";
//予測:array_save変数にTGのメニューゲットセーブメソッドで定義したデータを格納
tf.array_save = TG.menu.getSaveData().data;
//予測:data変数に上記の配列のデータを格納
tf.data = tf.array_save[mp.index];
//予測:上記をtitle変数に格納
tf.title = tf.data.title;
//予測:data変数をsave_date変数に格納
tf.save_date = tf.data.save_date;
//予測:savetext変数にsave_date変数とtitle変数を格納。
//span styleは改行せずにデザインを変更できるhtmlタグ
tf.savetext = "<span style='font-size:10px'>"+tf.save_date+"</span><br />"+tf.title;
//javascript終了
[endscript]

;レイヤにテキストを表示。前景レイヤに対してのみ実行.
;デフォルトは非表示のため、トランジションで表示しない場合は
;レイヤを可視状態にしてから、追加する。その場合は[layopt layer=0 visible=true]が必要
;属性の代わりに * を書くと、マクロに渡された
;すべての属性をそのタグに渡すこと ができる
[ptext * text=&tf.savetext ]


[endmacro]
;セーブ機能のサブルーチン？
[macro name="setsave"]

    [iscript]
      //TGのメニューのdoSaveメソッドの呼び出し。引数はmp.index
        TG.menu.doSave(mp.index);

    [endscript]

[endmacro]
;ロード機能のサブルーチン？
[macro name="loading"]

    [iscript]
      //TGのメニューのloadGameメソッドの呼び出し。引数はmp.index
        TG.menu.loadGame(mp.index);

    [endscript]

[endmacro]


;/////////////拡張 CGモードなどを利用するための設定

[iscript]
//条件分岐。sf.cg_viewが何を示しているかは勉強が必要
	if(sf.cg_view){
    }else{
    	sf.cg_view = {};
    }

	if(sf.replay_view){
    }else{
    	sf.replay_view = {};
    }


[endscript]


;CGモードのボタンを表示するためのマクロ
[macro name="cg_image_button"]

	[iscript]
  //splitメソッドは区切り文字を指定。下記の場合は","で区切る
		mp.graphic = mp.graphic.split(',');
    //concatメソッドは呼び出し元の配列に指定した配列を追加する
    //下記の場合mp.graphic配列に追加していく.
		mp.tmp_graphic = mp.graphic.concat();
    //is_cg_open変数に真偽値falseを格納。
		tf.is_cg_open = false;
    //条件分岐上記のmp.graphic配列の0番目だった場合、trueが格納される。
		if(sf.cg_view[mp.graphic[0]]){
			tf.is_cg_open = true;
		}
    //typeofは型を判定する時に使用する。
    //下記の場合は、mp.thumb変数に格納されている値がundefined
    //つまり'何も代入されていない値'ではなかった場合の条件が設定されている。
        if(typeof mp.thumb !="undefined"){
          //何も代入されていなかった場合、tmp_graphic配列の0番目にmp.thumbが代入される
            mp.tmp_graphic[0] = mp.thumb;
        }


	[endscript]
;
;渡された値を元に、CG状態を確認していく
	[if exp="tf.is_cg_open==true"]
		[button graphic=&mp.tmp_graphic[0] x=&mp.x y=&mp.y width=&mp.width height=&mp.height preexp="mp.graphic" exp="tf.selected_cg_image = preexp" storage="cg.ks" target="*clickcg" folder="bgimage" ]
	[else]
		[button graphic=&mp.no_graphic x=&mp.x y=&mp.y width=&mp.width height=&mp.height storage="cg.ks" target="*no_image" folder="bgimage" ]
	[endif]
[endmacro]

;CGが閲覧された場合、CGモードで表示できるようにする
[macro name="cg" ]

    [iscript]

        sf.cg_view[mp.storage] = "on";

    [endscript]

[endmacro]


;リプレイモード
;CGモードのボタンを表示するためのマクロ
[macro name="replay_image_button"]

	[iscript]

		tf.is_replay_open = false;
		if(sf.replay_view[mp.name]){
			tf.is_replay_open = true;
		}

	[endscript]

;渡された値を元に、CG状態を確認していく
;if exp---評価する TJS 式を指定します。この式の結果が false
;( または 0 な らば、elsif・else・endif タグまでの文章やタグが無視されます。
	[if exp="tf.is_replay_open==true"]
;button---グラフィカルボタンを表示
;graphic--ボタンにする画像の指定ファイルはプロジェクトフォルダのimageに入れること
;storage--ジャンプ先のシナリオファイルを指定。省略すると現在のシナリオファイル内とみなす。
;width,height--ボタンの横幅,縦幅を指定。
;preexp---タグが評価された時点で変数preexpに値を格納する。つまり、ボタンクリックされた時にexpでpreexpという変数が利用できる。
;exp---ボタンクリック時に実行されるjsを指定できる。
;target---ジャンプ先のラベルを指定。省略すると先頭から実行される。
;folder---好きな画像フォルダから画像を選択できる。
		[button graphic=&mp.graphic x=&mp.x y=&mp.y width=&mp.width height=&mp.height preexp="sf.replay_view[mp.name]" exp="tf.selected_replay_obj = preexp" storage="replay.ks" target="*clickcg" folder="bgimage" ]
	[else]

		[button graphic=&mp.no_graphic x=&mp.x y=&mp.y width=&mp.width height=&mp.height storage="replay.ks" target="*no_image" folder="bgimage" ]
;endif---if文を終了する
  [endif]

[endmacro]

;リプレイを開放する
[macro name="setreplay" ]

    [iscript]

        sf.replay_view[mp.name] = {storage:mp.storage, target:mp.target};

    [endscript]

[endmacro]

[macro name="endreplay"]

    [if exp="tf.flag_replay == true"]

        @layopt page="fore" layer="message0" visible=false
;システムボタンを非表示にするなど
        [hidemenubutton]
;jump--指定されたファイルの指定されたラベルへ移動する。callと違いコールスタックに残らない。一方通行。
;storage---移動するシナリオファイルを指定する。省略された場合は現在のシナリオファイルとみなす
;target---ジャンプ先のラベル名を指定する。省略すると先頭から実行される。
        @jump storage="replay.ks"

    [endif]

[endmacro]
;return--サブルーチンから呼び出し元に戻す。first.ksに戻る
;任意の場所へのリターンは廃止されているので必要な場合はcallで代用する必要あり。
[return]
