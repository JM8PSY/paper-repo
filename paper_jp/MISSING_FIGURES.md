# 不足する図 (MISSING_FIGURES.md)

以下は，現在の `figures/` フォルダに含まれておらず，論文を完全にするために追加が必要な図の一覧です．

---

## 優先度A：論文の理解に必要（核心的な手法・モデル設計の図）

### 図1　提案システム全体構成図
- **必要とされる章・節**: 2．1節，2．3節
- **必要な内容**:
  - RGB画像入力
  - YOLOv10sによる検出領域
  - Layer 16中間特徴マップ
  - RoI Align処理
  - RegressionHeadによる糖度・酸度の同時推定
  - 糖度・酸度の可視化結果
- **推奨ファイル名**: `fig_system_overview.pdf` (または `.png`, `.jpg`)
- **不足している理由**: `figures/` フォルダに存在しないため．

### 図4　UnifiedDetectorのモデル構成図
- **必要とされる章・節**: 2．5節
- **必要な内容**:
  - 入力画像 (Input Image)
  - YOLOv10s バックボーン
  - Layer 16 feature map のフック
  - Bounding box 検出結果
  - RoI Align 層
  - RegressionHead (全結合層などの詳細設計)
  - Brix (糖度) および Acidity (酸度) の並列出力
- **推奨ファイル名**: `fig_unified_detector_architecture.pdf` (または `.png`, `.jpg`)
- **不足している理由**: `figures/` フォルダに存在しないため．

---

## 優先度B：PBL活動や実験手順の説明に有効（活動の説得力を高める図）

### 図2　PBL活動の開発プロセス
- **必要とされる章・節**: 2．2節
- **必要な内容**:
  - 農家ヒアリング・課題整理 (Science / Engineering)
  - 要件定義・システム設計 (Engineering)
  - データ収集 (画像撮影・品質測定) (Technology / Science)
  - AIモデル開発・統合 (Engineering / Mathematics)
  - 評価と改良 (Mathematics / Engineering)
  - 各工程における学生の役割・担当分野の併記
- **推奨ファイル名**: `fig_pbl_process.pdf` (または `.png`, `.jpg`)
- **不足している理由**: `figures/` フォルダに存在しないため．

### 図3　データ収集および品質測定
- **必要とされる章・節**: 2．4節
- **必要な内容**:
  - トマト果実の撮影風景 (撮影環境の可視化)
  - 糖度計によるBrix値の測定風景
  - 酸度計（または滴定）による酸度測定風景
  - 収集画像IDと測定値（糖度・酸度）の紐付け（データベース化）を示す図
- **推奨ファイル名**: `fig_data_acquisition.pdf` (または `.png`, `.jpg`)
- **不足している理由**: `figures/` フォルダに存在しないため．

### 図5　推論結果 (Inference Example)
- **必要とされる章・節**: 2．7節
- **必要な内容**:
  - 実際のテストトマト画像に対する境界ボックスの描画
  - 各ボックスに付随する予測糖度 (Brix)，予測酸度 (Acid)，検出信頼度 (Confidence)
- **推奨ファイル名**: `tomato_082_annotated.jpg` または `fig_inference_example.png`
- **不足している理由**: `figures/` フォルダに存在しないため．

---

## 優先度C：あれば理解を補助するが，なくても論文が成立する（補足図）

### 追加候補　酸度ラベルの分布
- **必要とされる章・節**: 2．4節 (Table 1 付近)
- **必要な内容**:
  - 学習用，検証用，および最終評価用データセット間における酸度ラベルの分布比較ヒストグラム
- **推奨ファイル名**: `fig_acid_label_distribution.pdf` (または `.png`, `.jpg`)
- **不足している理由**: `figures/README_figures.md` に記載がある通り，最終評価用のCSVファイル等が不足しているため生成されなかった．
