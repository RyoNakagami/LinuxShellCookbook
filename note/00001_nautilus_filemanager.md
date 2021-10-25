## `nautilus`コマンドの解説

**Table of Contents**
<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->

- [概要](#%E6%A6%82%E8%A6%81)
- [ユースケース](#%E3%83%A6%E3%83%BC%E3%82%B9%E3%82%B1%E3%83%BC%E3%82%B9)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

### 概要

nautilusコマンドとはGNOMEデスクトップ環境を構成するグラフィカルシェルです. Terminalから`nautilus`コマンドを実行すると、GNOMEの「ファイル」画面を開きます.

> Syntax

```
nautilus [オプション] [場所（URI）]
```

> nautilusの主なオプション

|短いオプション|長いオプション|意味|
|---|---|---|
|`-w`|`--new-window`|指定した場所（URI）を、常に新しいウィンドウで開く|

### ユースケース

> カレントディレクトリの画面を開く

```zsh
% nautilus -w .
```