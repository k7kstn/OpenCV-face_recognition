# ■ 自動顔認識処理 実験 （OpenCV - ruby-opencv gem）

Auto Face recognition  utilizing OpenCV and ruby-opencv gem.

OpenCV ... Open Source Computer Vision


# ■ 動作環境 / Operation Environment

※  基本的に Unix系 環境であれば機能させられるはず / should work on Unix base environment

- FreeBSD10.2-RELEASE
- OpenCV 2.4.9
- Ruby 2.0.0p598
- ruby-opencv v0.0.14


# ■ 何するものぞ / What for ?

オープンソース技術による顔認識処理 実験 / Experimenting Open Source Computer Vision library utilization

- 画像読み込み、人物顔と認識した部分をマーキングする / take in a photo and mark regions recognized as human facial parts


# ■ 手順 / Procedure

**◯  openCV 環境構築 Install**

（参考 / Reference）  
  http://opencv.org/downloads.html

FreeBSD 環境では pkg インストール / pkg install on FreeBSD

\# `pkg install opencv`


**◯  ruby-opencv 環境構築 Install**

プロジェクト Top ディレクトリで bundle install  at Project Top directory.

% `bundle install  --path vendor`


**◯  顔学習データの配置 / Face detection data  set**

このリポジトリの 「data」ディレクトリ以下に配置 / Set under 'data' directory in this repository.

（元ソース Data source）  
  &nbsp; &nbsp; https://raw.githubusercontent.com/sightmachine/SimpleCV/master/SimpleCV/Features/HaarCascades/face_cv2.xml

