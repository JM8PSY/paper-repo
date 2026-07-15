# 論文掲載用評価グラフ・指標説明 (README_figures.md)

本ディレクトリの画像および指標ファイルは、学生主体のPBL活動によって開発された「RGB画像ベースのトマト糖度・酸度推定システム」の技術成果を客観的に示すために生成されたものです。

## 数値検証における統計定義について
- **標準偏差 (Standard Deviation)**:
  検証レポートに記載されている実測酸度の標準偏差 `0.1580` と完全に一致させるため、本プロジェクトでは**母標準偏差 (`ddof=0`)**を採用して算出しています。
  （※Pandasのデフォルトである標本標準偏差 `ddof=1` を使用した場合は `0.1586` となります。）

---

## 各図の説明

### 図1．糖度・酸度の実測値と予測値の散布図
- **ファイル名**:
  - 2カラム幅（175 mm）版: `fig_validation_scatter_double.pdf` / `fig_validation_scatter_double.png`
  - 1カラム幅（85 mm）版 (酸度単独): `fig_acid_scatter.pdf` / `fig_acid_scatter.png`
  - 1カラム幅（85 mm）版 (糖度単独): `fig_brix_scatter.pdf` / `fig_brix_scatter.png`
- **使用したCSV**: `dataset_csv/unified_val.csv`
- **使用した列名**:
  - 実測値: 糖度 `brix`、酸度 `acid`
  - 予測値: モデル（`UnifiedDetector`）による動的推論予測値
- **除外した行数**: 0行
- **最終サンプル数**: 136サンプル
- **再計算した評価値**:
  - **酸度 (Acidity)**: MAE = 0.0897, RMSE = 0.1484, R² = 0.1171, Correlation = 0.3707, Bias = -0.0223
  - **糖度 (Brix)**: MAE = 0.5860, RMSE = 0.8397, R² = 0.2288, Correlation = 0.8434, Bias = -0.3886
- **論文用英語キャプション案**:
  `Fig. 1. Relationship between measured and predicted tomato quality values for the 136 validation samples: (a) acidity and (b) Brix. The dashed line represents the ideal prediction y = x.`
- **論文用日本語キャプション案**:
  `図1．検証用データ136サンプルにおける実測値と予測値の関係．（a）酸度，（b）糖度．破線は理想予測線 y = x を示す．`
- **図の読み取り方**:
  - 横軸に実測値、縦軸に予測値をとっています。理想的な予測がなされた場合、すべてのプロットは対角線（破線 $y=x$）上に配置されます。
  - 糖度（Brix）は相関係数 $r = 0.8434$ と強い正相関を示しており、モデルが糖度を精度よく捉えられていることがわかります。
  - 一方、酸度（Acidity）は相関係数 $r = 0.3707$、決定係数 $R^2 = 0.1171$ に留まっており、予測値のばらつきが小さく（予測値の平均付近に集中）、今後の改善の余地を示しています。
- **再生成コマンド**:
  ```bash
  python scripts/generate_paper_figures.py --input dataset_csv/unified_val.csv --output-dir figures
  ```

---

### 図2．酸度の実測値と予測値の分布比較
- **ファイル名**: `fig_acid_distribution.pdf` / `fig_acid_distribution.png` (および `fig_acid_distribution_double.pdf` / `fig_acid_distribution_double.png`)
- **使用したCSV**: `dataset_csv/unified_val.csv`
- **使用した列名**:
  - 実測値: `acid`
  - 予測値: モデルによる予測値
- **除外した行数**: 0行
- **最終サンプル数**: 136サンプル
- **再計算した統計値**:
  - **実測酸度 (Measured acidity)**: 平均 (mean) = 0.3395, 標準偏差 (std) = 0.1580, 範囲 (range) = [0.1700, 1.0800]
  - **予測酸度 (Predicted acidity)**: 平均 (mean) = 0.3172, 標準偏差 (std) = 0.0615, 範囲 (range) = [0.2800, 0.4600]
- **論文用英語キャプション案**:
  `Fig. 2. Distribution comparison between measured and predicted acidity values for the 136 validation samples. The vertical solid line and dashed line indicate the mean of the measured and predicted acidity values, respectively.`
- **論文用日本語キャプション案**:
  `図2．検証用データ136サンプルにおける実測酸度と予測酸度の分布比較．縦の実線および破線は、それぞれ実測値および予測値の平均値を示す．`
- **図の読み取り方**:
  - 実測値の分布（薄いグレー、塗りつぶし）に比べ、予測値の分布（斜線ハッチング）が $0.28$ 〜 $0.46$ の非常に狭い範囲に集中していることが視覚的に確認できます。
  - これは、モデルが実測値の極端に高い値（高酸度側）や低い値（低酸度側）を予測しにくく、平均値付近に予測値を寄せてしまう傾向（回帰の平均への回帰傾向）があることを客観的に示しています。
- **再生成コマンド**:
  ```bash
  python scripts/generate_paper_figures.py --input dataset_csv/unified_val.csv --output-dir figures
  ```

---

### 図3．従来モデルとUnifiedDetectorの酸度推定誤差比較
- **ファイル名**: `fig_acid_model_comparison.pdf` / `fig_acid_model_comparison.png` (および `fig_acid_model_comparison_double.pdf` / `fig_acid_model_comparison_double.png`)
- **使用したCSV**: なし（従来モデルの値は既定値を使用し、UnifiedDetectorの値は `dataset_csv/unified_val.csv` から再計算）
- **使用した列名**: なし
- **除外した行数**: 0行
- **最終サンプル数**: 136サンプル（UnifiedDetector）
- **再計算した評価値**:
  - **従来Swinモデル (Previous Swin model)**: MAE = 0.4990, RMSE = 0.5800
  - **統合検出器 (UnifiedDetector)**: MAE = 0.0897, RMSE = 0.1484
- **酸度推定誤差の改善率 (Error Reduction Rate)**:
  - **MAE 改善率**: **82.0%** (再計算値: 82.02%)
  - **RMSE 改善率**: **74.4%** (再計算値: 74.41%)
  ※ 計算式: $improvement = (previous - unified) / previous \times 100$
- **論文用英語キャプション案**:
  `Fig. 3. Comparison of acidity estimation error (MAE and RMSE) between the previous Swin-based model and the proposed UnifiedDetector.`
- **論文用日本語キャプション案**:
  `図3．従来のSwinモデルと提案手法（UnifiedDetector）における酸度推定誤差（MAEおよびRMSE）の比較．`
- **図の読み取り方**:
  - 従来モデル（左の棒）とUnifiedDetector（右の棒）の予測誤差（MAEとRMSE）を棒グラフで比較しています。
  - UnifiedDetectorの導入により、MAEが約82.0%、RMSEが約74.4%と大幅に誤差が低減していることが視覚的に捉えられます。
- **再生成コマンド**:
  ```bash
  python scripts/generate_paper_figures.py --input dataset_csv/unified_val.csv --output-dir figures
  ```

---

### 図4．酸度ラベルの分布
- **ステータス**: **データ不足のため未生成**
- **理由**:
  本図の生成には「学習用」「学習時検証用」「最終評価用」の3つのCSVファイルが必要ですが、プロジェクト内には学習用（`unified_train.csv`）と検証用（`unified_val.csv`）のみが存在し、最終評価用のCSV（例: `unified_test.csv`）が存在しなかったため、生成をスキップしました。
- **論文用英語キャプション案 (参考)**:
  `Fig. 4. Comparison of acidity label distributions across the training, validation, and evaluation datasets.`
- **論文用日本語キャプション案 (参考)**:
  `図4．学習用，検証用，および最終評価用データセット間における酸度ラベルの分布比較．`
