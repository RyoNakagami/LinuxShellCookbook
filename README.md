# LinuxShellCookbook

** Table of Contents

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->

- [Repositoryの説明](#repository%E3%81%AE%E8%AA%AC%E6%98%8E)
- [命名規則](#%E5%91%BD%E5%90%8D%E8%A6%8F%E5%89%87)
- [APPENDIX](#appendix)
  - [Create GitHub Repository](#create-github-repository)

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

> Directory 構成

```
.
├── note/ 
├── data/
├── sh/
|   ├── ...
│   └── xxx.sh
├── README.md
└── .gitignore

```

---|---
`note/`|解説ノート
`data/`|データ格納ディレクトリ
`sh/`|shell script格納

## 命名規則

> note命名規則

```
<四桁番号>_<内容>.ipynb
```


> Shell script命名規則

```
<四桁番号>_<内容>.sh
```

> data命名規則

```
<出現順番に従う四桁番号>_<データの種類>.<拡張子>
```

データの種類は、`table`, `list`などを想定.

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
