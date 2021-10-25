# LinuxShellCookbook

**Table of Contents**

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->

- [Repositoryの説明](#repository%E3%81%AE%E8%AA%AC%E6%98%8E)
- [命名規則](#%E5%91%BD%E5%90%8D%E8%A6%8F%E5%89%87)
- [Shellの操作](#shell%E3%81%AE%E6%93%8D%E4%BD%9C)
  - [Shell Scriptに実行方法](#shell-script%E3%81%AB%E5%AE%9F%E8%A1%8C%E6%96%B9%E6%B3%95)
  - [コマンドの止め方](#%E3%82%B3%E3%83%9E%E3%83%B3%E3%83%89%E3%81%AE%E6%AD%A2%E3%82%81%E6%96%B9)
  - [コマンドオプションの検索の仕方](#%E3%82%B3%E3%83%9E%E3%83%B3%E3%83%89%E3%82%AA%E3%83%97%E3%82%B7%E3%83%A7%E3%83%B3%E3%81%AE%E6%A4%9C%E7%B4%A2%E3%81%AE%E4%BB%95%E6%96%B9)
  - [Terminalの表示の初期化](#terminal%E3%81%AE%E8%A1%A8%E7%A4%BA%E3%81%AE%E5%88%9D%E6%9C%9F%E5%8C%96)
- [APPENDIX](#appendix)
  - [Create GitHub Repository](#create-github-repository)
  - [VSCodeの環境設定](#vscode%E3%81%AE%E7%92%B0%E5%A2%83%E8%A8%AD%E5%AE%9A)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

## Repositoryの説明

> Purpose and Goals

- シェル芸で人生を楽しむ

シェル芸とは、主にUNIX系オペレーティングシステムにおいて「マウスも使わず、ソースコードも残さず、GUIツールを立ち上げる間もなく、あらゆる調査・計算・テキスト処理を CLI端末へのコマンド入力一撃で終わらせること. 

> Shell

- zsh
- bash

> 実行環境

- ubuntu 20.04 LTS Focal Fossa
- VSCode(Version: 1.61.2)


> 参考サイト

- [HackerRank](https://www.hackerrank.com/dashboard)


> Directory 構成

```
.
├── note/ 
├── data/
├── sandbox/ #開発環境(ここはgitではuntrack)
├── HackerRank/
├── sh/
|   ├── ...
│   └── xxx.sh
├── README.md
└── .gitignore

```

|Directory|説明|想定拡張子(例)|
|---|---|---|
|`note/`|解説ノート|`.ipynb`, `.md`|
|`data/`|データ格納ディレクトリ|`.txt`, `.csv`, `.zip`|
|`HackeRank`|HackerRankの解答集|`.sh`|
|`sh/`|shell script格納|`.sh`|

## 命名規則

> note命名規則

```
<5桁番号>_<内容>.ipynb
```


> Shell script命名規則

```
<5桁番号>_<内容>.sh
```

> data命名規則

```
<5桁番号>_<データの種類>.<拡張子>
```

データの種類は、`table`, `list`などを想定.

## Shellの操作
### Shell Scriptに実行方法

```zsh
% zsh <filen name>.sh
```

or 

```zsh
% bash <filen name>.sh
```

### コマンドの止め方

shellの実行を中断したい場合は、状況に応じてそのコマンドが変わります.

|状況|コマンド|
|---|---|
|コマンドを強制終了したい場合| `Ctrl` + `C`|
|ユーザー入力待ちにおいて、もう入力がない場合|`Ctrl` + `D`|

### コマンドオプションの検索の仕方

`ls -a`というコマンドが出てきたとします. `-a`というオプションがわからない場合その調べ方として

```zsh
% man ls |grep -A 5 "^  *-a"
       -a, --all
              do not ignore entries starting with .

       -A, --almost-all
              do not list implied . and ..
```

`grep`の引数の`"^  *-a"`は先頭からスペースが１個以上続き「-a」という文字列が続く行という意味です. 
`-A 5`は検索に該当する行のあとの５つの行も出力するという意味です.

### Terminalの表示の初期化

シェル上に表示されている文字列を消し去りたい場合、「clear」コマンドを使えばよいです. 実行すると画面上のいちばん上にプロンプトが移動し、文字列がクリアされます.

```zsh
% clear
```



## APPENDIX
### Create GitHub Repository

```zsh
% mkdir ./LinuxShellCookbook
% cd ./LinuxShellCookbook
% git init
% touch README.md
% git add README.md
% git commit -m "first commit"
% git branch -M main
% git remote add origin git@github.com:RyoNakagami/LinuxShellCookbook.git
% git push -u origin main
```

> Clone Repository

```zsh
% git clone https://RyoNakagami:${GIT_TOKEN}@github.com/RyoNakagami/LinuxShellCookbook
```

### VSCodeの環境設定

> インストールした拡張

- Bash Beautify
  - シンタックスハイライト
  - この拡張をインストールするだけで動作する



