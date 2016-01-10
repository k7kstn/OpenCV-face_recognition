# ■ 自動顔認識処理 実験 （OpenCV - ruby-opencv gem）

Auto Face recognition  utilizing OpenCV and ruby-opencv gem.

OpenCV ... Open Source Computer Vision


# ■ 目次 / Table of Contents

- [何するものぞ / What for ?](#what)
- [実行環境 構築手順 / Operation Env setup Procedure](#env_build)
  - OpenCV 環境構築 Install
  - ruby-opencv 環境構築 Install
  - 顔学習データの配置 / Face detection data  set
- [顔認識処理 実施 / Execute Face recognition script](#exec_guide)
- ["face.rb"  サンプルコード参考 / Sample Code reference](#ref_sample_code)
- [サンプル写真 参照元 / Sample Code reference](#ref_sample_photo)
- [「オチ」 / Extra Note](#extra_note)


# ■ 動作環境 / Operation Environment

※  基本的に Unix系 環境であれば機能させられるはず / should work on Unix base environment

- FreeBSD10.2-RELEASE
- OpenCV 2.4.9
- Ruby 2.0.0p598
- ruby-opencv v0.0.14 (Ruby 1.9.3, 2.x  OK)


<a name="what">
# ■ 何するものぞ / What for ?

オープンソース技術による顔認識処理 実験 / Experimenting Open Source Computer Vision library utilization

- 画像読み込み、人物顔と認識した部分をマーキングする / take in a photo and mark regions recognized as human facial parts

<a name="env_build">
# ■ 実行環境 構築手順 / Operation Env setup Procedure

**◯  OpenCV 環境構築 Install**

（参考 / Reference）  
  &nbsp; &nbsp; http://opencv.org/downloads.html

FreeBSD 環境では pkg インストール / pkg install on FreeBSD

\# `pkg install opencv`


**◯  ruby-opencv 環境構築 Install**

プロジェクト Top ディレクトリで bundle install  at Project Top directory.

% `bundle install  --path vendor`


**◯  顔学習データの配置 / Face detection data  set**

このリポジトリの 「data」ディレクトリ以下に配置 / Set under 'data' directory in this repository.

（元ソース Data source）  
  &nbsp; &nbsp; https://raw.githubusercontent.com/sightmachine/SimpleCV/master/SimpleCV/Features/HaarCascades/face_cv2.xml

<a name="exec_guide">
# ■ 顔認識処理 実施 / Execute Face recognition script

プロジェクト Top ディレクトリ より / At project top directory, 

% `cd face-recog-rb`

% `ruby face.rb <source photo file> <output photo file>`

**＜例 / Sample＞**

% `ruby face.rb ~/Downloads/photo01.png face_out.jpg`

% `ruby face.rb /home/User/user01/tmp/photo02.jpg face_out.png`

% `ruby face.rb ~/Downloads/photo03.png sample_out.png`


<a name="ref_sample_code">
# ■ "face.rb"  サンプルコード参考 / Sample Code reference

以下の２つのサンプルの掛けあわせ / "Multiplication" of below two samples.

(1) ruby-opencv gem Doc  
    &nbsp; &nbsp; http://www.rubydoc.info/gems/ruby-opencv/frames

(2) 橋本商会 / Hashimoto Shokai  
  &nbsp; &nbsp; http://shokai.org/blog/archives/8627


<a name="ref_sample_photo">
# ■ サンプル写真 参照元 / Sample Code reference

謝意と共に。 / With courtesy.

(1) http://blog.up.co/2015/12/14/announcing-the-2015-global-startup-battle-champions/

(2) https://www.pakutaso.com/20160133004post-6522.html


<a name="extra_note">
# ■ 「オチ」 / Extra Note

このサンプルで監視カメラを作るとすると、警官は捉え、肝心な不審者を見過ごしてしまうようです。。  
Hmm, if we were to build a surveillance camera with this sample, we can detect the police man but not the intruder...

![Sample Photo](https://raw.githubusercontent.com/k7kstn/OpenCV-face_recognition/master/face_recog-rb/20161110face_out004.jpg)

