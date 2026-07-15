# 図一覧 (FIGURE_INVENTORY.md)

`figures/` フォルダ内の画像およびPDFファイルを走査した結果を以下に示します．原則として，画質が劣化しないベクター形式（PDF）を優先して採用しています．

| ファイル名 | 相対パス | 形式 | 種類 | 推定される用途・内容 | 論文中の対応箇所 | 採用・不採用判定 | 理由 |
| :--- | :--- | :--- | :--- | :--- | :--- | :--- | :--- |
| `fig_acid_distribution.pdf` | `figures/fig_acid_distribution.pdf` | PDF | ベクター | 検証用データ136サンプルにおける実測酸度と予測酸度の分布比較（1カラム幅用） | 図7（酸度の実測値と予測値の分布） | **採用** | 高画質なベクター形式であり，1カラム幅に最適なレイアウトであるため． |
| `fig_acid_distribution.png` | `figures/fig_acid_distribution.png` | PNG | ラスター | 同上（ラスター画像版） | 図7 | 不採用 | 同内容 of PDF（ベクター形式）を優先するため． |
| `fig_acid_distribution_double.pdf` | `figures/fig_acid_distribution_double.pdf` | PDF | ベクター | 同上（2カラム幅用） | 図7 | 不採用 | 1段組（または1カラム幅）で十分収まるサイズであるため． |
| `fig_acid_distribution_double.png` | `figures/fig_acid_distribution_double.png` | PNG | ラスター | 同上（2カラム幅ラスター版） | 図7 | 不採用 | PDF版を優先するため． |
| `fig_acid_model_comparison.pdf` | `figures/fig_acid_model_comparison.pdf` | PDF | ベクター | 従来Swinモデルと提案UnifiedDetectorの酸度推定誤差（MAE, RMSE）の比較（1カラム幅用） | 図6（従来モデルとの酸度誤差比較） | **採用** | 高画質なベクター形式であり，1カラム幅に最適なレイアウトであるため． |
| `fig_acid_model_comparison.png` | `figures/fig_acid_model_comparison.png` | PNG | ラスター | 同上（ラスター画像版） | 図6 | 不採用 | 同内容 of PDF（ベクター形式）を優先するため． |
| `fig_acid_model_comparison_double.pdf` | `figures/fig_acid_model_comparison_double.pdf` | PDF | ベクター | 同上（2カラム幅用） | 図6 | 不採用 | 1カラム幅で十分に読解可能であるため． |
| `fig_acid_model_comparison_double.png` | `figures/fig_acid_model_comparison_double.png` | PNG | ラスター | 同上（2カラム幅ラスター版） | 図6 | 不採用 | PDF版を優先するため． |
| `fig_acid_scatter.pdf` | `figures/fig_acid_scatter.pdf` | PDF | ベクター | 酸度の実測値と予測値の散布図（単独版） | 図8 (a) | 不採用 | 糖度と酸度を並べた `fig_validation_scatter_double.pdf` を優先するため． |
| `fig_acid_scatter.png` | `figures/fig_acid_scatter.png` | PNG | ラスター | 酸度の実測値と予測値の散布図（単独版） | 図8 (a) | 不採用 | 同上． |
| `fig_brix_scatter.pdf` | `figures/fig_brix_scatter.pdf` | PDF | ベクター | 糖度の実測値と予測値の散布図（単独版） | 図8 (b) | 不採用 | 同上． |
| `fig_brix_scatter.png` | `figures/fig_brix_scatter.png` | PNG | ラスター | 糖度の実測値と予測値の散布図（単独版） | 図8 (b) | 不採用 | 同上． |
| `fig_validation_scatter_double.pdf` | `figures/fig_validation_scatter_double.pdf` | PDF | ベクター | 検証用データ136サンプルにおける糖度・酸度の実測値と予測値の散布図（左右並列・2カラム幅用） | 図8（糖度・酸度の散布図） | **採用** | 糖度と酸度の散布図が（a）（b）として左右に並んでおり，論文全体の記述（図8）と完全に一致するため． |
| `fig_validation_scatter_double.png` | `figures/fig_validation_scatter_double.png` | PNG | ラスター | 同上（ラスター画像版） | 図8 | 不採用 | 同内容 of PDF（ベクター形式）を優先するため． |
| `figure_metrics.csv` | `figures/figure_metrics.csv` | CSV | テキスト | 各指標の数値データ（MAE, RMSE, R², Bias, Correlation） | 表3，表5，図の数値確認用 | 不採用 | 論文に直接埋め込む画像ではないため．（数値整合性の確認用に使用） |
| `README_figures.md` | `figures/README_figures.md` | MD | テキスト | 各図の生成条件，統計的定義，キャプション案の説明書 | N/A | 不採用 | 論文に埋め込む画像ではないため． |
