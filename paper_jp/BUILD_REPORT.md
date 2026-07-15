# ビルドレポート (BUILD_REPORT.md)

日本語論文のTeX化およびコンパイル環境，結果に関する詳細を報告します．

---

## 1．基本情報

- **使用したテンプレート**: JRM (Journal of Robotics and Mechatronics) 論文テンプレート (`fujipressarticle.cls` ver2.3.6)
  - 選択理由: プロジェクト内に `jrm_lualatex` ディレクトリとして格納されていた公式のLuaLaTeXテンプレートであり，段組，ヘッダー，フッター，および著者情報等の形式がJRM投稿規定に準拠しているため．
- **使用したコンパイルエンジン**: LuaLaTeX (LuaHBTeX, Version 1.17.0, TeX Live 2023/Debian)
- **コンパイル環境**: Dockerコンテナ (`vsc-paper-repo-2b7aa31ad3487343ae9b68e417330d9dd9d1cc92554936f9bfe590e289db9c2c`) を利用したビルド環境
- **実行したコマンド**:
  ```bash
  # 1. 依存パッケージ（siunitx 等）のインストール
  apt-get update && apt-get install -y texlive-science
  
  # 2. LaTeX -> BibTeX -> LaTeX * 2 の一連のコンパイルシーケンス
  lualatex -interaction=nonstopmode main
  bibtex main
  lualatex -interaction=nonstopmode main
  lualatex -interaction=nonstopmode main
  ```

---

## 2．パッケージの追加・変更

- **追加したパッケージ**: `texlive-science` (Ubuntu aptパッケージ)
  - 理由: JRMのクラスファイル `fujipressarticle.cls` が内部で `siunitx.sty` を要求しているが，ベースのDockerイメージにインストールされていなかったため，ビルド時に動的にインストールを行いました．テンプレート自体の体裁を変更するようなパッケージの追加は行っていません．

---

## 3．使用した図の一覧

| 論文内の番号 | キャプション・内容 | 使用ファイル名 | 判定 |
| :--- | :--- | :--- | :--- |
| 図1 | 提案システム全体構成図 | N/A (仮枠 placeholder) | 不足 (仮枠表示) |
| 図2 | PBL活動の開発プロセス | N/A (仮枠 placeholder) | 不足 (仮枠表示) |
| 図3 | データ収集および品質測定 | N/A (仮枠 placeholder) | 不足 (仮枠表示) |
| 図4 | UnifiedDetectorのモデル構成図 | N/A (仮枠 placeholder) | 不足 (仮枠表示) |
| 図5 | 推論結果の表示例 | N/A (仮枠 placeholder) | 不足 (仮枠表示) |
| 図6 | 従来のSwinモデルとUnifiedDetectorにおける酸度推定誤差の比較 | `figures/fig_acid_model_comparison.pdf` | 採用 (実図配置) |
| 図7 | 検証用データ136サンプルにおける実測酸度と予測酸度の分布比較 | `figures/fig_acid_distribution.pdf` | 採用 (実図配置) |
| 図8 | 検証用データ136サンプルにおける実測値と予測値の関係（散布図） | `figures/fig_validation_scatter_double.pdf` | 採用 (実図配置) |

- **省略した図（`figures/` に存在したが不採用としたもの）とその理由**:
  - `fig_acid_scatter.pdf`, `fig_brix_scatter.pdf`: 糖度と酸度を左右に並べた統合版散布図 `fig_validation_scatter_double.pdf`（図8）を採用したため，重複を避けるために省略しました．
  - 各種 PNG ファイル: 同内容の PDF ファイル（ベクター形式）が存在するため，画質優先で PDF 版を優先し，PNG 版は不採用としました．
  - `fig_acid_distribution_double.pdf`, `fig_acid_model_comparison_double.pdf`: 1段幅（1カラム）で十分に読解可能であり，レイアウト崩れを防ぐためにシングル幅用の図を採用しました．

---

## 4．コンパイル結果

- **出力PDF**: `paper_jp/main.pdf` (394,707 bytes)
- **ページ数**: 7ページ
- **未解決の引用・参照**: なし (すべての `\cite`, `\ref`, `\eqref` が正常に解決されています)
- **残っている警告**:
  - **フォント警告**: `Package fontspec Error: The font "XITS" cannot be found.` / `The font "XITSMath" cannot be found.`
    - 理由: JRMのクラスファイルが数学フォントとして `XITS` および `XITSMath` を要求していますが，コンテナ環境にインストールされていないため発生しています．LaTeX は自動的にラテンモダン数学フォント (`latinmodern-math.otf`) にフォールバックし，数式を綺麗に描画できているため，PDFの仕上がりや論旨に影響はありません．
  - **フォント警告**: `LaTeX Font Warning: Font shape TU/XITS(0)/b/n' undefined`
    - 理由: 上記フォントの太字が不足しているためで，デフォルトフォントで代替されています．

---

## 5．不足情報・図の集計

- **不足している図の件数**: 5件 (図1, 図2, 図3, 図4, 図5) ＋ 追加候補の酸度ラベル分布
- **不足している実験情報の件数**: 12項目
  - 詳細についてはそれぞれ [MISSING_FIGURES.md](file:///c:/Users/tuijmoto/Documents/paper-repo-1/paper_jp/MISSING_FIGURES.md) および [MISSING_INFORMATION.md](file:///c:/Users/tuijmoto/Documents/paper-repo-1/paper_jp/MISSING_INFORMATION.md) を参照してください．
