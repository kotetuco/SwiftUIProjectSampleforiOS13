# SwiftUIProjectSampleforiOS13
UIKitプロジェクトにSwiftUIを導入する際の検証用プロジェクト

# 要件

## Deployment Target

13.0

## 検証に使用したXcodeのバージョン

13.2.1

## 画面構成
- トップ画面(設定画面へPush遷移するためのボタンがあるのみ)
- 設定画面(SwiftUIで実装) ※ `Setting` ディレクトリ以下のファイル一式
  - SettingRouter(VIPERで言うRouter層)
  - SettingView(VIPERで言うView層)
    - UIを構成する各View
      - NavigationTitleView(ナビゲーションバーのタイトル)
      - ColumnView(リストビュー部分)


<img src="https://user-images.githubusercontent.com/2371902/157275048-57c5d5cb-735e-4835-ad1c-7baca3fcfb27.png" width="320" />

## TODO

- [ ] VIPERのPresenter(ViewModel)、Interactor、Entity等のサンプル実装
- [ ] ViewとPrenter(ViewModel)間の繋ぎ込み方式の検討
- [ ] デザインシステム的なものを適用する
