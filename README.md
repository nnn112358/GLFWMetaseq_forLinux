# sample_GL - MQO Loader for OpenGL

Metasequoia (.mqo) 形式の3DモデルファイルをOpenGLで読み込み・表示するサンプルプログラムです。

## 概要

- GLMetaseq ライブラリを使用して MQO ファイルをパースし、OpenGL のディスプレイリスト／VBO で描画します
- GLFW によるウィンドウ管理・入力処理
- マウスドラッグによるモデルの回転操作
- デバッグ機能（FPS表示、座標軸、グリッド、ワイヤフレーム、HUDオーバーレイ）

## 必要な環境

- C++11 対応コンパイラ (g++ 等)
- OpenGL / GLU
- GLFW 3 (`pkg-config --cflags --libs glfw3` で解決)

## ビルド

```sh
make
```

## 実行

```sh
./sample_GL
```

実行ディレクトリに `ninja.mqo` モデルファイルが必要です。

## キー操作

| キー | 動作 |
|------|------|
| Q / ESC | 終了 |
| D | デバッグ情報をコンソールに出力 |
| R | 回転をリセット |
| W | ワイヤフレーム表示の切替 |
| T | デバッグオーバーレイの切替 |
| H | キー操作ヘルプをコンソールに表示 |

マウス左ドラッグでモデルを回転できます。

## ファイル構成

| ファイル | 説明 |
|----------|------|
| `sample_GL.cpp` | メインプログラム (ウィンドウ生成、描画ループ、入力処理) |
| `GLMetaseq.h` | GLMetaseq ライブラリヘッダ (MQO読み込みAPI・型定義) |
| `GLMetaseq.cpp` | GLMetaseq ライブラリ実装 |
| `ninja.mqo` | サンプル3Dモデル |
| `Makefile` | ビルド設定 |
| `LICENCE.txt` | ライセンス情報 |

## ライセンス
GLMetaseq ライブラリ部分は MIT License です。
https://kougaku-navi.net/ARToolKit/  
Copyright (c) 2009 Sunao Hashimoto and Keisuke Konishi
