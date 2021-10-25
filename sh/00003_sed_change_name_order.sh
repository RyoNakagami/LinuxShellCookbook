#!bin/bash
#----------------------------------------------------------------------------
#問題設定
#   Tanaka Ryoという例のようにFamily NameとFirst Nameの順番で入力された名前を
#   Ryo TanakaというFirst Name Family Nameという順番に変更する
#例
#   入力
#       Tanaka Ryo
#   出力
#       Ryo Tanaka
#   入力
#       Tanaka Ryo, Suzuki Shun
#   出力
#       Ryo Tanaka, Shun Suzuki
#----------------------------------------------------------------------------
read input_name
echo $input_name| sed -E 's/([A-Za-z]+) ([A-Za-z]+)/\2 \1/g'