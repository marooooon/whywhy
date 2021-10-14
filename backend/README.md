# whywhy アプリってどんなもの？

-   モチベーションに左右されないマインド
-   常に「why..？」を考える。
    -   なぜ続かなかったのか？
    -   なぜ打てなかったのか？
    -   なぜ途中で諦めてしまったのか？
-   原因を追求して常にトライ&エラーを繰り返す。

もっと人生のログが溜まるようなアプリ
みんなの掲示板

# 調査結果 2021/10/12

参考：https://qiita.com/soarflat/items/bd319695d156654bbe86

-   フロントエンドは React で作ろうかな？
-   React の場合、Redux の勉強を復習する必要がありそう。
    -   Redux は 以下のようなサイクルで情報を伝達するらしい。
        1. Action：ここで Store に渡す情報を定義する。例えば、user の名前やメールアドレスが必要ならば、ここで定義する。
        2. Reducer：Reducer は、フロントでなにかイベントが発生したときに、値の精査や計算をして、Store に渡す役目を持っている。
        3. Store：Reducer で計算した値を Store に反映する箇所である。dispatch という送信機能を使用して dispatch(reducer で計算した値)で store に反映することができる。
    -   カウンターアプリの Redux の流れを説明する。参考：https://qiita.com/soarflat/items/bd319695d156654bbe86
        1. フロント画面で「+1 ボタン」をクリックすると、store.dispatch（{type: 'INCREMENT}）として、type：'INCREMENT'に送信される。
        2. Reducer で case 'INCREMENT' の時のイベントが発生する。その際、return として state+1 が付与される。
        3. Store で `const store = Redux.createStore(counter);` として Store を生成する。
