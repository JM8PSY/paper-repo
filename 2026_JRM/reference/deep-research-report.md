# 画像ベーストマト品質推定と教育的意義に関する文献調査

## 要旨

あなたの現在の実験範囲に最も整合する論文群は、**トマトのRGB画像ベース成熟度推定**、**トマトの非破壊品質推定**、**Brix・酸度・pH・SSC を扱う NIR/HSI 系研究**、そして**学生主体のAI/IoT/PBL型STEM教育**に大きく分かれます。最近のトマト研究では、**SSC/Brix・pH/TA・ firmness・成熟度**を対象にした研究は増えていますが、**RGB単独でBrixや酸度を高精度に直接回帰する研究はまだ少なく**、精度が高い論文の多くは依然として **Vis-NIR / NIR / hyperspectral imaging** に依存しています。したがって、あなたの論文では、**RGB画像による品質推定の実装可能性**を主軸に置きつつ、**NIR/HSI を高性能だが高コストな関連研究**として整理するのが最も安全で説得的です。 citeturn4search0turn19search13turn23search0turn23search3turn5search15turn1search8turn1search10

特に重要なのは、**現在の実験で未実施のことを論文中で過大主張しないこと**です。あなたの条件では、**環境センサ入力を使った実験**、**画像と環境データのセンサ融合**、**ロボット収穫や自律移動**は実証範囲外です。したがって、IoT・環境データ・クラウドAI・将来の自動化は、**背景・関連研究・システム構想・将来課題**としては書けますが、**現行の実験入力・実験結果・性能改善要因**としては書かない方がよいです。これは、スマート農業レビューやスマート温室レビューでも、画像系AIとIoT/制御系AIがしばしば同一システム内で語られつつも、データ源と実験範囲を明確に区別していることと整合します。 citeturn6search2turn6search4turn6search11turn6search18turn7search13

文献全体を俯瞰すると、あなたの論文の最も現実的な位置づけは、**「低コストRGB画像ベースのトマト品質推定を、非破壊品質推定研究の一部として位置づけ、教育的には学生主導PBL/STEAMプロジェクトとして報告する」**というものです。教育研究の側では、PBL は学生の自律性、協働、問題解決、実社会との接続を強めると広く整理されており、IoT/AI を組み込んだ工学教育でも、**hands-on 実装・試作・評価**が教育的価値の中核として報告されています。したがって、教育セクションでは「農業DXの完成品」ではなく、**学生がAI・画像処理・クラウド/IoT 構想を統合しながら設計・試作・検証した学習経験**を前面に出すのが有効です。 citeturn14search4turn14search9turn14search2turn13search1turn13search8turn13search12turn13search2turn15search12turn15search16turn15search18

## 対象範囲と選定方針

この調査では、**2018–2026年を主対象**にしつつ、PBLや非破壊品質推定の**基礎論文**はそれ以前も採択しました。優先したのは、**IEEE Xplore、MDPI、Frontiers、Nature/Scientific Reports、PLOS、Springer、SAGE、ASEE、ACM** などの学術ソースです。ユーザー指示に従い、**ロボット収穫・ロボットアーム・自律移動ロボット・収穫ロボティクスを主題とする論文は除外**し、また**環境センサを現在の実験入力として扱う記述は排除**しました。該当する IoT・クラウド・環境情報の論文は、**background / related work / system concept / limitations / future work** として扱えるものだけを残しています。 citeturn4search0turn19search13turn6search2turn6search4turn6search18turn7search13

表では、可読性を保つために以下の略記を使います。  
**PR** = peer-reviewed、**N** = dataset size、**Rel** = あなたの論文への関連度、**配置** = Introduction / Related Work / Method / Discussion / Future Work / Education。  
また、**DOI が検索結果で明示されていない場合は “not found”**、データセットサイズやモデル詳細が不明な場合は **“uncertain”** としました。  
**URL は、原則として各行の出典 citation が指す出版社ページまたは論文ページと同一**です。  

## 論文表

### 凡例

下表は、**高信頼コア文献 88 本**に加え、最後に**補助的追加文献 12 本**を付け、**合計約100本**になるように整理しています。カテゴリーごとに見たい論文へすぐ移れるよう、重複が有用な場合は一部再掲しています。

**A. Tomato Brix / sugar content estimation**  
この群は、トマトの SSC/Brix と近縁な内部品質指標を扱う中心文献です。トマト特化の SSC/Brix 推定では HSI/NIR 系の比重が非常に高く、RGB 単独研究はまだ少数です。 citeturn23search0turn23search3turn5search8turn5search18turn1search10turn19search18

| 論文 | メタデータ | 研究内容 | 本論文への使い方 | 出典 |
|---|---|---|---|---|
| Nondestructive Estimation of Moisture Content, pH and Soluble Solid Content in Intact Tomatoes Using Hyperspectral Imaging | Rahman et al.; 2017; *Applied Sciences*; DOI: not found in accessible metadata; PR: Yes | Tomato; HSI 1000–1550 nm; outputs MC/pH/SSC; PLSR; N=95 | トマト内部品質推定の基礎。RGBではないが、SSC/Brix・pH を非破壊推定する代表例。限界: HSI依存。Rel 10; 配置: Related Work/Discussion | citeturn23search0 |
| Model Development for Soluble Solids and Lycopene Contents of Cherry Tomato at Different Temperatures Using Near-Infrared Spectroscopy | Sheng et al.; 2019; *Postharvest Biology and Technology*; DOI: not found in accessible metadata; PR: Yes | Cherry tomato; NIR spectroscopy; outputs SSC and lycopene; model uncertain; N uncertain | 温度変動を含めた SSC 推定。Brix 相当の文献として重要。限界: 画像ではなくNIR、RGB直接比較には使いにくい。Rel 9; 配置: Related Work | citeturn4search17 |
| Deep Learning and Hyperspectral Images Based Tomato Soluble Solids Content and Firmness Estimation | Xiang et al.; 2022; *Frontiers in Plant Science*; DOI: 10.3389/fpls.2022.860656; PR: Yes | Cherry tomato; HSI 400–1000 nm; outputs SSC/firmness; 1D Con1dResNet; N >200 | トマトSSC推定の近年代表論文。DL 回帰が有効であることを示す。限界: HSI・専用機材前提。Rel 10; 配置: Related Work/Discussion | citeturn23search3turn4search1 |
| Deep Learning in Hyperspectral Image Reconstruction from Single RGB Images: A Case Study on Tomato Quality Parameters | Zhao et al.; 2020; *Remote Sensing*; DOI: 10.3390/RS12193258; PR: Yes | Tomato; smartphone RGB → reconstructed HSI; outputs SSC/TTA related ratio, anthocyanin index; HSCNN-R; N uncertain | **RGB起点**で内部品質推定に接続するため、あなたの論文に最重要。限界: 擬似HSI再構成を前提。Rel 10; 配置: Introduction/Related Work/Discussion | citeturn1search6turn5search12 |
| Machine Learning-Driven Assessment of Biochemical Qualities in Tomato and Mandarin Using RGB and Hyperspectral Sensors as Nondestructive Technologies | Elmetwalli et al.; 2024; *PLOS ONE*; DOI: 10.1371/journal.pone.0308826; PR: Yes | Tomato & mandarin; RGB + HSI; biochemical quality outputs; ML models; N uncertain | RGB と HSI を比較可能。あなたは sensor fusion を主張できないが、**RGB-only の位置づけ**を説明する比較材料として有用。Rel 9; 配置: Related Work/Discussion | citeturn5search8turn5search16 |
| Non-Destructive Quality Measurement for Three Varieties of Tomato Using VIS/NIR Spectroscopy | Najjar et al.; 2021; *Sustainability*; DOI: not found in accessible metadata; PR: Yes | 3 tomato varieties; VIS/NIR 550–1100 nm; outputs SSC/TA/taste/firmness; model uncertain; N uncertain | Tomato SSC/TA/taste を同時に扱う。Brix・酸度・taste ratio の整理に有効。限界: RGB画像ではない。Rel 8; 配置: Related Work | citeturn5search18 |
| Determination of Quality and Maturity of Processing Tomatoes Using Near-Infrared Hyperspectral Imaging with Interpretable Machine Learning Methods | Zhao et al.; 2023; *LWT*; DOI: not found in accessible metadata; PR: Yes | Processing tomato; NIR-HSI 980–1660 nm; outputs firmness/SSC/lycopene/pH + maturity; RF/PLS/RNN; N uncertain | 1本で成熟度・内部品質・解釈性まで触れられる。RGB研究の対照群として非常に強い。Rel 10; 配置: Related Work/Discussion | citeturn1search4turn19search6 |
| Hyperspectral Imaging Using a Convolutional Neural Network with Transformer for the Soluble Solid Content and pH Prediction of Cherry Tomatoes | Qi et al.; 2024; *Foods*; DOI: not found in accessible metadata; PR: Yes | Cherry tomato; HSI; outputs SSC and pH; CNN-Transformer; N uncertain | cherry tomato の SSC/pH 予測を DL で強化。Brix/pH 双方を扱うため近い。限界: HSI前提。Rel 9; 配置: Related Work | citeturn19search18turn23search5 |

**B. Tomato acidity estimation**  
トマト酸度は、SSC/Brix より文献量が少なく、しかも高精度論文は主に NIR/HSI 系です。RGB-only で酸度を強く主張するのは危険で、**“exploratory regression” または “future work with more labels”** のトーンが安全です。 citeturn1search8turn23search0turn5search18turn19search6turn19search1turn19search7turn19search18

| 論文 | メタデータ | 研究内容 | 本論文への使い方 | 出典 |
|---|---|---|---|---|
| Non-Destructive Determination of Color, Titratable Acidity, and Dry Matter in Intact Tomatoes Using a Portable Vis-NIR Spectrometer | de Brito et al.; 2022; *Journal of Food Composition and Analysis*; DOI: 10.1016/j.jfca.2021.104288; PR: Yes | Intact tomato; portable Vis-NIR; outputs color/TA/dry matter; model uncertain; N uncertain | **トマト TA を直接扱う重要論文**。ただし TA 予測は弱めであることも示し、過大主張抑制に使える。Rel 10; 配置: Related Work/Discussion | citeturn1search8turn5search6turn5search22 |
| Nondestructive Estimation of Moisture Content, pH and Soluble Solid Content in Intact Tomatoes Using Hyperspectral Imaging | Rahman et al.; 2017; *Applied Sciences*; DOI: not found; PR: Yes | Tomato; HSI; outputs pH/SSC/MC; PLSR; N=95 | acidity 近傍指標としての pH 文献。TA ではない点は要明記。Rel 9; 配置: Related Work | citeturn23search0 |
| Non-Destructive Quality Measurement for Three Varieties of Tomato Using VIS/NIR Spectroscopy | Najjar et al.; 2021; *Sustainability*; DOI: not found; PR: Yes | Tomato varieties; VIS/NIR; outputs SSC/TA/taste/firmness; N uncertain | TA と SSC/TA taste ratio をまとめて扱うため、味関連指標の整理に役立つ。Rel 9; 配置: Related Work/Discussion | citeturn5search18 |
| Determination of Quality and Maturity of Processing Tomatoes Using Near-Infrared Hyperspectral Imaging with Interpretable Machine Learning Methods | Zhao et al.; 2023; *LWT*; DOI: not found; PR: Yes | Processing tomato; NIR-HSI; outputs pH, SSC, firmness, lycopene, maturity; RF/PLS/RNN | pH を含むトマト品質推定の強い比較対象。Rel 9; 配置: Related Work | citeturn19search6turn1search4 |
| Development of a Non-Destructive Detection Method for the Titratable Acidity of Tomatoes During Ripening Using Hyperspectral Imaging | Wu et al.; 2025; *LWT*; DOI: 10.1016/j.lwt.2025.118711; PR: Yes | Tomato during ripening; HSI; output TA; model uncertain; N uncertain | **TA に特化**した新しい重要論文。RGB酸度推定の難しさを示す比較軸として重要。Rel 10; 配置: Related Work/Future Work | citeturn19search1 |
| High-Throughput Phenotyping of Sweetness and Sourness in Tomato Fruit | Xu et al.; 2025; venue in snippet: *Current Research in Food Science*; DOI: 10.1016/j.crfs.2025.101247; PR: Yes | Tomato fruit; NIRS assay; outputs fructose/sucrose/glucose/malic acid/citric acid; N uncertain | 糖と酸の生化学的内訳まで触れる。酸度の議論を深めるのに極めて有用。Rel 9; 配置: Related Work/Discussion | citeturn19search7 |
| Machine Learning-Driven Assessment of Biochemical Qualities in Tomato and Mandarin Using RGB and Hyperspectral Sensors as Nondestructive Technologies | Elmetwalli et al.; 2024; *PLOS ONE*; DOI: 10.1371/journal.pone.0308826; PR: Yes | RGB + HSI; biochemical qualities; ML; N uncertain | RGB と HSI の役割差を説明しやすい。現在の実験では RGB 部分のみ参照するのが安全。Rel 8; 配置: Related Work | citeturn5search8 |
| Hyperspectral Imaging Using a Convolutional Neural Network with Transformer for the Soluble Solid Content and pH Prediction of Cherry Tomatoes | Qi et al.; 2024; *Foods*; DOI: not found; PR: Yes | Cherry tomato; HSI; outputs SSC/pH; CNN-Transformer | pH を扱う cherry tomato 文献として、酸度近傍関連研究に挿入しやすい。Rel 8; 配置: Related Work | citeturn19search18 |

**C. Tomato maturity and ripeness estimation**  
成熟度・色・等級判定は、RGB画像研究がもっとも多い領域です。あなたの RGB ベース研究と最も自然に接続できるカテゴリーです。 citeturn20search5turn21search3turn22search5turn20search12turn5search15turn5search1turn5search13

| 論文 | メタデータ | 研究内容 | 本論文への使い方 | 出典 |
|---|---|---|---|---|
| Using Fuzzy Mask R-CNN Model to Automatically Identify Tomato Ripeness | Huang et al.; 2020; *IEEE Access*; DOI: 10.1109/ACCESS.2020.3038184; PR: Yes | Tomato ripeness; RGB images; detection + ripeness classification; Fuzzy Mask R-CNN; detection set includes 100 images in snippet | **RGB成熟度推定の代表論文**。Segmentation + ripeness という構図が近い。Rel 10; 配置: Related Work | citeturn21search5turn20search13 |
| An Intelligent Hybrid Experimental-Based Deep Learning Algorithm for Tomato-Sorting Controllers | Haggag et al.; 2019; *IEEE Access*; DOI: 10.1109/ACCESS.2019.2932730; PR: Yes | Tomato sorting; RGB images; ripe/unripe classes; CNN/ANN/SOM/LVQ/SVM; N uncertain | 画像ベースのトマト選別・熟度分類の基礎。Rel 9; 配置: Related Work | citeturn21search0turn21search3 |
| Automated Tomato Grading System Using Computer Vision and Deep Neural Network Algorithm | Tan et al.; 2022; *2022 IEEE ISCAIE*; DOI: 10.1109/ISCAIE54458.2022.9794557; PR: Yes | Tomato grading by maturity color; RGB CV + DNN; N uncertain | 成熟色に基づく grading として直接近い。Rel 9; 配置: Related Work/Method | citeturn22search1turn22search5 |
| Tomato Quality Classification Based on Transfer Learning Feature Extraction and Machine Learning Algorithm Classifiers | Mputu et al.; 2024; *IEEE Access*; DOI: 10.1109/ACCESS.2024.3352745; PR: Yes | Tomato quality sorting/grading; RGB images; transfer learning + ML; N uncertain | 近年の transfer learning 代表例。低コスト・少データ条件の議論に有効。Rel 10; 配置: Related Work/Method | citeturn20search12turn20search22 |
| Application of Hyperspectral Imaging as a Nondestructive Tool to Monitor Tomato Maturity and Predict Lycopene Content | Dai et al.; 2023; *Foods*; DOI: not found; PR: Yes | Tomato maturity stages; HSI; maturity + lycopene; N uncertain | RGBではないが、成熟度と化学品質が連動することを示す重要文献。Rel 8; 配置: Related Work/Discussion | citeturn5search15turn19search8 |
| Determination of Quality and Maturity of Processing Tomatoes Using Near-Infrared Hyperspectral Imaging with Interpretable Machine Learning Methods | Zhao et al.; 2023; *LWT*; DOI: not found; PR: Yes | Processing tomato; NIR-HSI; maturity classification + regression; RF/PLS/RNN | 成熟度分類を内部品質と結びつける比較軸。Rel 9; 配置: Related Work | citeturn19search6 |
| Tomato Maturity Classification and Fruit Counting Based on RGB and Multispectral Images | Lin et al.; 2026; *Applied Sciences*; DOI: not found; PR: Yes | Tomato; RGB + multispectral; maturity classification + counting; N uncertain | ごく新しい関連研究。counting まで含むが、成熟度分類部分のみ参照すれば有益。Rel 8; 配置: Future Work/Related Work | citeturn5search1 |
| Tomato Maturity Recognition with Convolutional Transformer | authors uncertain in snippet; 2024; venue uncertain; DOI: not found; PR: Uncertain | Tomato images; RGB values / image patches; maturity classification; convolutional transformer; new dataset reported | peer-review 不確実だが、ViT 系成熟度分類の技術潮流整理には使える。Rel 7; 配置: Future Work/Related Work | citeturn5search13 |

**D. Non-destructive fruit quality estimation**  
この群は、トマト特化研究を上位の文脈に載せるためのレビュー／周辺果実研究です。序論と関連研究の骨格に使いやすい文献です。 citeturn19search13turn4search0turn0search11turn10search22turn10search10turn5search23turn12search9

| 論文 | メタデータ | 研究内容 | 本論文への使い方 | 出典 |
|---|---|---|---|---|
| Non-Destructive Detection of Fruit Quality: Technologies, Applications and Prospects | Liu et al.; 2025; *Foods*; DOI: 10.3390/FOODS14122137; PR: Yes | Review; NIRS/HSI/THz/ultrasound/e-nose; fruit quality metrics incl. SSC/acidity/maturity | 非破壊品質推定の総合レビュー。序論の基礎。Rel 10; 配置: Introduction/Related Work | citeturn19search13turn2view1 |
| Overview of Deep Learning and Nondestructive Detection Technology for Quality Assessment of Tomatoes | Huang et al.; 2025; *Foods*; DOI: not found; PR: Yes | Review; tomato quality nondestructive methods + DL | **トマト特化レビュー**。あなたの関連研究段落の下敷きに最適。Rel 10; 配置: Introduction/Related Work | citeturn4search0turn4search3 |
| Innovative Hyperspectral Imaging-Based Techniques for Food Quality and Safety Analysis and Assessment | Lu et al.; 2017; *Applied Sciences*; DOI: not found; PR: Yes | Review; HSI configurations, sensing modes, data processing | HSIの基礎整理用。古いが foundational。Rel 8; 配置: Related Work | citeturn0search11 |
| Hyperspectral Imaging for Fresh-Cut Fruit and Vegetable Quality Assessment: Basic Concepts and Applications | Vignati et al.; 2023; *Applied Sciences*; DOI: 10.3390/app13179740; PR: Yes | Review; HSI concepts and applications for produce quality | fresh-cut 中心だが、品質指標と HSI 処理系の整理に有用。Rel 7; 配置: Related Work | citeturn10search10 |
| Advancement of Non-Destructive Spectral Measurements for Quality Evaluation of Major Tropical Fruits and Vegetables | Aline et al.; 2023; venue in snippet available via PMC; DOI: not found; PR: Yes | Review; spectral methods for fruit/vegetable quality | スペクトル系非破壊評価の整理。Rel 7; 配置: Related Work | citeturn10search22 |
| Hyperspectral Imaging Using a Convolutional Neural Network and Visible/Near-Infrared Sensors in Fruit Quality Detection | Qi et al.; 2024; *Foods*; DOI: not found; PR: Yes | Deep learning + HSI review/application focus in fruit quality | DL-HSI の最近動向をまとめる際に便利。Rel 8; 配置: Related Work | citeturn4search16turn23search5 |
| Non-Destructive Detection of Fruit Quality Parameters Using Hyperspectral Imaging in Apples | Hasanzadeh et al.; 2022; *Horticulturae*; DOI: not found; PR: Yes | Apple; HSI; outputs pH/SSC/TA/phenol; PLSR; N uncertain | トマト以外の TA/SSC/pH 非破壊推定の比較文献。Rel 7; 配置: Related Work/Discussion | citeturn0search29 |
| Nondestructive Quality Assessment and Maturity Classification of Loquats Using Hyperspectral Imaging Technique | Feng et al.; 2023; *Scientific Reports*; DOI: not found; PR: Yes | Loquat; HSI; quality + maturity classification; PLS-DA etc.; N uncertain | 成熟度と品質指標の同時扱いの比較対象。Rel 7; 配置: Related Work | citeturn5search23 |

**E. RGB image-based fruit quality estimation**  
RGB 研究は、**成熟度・外観品質・欠陥・等級**に強く、**内部品質の直接回帰**はまだ限定的です。あなたの論文はこのギャップ自体を研究動機として使えます。 citeturn1search6turn5search8turn12search3turn0search25turn21search3turn22search5turn20search12turn0search28

| 論文 | メタデータ | 研究内容 | 本論文への使い方 | 出典 |
|---|---|---|---|---|
| Deep Learning in Hyperspectral Image Reconstruction from Single RGB Images: A Case Study on Tomato Quality Parameters | Zhao et al.; 2020; *Remote Sensing*; DOI: 10.3390/RS12193258; PR: Yes | Smartphone RGB → reconstructed HSI; tomato quality parameters | RGBから内部品質へブリッジする最重要文献。Rel 10; 配置: Introduction/Related Work | citeturn1search6turn5search12 |
| Machine Learning-Driven Assessment of Biochemical Qualities in Tomato and Mandarin Using RGB and Hyperspectral Sensors as Nondestructive Technologies | Elmetwalli et al.; 2024; *PLOS ONE*; DOI: 10.1371/journal.pone.0308826; PR: Yes | RGB + HSI; biochemical quality; ML | RGB の可能性と限界を同時に示せる。Rel 9; 配置: Related Work/Discussion | citeturn5search8 |
| Simplified Deep Learning for Accessible Fruit Quality Assessment in Small Agricultural Operations | Zárate et al.; 2024; *Applied Sciences*; DOI: not found; PR: Yes | Fruit quality assessment; likely RGB images; CNN vs MobileNetV2; N uncertain | **低コスト・小規模運用**というあなたの文脈に相性が良い。Rel 8; 配置: Discussion/Future Work | citeturn12search3turn12search7 |
| Analysis of Fruit Images With Deep Learning | Espinoza et al.; 2023; IEEE publication; DOI: not found; PR: Yes | Review; fruit image analysis via DL | 果実画像解析全般のレビューとして便利。Rel 8; 配置: Related Work | citeturn0search25 |
| An Intelligent Hybrid Experimental-Based Deep Learning Algorithm for Tomato-Sorting Controllers | Haggag et al.; 2019; *IEEE Access*; DOI: 10.1109/ACCESS.2019.2932730; PR: Yes | RGB tomato sorting; CNN/ML mix | RGBベース品質分類の代表。Rel 8; 配置: Related Work | citeturn21search3 |
| Automated Tomato Grading System Using Computer Vision and Deep Neural Network Algorithm | Tan et al.; 2022; *IEEE ISCAIE*; DOI: 10.1109/ISCAIE54458.2022.9794557; PR: Yes | RGB grading by color; CV + DNN | 色ベーストマト grading として近い。Rel 8; 配置: Method/Related Work | citeturn22search5 |
| Tomato Quality Classification Based on Transfer Learning Feature Extraction and Machine Learning Algorithm Classifiers | Mputu et al.; 2024; *IEEE Access*; DOI: 10.1109/ACCESS.2024.3352745; PR: Yes | RGB images; transfer learning; quality classification | transfer learning の設計参考。Rel 9; 配置: Method/Related Work | citeturn20search12 |
| Detection of Mulberry Ripeness Stages Using Deep Learning | Ashtiani et al.; 2021; IEEE publication; DOI: not found; PR: Yes | Mulberry RGB images; ripeness classification; CNN; N uncertain | 他果実 RGB ripeness 文献として比較に使える。Rel 7; 配置: Related Work | citeturn0search28 |

**F. NIR / hyperspectral imaging for fruit quality estimation**  
この群は、「なぜ多くの高精度研究がRGBではなくスペクトル系を使うのか」を説明するための文献群です。あなたの論文では、**高精度のベンチマークだがコストや装置性が高い**と整理するのが自然です。 citeturn23search0turn23search3turn1search8turn19search6turn5search15turn0search29turn19search18

| 論文 | メタデータ | 研究内容 | 本論文への使い方 | 出典 |
|---|---|---|---|---|
| Nondestructive Estimation of Moisture Content, pH and Soluble Solid Content in Intact Tomatoes Using Hyperspectral Imaging | Rahman et al.; 2017; *Applied Sciences*; DOI: not found; PR: Yes | Tomato; HSI; MC/pH/SSC; PLSR; N=95 | トマトHSIの基礎。Rel 10; 配置: Related Work | citeturn23search0 |
| Model Development for Soluble Solids and Lycopene Contents of Cherry Tomato at Different Temperatures Using Near-Infrared Spectroscopy | Sheng et al.; 2019; *Postharvest Biology and Technology*; DOI: not found; PR: Yes | Cherry tomato; NIR; SSC/lycopene; model uncertain | NIR系のトマト文献。Rel 9; 配置: Related Work | citeturn4search17 |
| Non-Destructive Determination of Color, Titratable Acidity, and Dry Matter in Intact Tomatoes Using a Portable Vis-NIR Spectrometer | de Brito et al.; 2022; *JFCA*; DOI: 10.1016/j.jfca.2021.104288; PR: Yes | Portable Vis-NIR; color/TA/dry matter | 携帯型装置という現実的比較材料。Rel 9; 配置: Related Work/Discussion | citeturn1search8 |
| Deep Learning and Hyperspectral Images Based Tomato Soluble Solids Content and Firmness Estimation | Xiang et al.; 2022; *Frontiers in Plant Science*; DOI: 10.3389/fpls.2022.860656; PR: Yes | Tomato HSI; SSC/firmness; 1D ResNet; N >200 | DL-HSI の代表。Rel 10; 配置: Related Work | citeturn23search3 |
| Determination of Quality and Maturity of Processing Tomatoes Using Near-Infrared Hyperspectral Imaging with Interpretable Machine Learning Methods | Zhao et al.; 2023; *LWT*; DOI: not found; PR: Yes | NIR-HSI; quality + maturity; interpretable ML | スペクトル系+解釈性の代表。Rel 9; 配置: Related Work | citeturn19search6 |
| Application of Hyperspectral Imaging as a Nondestructive Tool to Monitor Tomato Maturity and Predict Lycopene Content | Dai et al.; 2023; *Foods*; DOI: not found; PR: Yes | HSI; maturity + lycopene | maturityとの関係づけに使える。Rel 8; 配置: Related Work | citeturn5search15 |
| Non-Destructive Detection of Fruit Quality Parameters Using Hyperspectral Imaging in Apples | Hasanzadeh et al.; 2022; *Horticulturae*; DOI: not found; PR: Yes | Apple HSI; pH/SSC/TA/TP; PLSR | TA/SSC を扱う周辺比較文献。Rel 7; 配置: Related Work | citeturn0search29 |
| Hyperspectral Imaging Using a Convolutional Neural Network with Transformer for the Soluble Solid Content and pH Prediction of Cherry Tomatoes | Qi et al.; 2024; *Foods*; DOI: not found; PR: Yes | Cherry tomato HSI; SSC/pH; CNN-Transformer | 最新DL-HSI文献。Rel 9; 配置: Related Work/Future Work | citeturn19search18 |

**G. Computer vision and deep learning in smart agriculture**  
この群は、あなたの研究を「トマト品質推定」から一段引いた **smart agriculture / CV / DL** の文脈に置くための文献です。 citeturn0search22turn0search10turn6search22turn6search23turn0search25turn12search15turn12search10turn12search11

| 論文 | メタデータ | 研究内容 | 本論文への使い方 | 出典 |
|---|---|---|---|---|
| A Comprehensive Review on Deep Learning Assisted Smart Agriculture | Akbar et al.; 2024; IEEE publication; DOI: not found; PR: Yes | Review; DL in smart agriculture | smart agriculture 内での自分の位置づけに便利。Rel 8; 配置: Introduction | citeturn0search22 |
| Precision Agriculture Through Deep Learning: Tomato Growth Stage Prediction and Disease Classification | Umar et al.; 2024; IEEE publication; DOI: not found; PR: Yes | Tomato growth stage/disease; RGB images; CNN | トマトCV研究全体の広い文脈。Rel 7; 配置: Introduction/Related Work | citeturn0search10 |
| Application of Computer Vision in Livestock and Crop Production | Petrovic et al.; 2023; review article; DOI: not found; PR: Yes | Review; CV applications across agriculture | 作物CVの全体俯瞰。Rel 7; 配置: Introduction | citeturn6search22 |
| Image Processing for Smart Agriculture Applications Using AI-Driven Techniques | Marković et al.; 2024; article via PMC; DOI: not found; PR: Yes | Review; image processing in smart agriculture | 画像処理とスマート農業の接点整理に有用。Rel 8; 配置: Introduction/Related Work | citeturn6search23 |
| Analysis of Fruit Images With Deep Learning | Espinoza et al.; 2023; IEEE publication; DOI: not found; PR: Yes | Review; fruit image analysis via DL | 果実画像分析のDLレビュー。Rel 8; 配置: Related Work | citeturn0search25 |
| Prediction of Fruit Maturity, Quality, and Its Life Using Deep Learning Methods | Aherwadi et al.; 2022; *Electronics*; DOI: not found; PR: Yes | Review; DL for fruit maturity/quality/shelf life | 果実全体の品質推定枠組みの整理用。Rel 8; 配置: Related Work | citeturn12search15 |
| Sustainable Deep Vision Systems for Date Fruit Quality Estimation | Hassan et al.; 2025; *Frontiers in Plant Science*; DOI: not found; PR: Yes | Date fruit quality via deep vision; dataset release | resource-constrained 深層視覚の議論に使える。Rel 6; 配置: Future Work | citeturn12search10 |
| Research Progress of Machine Learning in Extending Shelf Life and Quality Control of Fruits and Vegetables | Li et al.; 2024; *Foods*; DOI: not found; PR: Yes | Review; ML for shelf life & quality control | 品質制御と非破壊評価の接続に便利。Rel 7; 配置: Related Work | citeturn12search11 |

**H. Smart farming systems using camera, IoT, and cloud AI**  
ここは**現行実験の結果**ではなく、**背景・システム構想・将来課題**にだけ使うべき文献群です。ユーザー制約に照らして、環境センサや制御系を「実験入力」として書かないことが重要です。 citeturn6search18turn6search11turn6search2turn6search4turn6search0turn6search17turn6search19turn15search19

| 論文 | メタデータ | 研究内容 | 本論文への使い方 | 出典 |
|---|---|---|---|---|
| Smart Agriculture Cloud Using AI Based Techniques | Junaid et al.; 2021; PDF article; DOI: not found; PR: uncertain | Cloud-centric smart agriculture architecture; IoT + AI | クラウドAI構想の背景文献。**実験結果としては使わない**。Rel 7; 配置: Background/Future Work | citeturn6search18 |
| IoT Based Smart Greenhouse Framework and Control Strategies: A Comprehensive Review | Farooq et al.; 2022; IEEE publication; DOI: not found; PR: Yes | Review; greenhouse IoT/control frameworks | スマート温室構想の背景。Rel 7; 配置: Background | citeturn6search11 |
| The IoT and AI in Agriculture: The Time Is Now — A Review | Miller et al.; 2025; *Sensors*; DOI: not found; PR: Yes | Review; IoT + AI in agriculture | 広い背景付けに有用。Rel 7; 配置: Introduction/Background | citeturn6search2 |
| Smart Greenhouses in the Era of IoT and AI | El Ouaham et al.; 2026; *Agriculture*; DOI: not found; PR: Yes | Review; intelligent SGH monitoring/predictive systems | 2026時点の最新スマート温室レビュー。Rel 8; 配置: Background/Future Work | citeturn6search4 |
| Deep Learning-Driven IoT Solution for Smart Tomato Farming | Saxena et al.; 2025; *Scientific Reports*; DOI: not found; PR: Yes | Greenhouse tomato; sensors + cameras + DL | tomato smart farming の近い事例。ただしあなたは sensor fusion 結果を主張しない。Rel 8; 配置: Background/Future Work | citeturn6search0 |
| An IoT-Based Smart Agriculture System Using LoRa and Cloud Monitoring for Automated Greenhouse Control | authors uncertain in snippet; 2026; IJCA article page; DOI: not found; PR: uncertain | Automated greenhouse control; LoRa + cloud monitoring | IoTインフラの将来構想用。Rel 6; 配置: Future Work | citeturn6search17 |
| Remote Crop Disease Detection Using Deep Learning with IoT | Chung et al.; 2022; senior project / paper; DOI: not found; PR: No/uncertain | Deployable remote DL detection with IoT | 教育的・実装的背景には使えるが、学術レビューでは補助扱い。Rel 5; 配置: Future Work/Education | citeturn6search19 |
| Comparative Analysis of the IoT Architectures for Smart Agriculture | Aitlmoudden et al.; 2024; journal article; DOI: not found; PR: Yes | Comparative IoT architectures for smart agriculture | システム設計パートの背景に使いやすい。Rel 6; 配置: Background/Future Work | citeturn15search19 |

**I. Explainable AI or interpretable machine learning in agriculture**  
あなたの現在の主実験に必須ではありませんが、**Discussion / Future Work** で「モデルの信頼性」「特徴量寄与」「教育的透明性」を書くときに有用です。トマト品質そのものに対する XAI 文献はまだ少なく、ここは明確な研究ギャップです。 citeturn19search6turn10search2turn17search2turn17search0turn17search4turn17search17turn17search19turn17search14

| 論文 | メタデータ | 研究内容 | 本論文への使い方 | 出典 |
|---|---|---|---|---|
| Determination of Quality and Maturity of Processing Tomatoes Using Near-Infrared Hyperspectral Imaging with Interpretable Machine Learning Methods | Zhao et al.; 2023; *LWT*; DOI: not found; PR: Yes | Processing tomato; NIR-HSI; interpretable ML | **トマト品質 + 解釈性**を直接つなぐ最重要論文。Rel 10; 配置: Discussion/Future Work | citeturn19search6 |
| Leveraging Explainable AI for Sustainable Agriculture | Rajbongshi et al.; 2026; *Artificial Intelligence Review*; DOI: not found; PR: Yes | Review; XAI opportunities/challenges in agriculture | XAI を将来課題として導入する際に有効。Rel 8; 配置: Future Work | citeturn10search2 |
| Next-Gen Agriculture: Integrating AI and XAI for Precision Agriculture | Mohan et al.; 2025; *Frontiers in Plant Science*; DOI: not found; PR: Yes | AI + XAI for yield/climate-agri interactions | 農業XAIの動向。品質推定へ外挿するときは推論と明記。Rel 7; 配置: Future Work | citeturn17search2 |
| Explainable Artificial-Intelligence-Based Hyperspectral Imaging for Early Detection of Leaf Diseases in Intercropping Systems | Malik et al.; 2026; *Frontiers in Plant Science*; DOI: not found; PR: Yes | HSI + ML/DL + XAI in agriculture | HSI + XAI の将来方向を示す。Rel 6; 配置: Future Work | citeturn17search0 |
| Harnessing Explainable AI for Sustainable Agriculture | Hussein et al.; 2024; *Water*; DOI: not found; PR: Yes | SHAP-integrated ML for irrigation water quality index | 農業XAIの方法論例。品質推定へ直接ではない。Rel 5; 配置: Future Work | citeturn17search4 |
| Application of Multimodal Data Fusion and Explainable AI in Precision Agriculture | Choi et al.; 2025; *Frontiers in Plant Science*; DOI: not found; PR: Yes | Multimodal precision agriculture + XAI | あなたは multimodal 実験をしていないので「将来課題」のみに使う。Rel 6; 配置: Future Work | citeturn17search17 |
| A Comparative Analysis of Inception V3, ResNet-50 and Vision Transformer with Explainable AI for Taro Disease Identification | Maeda-Gutiérrez et al.; 2024; *Agronomy*; DOI: not found; PR: Yes | Crop disease classification + XAI | explainability の実装例として使える。Rel 5; 配置: Future Work | citeturn17search19 |
| Advancing Multi-Label Tomato Leaf Disease Identification Through XAI Techniques | Nurullah et al.; 2025; *Electronics*; DOI: not found; PR: Yes | Tomato leaf disease + XAI | トマト属でのXAI適用例。果実品質ではないが、Discussion で引用価値あり。Rel 5; 配置: Future Work | citeturn17search14 |

**J. STEM/STEAM education, project-based learning, and hands-on engineering education**  
教育セクションでは、この群が最重要です。あなたの教育的主張は、**学生がAI・画像処理・農業工学的課題設定を統合したPBL** によって学習した、という形にすると最も安定します。 citeturn14search9turn14search2turn14search4turn13search1turn13search8turn13search12turn13search17turn13search18

| 論文 | メタデータ | 研究内容 | 本論文への使い方 | 出典 |
|---|---|---|---|---|
| Motivating Project-Based Learning: Sustaining the Doing, Supporting the Learning | Blumenfeld et al.; 1991; *Educational Psychologist*; DOI: 10.1080/00461520.1991.9653139; PR: Yes | Foundational PBL theory | 教育セクションの理論的土台。Rel 10; 配置: Education | citeturn14search9turn14search16 |
| A Review of Research on Project-Based Learning | Thomas; 2000; research review; DOI: not found; PR: No/working paper | Foundational review of PBL | PBL の定義・特性整理に使える古典。Rel 9; 配置: Education | citeturn14search2 |
| Project-Based Learning: A Review of the Literature | Kokotsaki et al.; 2016; *Improving Schools*; DOI: 10.1177/1365480216659733; PR: Yes | Review; PBL across contexts | 教育章の最重要レビュー。Rel 10; 配置: Education | citeturn14search4turn14search12 |
| Project-Based Learning as a Catalyst for Integrated STEM Education | Lee et al.; 2025; *Education Sciences*; DOI: not found; PR: Yes | PBL curriculum in integrated STEM | STEM-PBL の最近レビュー/整理として使いやすい。Rel 9; 配置: Education | citeturn13search1 |
| A Meta-Analysis of STEM Project-Based Learning on Creativity | Kwon et al.; 2025; *STEM Education* journal page; DOI: 10.3934/steme.2025014; PR: Yes | Meta-analysis; STEM-PBL and creativity | 教育効果の定量的裏づけ。Rel 8; 配置: Education/Discussion | citeturn13search8 |
| Effect of STEAM Project-Based Learning on Engineering Students’ 21st Century Skills | Oanh et al.; 2025; *European Journal of Educational Research* page; DOI: not found; PR: Yes | STEAM-PBL in engineering students; N=47 in snippet | 工学系学生に対する STEAM-PBL 効果の直接文献。Rel 9; 配置: Education | citeturn13search12 |
| Study on Design and Practice of PBL Teaching Model Based on STEM Education Concept | Liu et al.; 2025; *Scientific Reports*; DOI: not found; PR: Yes | STEM-based PBL teaching model | 工学系・技術リテラシー重視の教育設計に使える。Rel 8; 配置: Education | citeturn13search17 |
| A Mechatronics Case Study of a Rideable 5-Inch Gauge Railway Locomotive Built in Community-Integrated PBL at KOSEN | Tsutsumi et al.; 2025; *Education Sciences*; DOI: not found; PR: Yes | Community-integrated PBL at Japanese KOSEN | **日本の高専文脈** に近い。教育章で非常に使いやすい。Rel 9; 配置: Education | citeturn13search18 |

**K. AI / IoT education in agriculture or engineering**  
ここは、あなたの「AI・IoT・農業工学を横断する hands-on 開発」の教育的価値を支える群です。農業そのものより、**工学教育としての統合**を強めると書きやすいです。 citeturn13search2turn15search12turn15search16turn8search1turn15search1turn15search3turn7search9turn15search18

| 論文 | メタデータ | 研究内容 | 本論文への使い方 | 出典 |
|---|---|---|---|---|
| STEM Teaching for the Internet of Things Maker Course | Chen et al.; 2020; *Sustainability*; DOI: not found; PR: Yes | IoT maker course; STEM teaching model | IoT教育の直接文献。Rel 9; 配置: Education | citeturn13search2turn13search13 |
| IoT and AI Applied in Engineering Education | Liu et al.; 2024; ACM proceedings; DOI: 10.1145/3670085.3670092; PR: Yes | Curriculum redesign with IoT and AI hands-on projects | AI/IoT 工学教育の最近例。Rel 9; 配置: Education | citeturn15search12turn7search1 |
| IoT in Project-Based Learning | Jack; 2023; ASEE; DOI: not found; PR: Yes (conference) | IoT platform in second-year PBL course | PBL と IoT 実装の接続に有効。Rel 8; 配置: Education | citeturn15search16turn7search2 |
| Design a Learning Model to Integrate IoT Applications into the Engineering Curriculum | Haider; 2024; ASEE; DOI: not found; PR: Yes (conference) | Proposed learning model for IoT in engineering curriculum | カリキュラム設計面を支える。Rel 7; 配置: Education | citeturn8search1 |
| From Circuits to Cloud: An Experience Report of a Full Stack IoT Course Curriculum | Louis et al.; 2025; ASEE; DOI: not found; PR: Yes (conference) | End-to-end IoT course with hands-on devices | 実装一貫性の教育価値を説明できる。Rel 8; 配置: Education | citeturn15search1turn8search5 |
| Bridging the Gap in IoT Education: A Comparative Analysis of Project-Based Learning Outcomes Across Disciplines | Guevara et al.; 2026; *Computers*; DOI: not found; PR: Yes | IoT-focused PBL across engineering cohorts; N=95 in snippet | 異分野学生で学習成果が異なる点を示し、教育考察に厚み。Rel 8; 配置: Education/Discussion | citeturn15search3turn15search7 |
| Design of Data Acquisition Module for Greenhouse System | Mohapatra et al.; 2023; SAGE article page; DOI: not found; PR: Yes | PBL case study for greenhouse data acquisition module | **農業系PBLの工学設計事例**として非常に近い。Rel 9; 配置: Education | citeturn7search9 |
| Development of Smart Farm Kit for Experiencing STEM Integrated Education in Biotechnology and Agriculture | Park et al.; 2025; ASEE; DOI: not found; PR: Yes (conference) | Smart farm kit; hands-on STEM in biotech/agriculture | あなたの教育的価値に最も近い文献の一つ。Rel 10; 配置: Education | citeturn15search18 |

**補助的追加文献 12 本**  
ここから下は、本文に全部入れなくてもよいですが、文献表を厚くしたいときに使いやすい補助文献です。 citeturn20search21turn5search17turn5search21turn12search6turn10search18turn10search7turn6search7turn6search14turn15search21turn14search6turn13search14turn15search6

| 論文 | メタデータ | 研究内容 | 本論文への使い方 | 出典 |
|---|---|---|---|---|
| Tomato Maturity Stage Prediction Based on Vision Transformer and Fuzzy Optimization | authors uncertain in snippet; 2024; SAGE page; DOI: 10.3233/HIS-240021; PR: Yes | Tomato maturity via ViT + fuzzy optimization | 最新手法動向の補足 | citeturn20search21 |
| Classification of Tomato Ripeness Based on Convolutional Neural Network | 2023; journal page; DOI: not found; PR: uncertain | Tomato color-based ripeness classification; N=1148 in snippet | 低コスト分類事例 | citeturn5search17 |
| Classification of Tomato Ripeness Levels Using Convolutional Neural Network | 2025; article page; DOI: not found; PR: uncertain | Tomato ripeness; dataset 3600 images in snippet | 学部実装レベルの比較 | citeturn5search21 |
| Image-Based Fruit Recognition and Classification | Marin & Radoi; 2022; IEEE; DOI: not found; PR: Yes | Healthy/damaged fruit via YOLOv3 | RGB品質分類の周辺比較 | citeturn12search6 |
| Fruit-HSNet: A Machine Learning Approach for Hyperspectral Classification of Fruit Ripeness | 2025; conference PDF; DOI: not found; PR: uncertain | HSI ripeness classification | HSI 将来比較 | citeturn10search18 |
| Four-Dimensional Hyperspectral Imaging for Fruit and Vegetable Quality Assessment | Naqvi et al.; 2025; *Agriculture*; DOI: not found; PR: Yes | 4D HSI for external/internal grading | 高度関連研究 | citeturn10search7 |
| Technologies Driving the Shift to Smart Farming: A Review | 2022; review source; DOI: not found; PR: uncertain | Survey of smart farming technologies | 背景文献補強 | citeturn6search7 |
| IoT and AI for Smart Agriculture in Resource-Constrained Settings | Nawaz et al.; 2025; Springer article; DOI: not found; PR: Yes | Review on IoT + AI use cases and constraints | 現実的制約の議論 | citeturn6search14 |
| Design and Educational Application of a Dual-MCU-Based IoT Communication Laboratory System | 2025; iJOE article; DOI: not found; PR: Yes | Hands-on IoT lab education | 教育章の補強 | citeturn15search21 |
| Project-Based Learning – A Literature Review Working Paper | Condliffe et al.; 2017; MDRC working paper; DOI: not found; PR: No | PBL literature review | 教育理論の補助 | citeturn14search6 |
| The Influence of Project-Based STEM Applications on 21st Century Skills | Baran et al.; 2021; education journal page; DOI: not found; PR: Yes | Project-based STEM and skill outcomes | 教育効果の補強 | citeturn13search14 |
| Innovative Engineering Education in the Wake of Smart Agriculture | Mandler et al.; 2023; proceedings PDF; DOI: not found; PR: Yes/uncertain | Competence formation for smart agriculture engineering | 農業工学教育の補助 | citeturn15search6 |

## 優先読書リスト

### まず二日で読むべき二十本

最優先は、**トマト特化の品質推定論文 12 本**と、**教育理論・PBL/IoT教育論文 8 本**です。これだけ読めば、イントロ・関連研究・教育章の骨格はかなり書けます。 citeturn4search0turn19search13turn23search0turn23search3turn1search6turn1search8turn5search18turn19search6turn5search15turn19search18turn5search8turn14search4turn14search9turn14search2turn13search1turn13search12turn13search2turn15search12turn15search18

1. Huang et al., 2025, *Overview of Deep Learning and Nondestructive Detection Technology for Quality Assessment of Tomatoes*  
2. Liu et al., 2025, *Non-Destructive Detection of Fruit Quality: Technologies, Applications and Prospects*  
3. Rahman et al., 2017, *Nondestructive Estimation of Moisture Content, pH and Soluble Solid Content in Intact Tomatoes Using Hyperspectral Imaging*  
4. Xiang et al., 2022, *Deep Learning and Hyperspectral Images Based Tomato Soluble Solids Content and Firmness Estimation*  
5. Zhao et al., 2020, *Deep Learning in Hyperspectral Image Reconstruction from Single RGB Images: A Case Study on Tomato Quality Parameters*  
6. de Brito et al., 2022, *Non-Destructive Determination of Color, Titratable Acidity, and Dry Matter in Intact Tomatoes Using a Portable Vis-NIR Spectrometer*  
7. Najjar et al., 2021, *Non-Destructive Quality Measurement for Three Varieties of Tomato Using VIS/NIR Spectroscopy*  
8. Zhao et al., 2023, *Determination of Quality and Maturity of Processing Tomatoes Using Near-Infrared Hyperspectral Imaging with Interpretable Machine Learning Methods*  
9. Dai et al., 2023, *Application of Hyperspectral Imaging as a Nondestructive Tool to Monitor Tomato Maturity and Predict Lycopene Content*  
10. Qi et al., 2024, *Hyperspectral Imaging Using a Convolutional Neural Network with Transformer for the Soluble Solid Content and pH Prediction of Cherry Tomatoes*  
11. Elmetwalli et al., 2024, *Machine Learning-Driven Assessment of Biochemical Qualities in Tomato and Mandarin Using RGB and Hyperspectral Sensors as Nondestructive Technologies*  
12. Mputu et al., 2024, *Tomato Quality Classification Based on Transfer Learning Feature Extraction and Machine Learning Algorithm Classifiers*  
13. Kokotsaki et al., 2016, *Project-Based Learning: A Review of the Literature*  
14. Blumenfeld et al., 1991, *Motivating Project-Based Learning: Sustaining the Doing, Supporting the Learning*  
15. Thomas, 2000, *A Review of Research on Project-Based Learning*  
16. Lee et al., 2025, *Project-Based Learning as a Catalyst for Integrated STEM Education*  
17. Oanh et al., 2025, *Effect of STEAM Project-Based Learning on Engineering Students’ 21st Century Skills*  
18. Chen et al., 2020, *STEM Teaching for the Internet of Things Maker Course*  
19. Liu et al., 2024, *IoT and AI Applied in Engineering Education*  
20. Park et al., 2025, *Development of Smart Farm Kit for Experiencing STEM Integrated Education in Biotechnology and Agriculture*  

### 画像ベーストマト Brix / acidity 推定で最重要の十本

この十本は、あなたの**現在の実験スコープ**に最も近いコアです。特に、**RGB起点**という点で Zhao 2020 は非常に重要です。 citeturn23search0turn4search17turn23search3turn1search6turn5search8turn5search18turn19search6turn1search8turn19search1turn19search7

1. Zhao et al., 2020, *Deep Learning in Hyperspectral Image Reconstruction from Single RGB Images*  
2. Rahman et al., 2017, *Nondestructive Estimation of MC, pH and SSC in Intact Tomatoes Using HSI*  
3. Xiang et al., 2022, *DL + HSI Based Tomato SSC and Firmness Estimation*  
4. de Brito et al., 2022, *Portable Vis-NIR for Color, TA, Dry Matter in Intact Tomatoes*  
5. Najjar et al., 2021, *Three Tomato Varieties Using VIS/NIR Spectroscopy*  
6. Zhao et al., 2023, *Processing Tomatoes with Interpretable ML*  
7. Sheng et al., 2019, *SSC and Lycopene in Cherry Tomato Using NIR*  
8. Qi et al., 2024, *Cherry Tomato SSC and pH Prediction with CNN-Transformer + HSI*  
9. Elmetwalli et al., 2024, *RGB and HSI for Biochemical Qualities in Tomato and Mandarin*  
10. Xu et al., 2025, *High-Throughput Phenotyping of Sweetness and Sourness in Tomato Fruit*  

### STEM / STEAM / PBL で最重要の十本

教育章はこの十本があれば十分に組み立てられます。日本の高専文脈に近いものとしては Tsutsumi 2025 が特に使いやすいです。 citeturn14search9turn14search2turn14search4turn13search1turn13search8turn13search12turn13search17turn13search18turn13search2turn15search18

1. Blumenfeld et al., 1991, *Motivating Project-Based Learning*  
2. Thomas, 2000, *A Review of Research on Project-Based Learning*  
3. Kokotsaki et al., 2016, *Project-Based Learning: A Review of the Literature*  
4. Lee et al., 2025, *Project-Based Learning as a Catalyst for Integrated STEM Education*  
5. Kwon et al., 2025, *A Meta-Analysis of STEM Project-Based Learning on Creativity*  
6. Oanh et al., 2025, *Effect of STEAM Project-Based Learning on Engineering Students’ 21st Century Skills*  
7. Liu et al., 2025, *Study on Design and Practice of PBL Teaching Model Based on STEM Education Concept*  
8. Tsutsumi et al., 2025, *Community-Integrated PBL at KOSEN*  
9. Chen et al., 2020, *STEM Teaching for the Internet of Things Maker Course*  
10. Park et al., 2025, *Development of Smart Farm Kit for Experiencing STEM Integrated Education*  

## 研究ギャップと執筆戦略

### 研究ギャップ

このテーマの最大のギャップは、**トマトの Brix / acidity を RGB 画像だけで直接・高精度に回帰する研究がまだ少ない**ことです。SSC/Brix・pH・TA をかなりうまく扱う論文は存在しますが、その多くは NIR/HSI/Vis-NIR ベースであり、RGB-only の場合は成熟度・色・等級分類が中心です。したがって、あなたの研究意義は、**低コストRGBのみでどこまで品質推定に迫れるか**、あるいは **Brix/酸度の探索的推定と成熟度推定をどう結びつけるか**、という点にあります。 citeturn23search0turn23search3turn1search8turn5search18turn19search6turn1search6turn20search12turn21search3

第二のギャップは、**酸度関連研究の不足**です。トマト品質研究では SSC/Brix・firmness・maturity に比べて、**TA や pH を主目的にした画像研究は少ない**です。そのため、あなたが酸度推定を扱う場合、文章上は「十分成熟した分野」ではなく、**難易度が高く文献が薄い課題**として整理した方が正確です。 citeturn1search8turn19search1turn19search7turn19search18

第三のギャップは、**教育研究としての統合報告の不足**です。AI/IoT/PBL の教育論文は多い一方で、**学生が実際に農業DX文脈のトマト品質推定システムを構築し、その技術的範囲を適切に限定した上で学術論文化する**事例はまだ多くありません。つまり、あなたの論文は「最高性能の農業AI」ではなく、**学生主導の現実的スコープ設定・データ収集・AI実装・工学教育的学習成果**の統合報告として価値があります。 citeturn15search12turn15search16turn15search18turn13search2turn14search4turn13search12

### Related Work の構成案

最も書きやすい Related Work の構成は次の順です。  
まず、**トマト品質指標の重要性**として SSC/Brix・酸度・成熟度・firmness を定義します。次に、**トマト特化の非破壊推定研究**を整理し、そこで NIR/HSI/Vis-NIR の強さを示します。その後に、**RGB画像ベース研究**を整理して、成熟度や外観品質には強いが、内部品質の直接推定はまだ課題が大きいことを述べます。続いて、**スマート農業システムとクラウドAI**を背景として短く入れます。最後に、**工学教育/PBL/STEM/STEAM** を置き、学生主導研究としての教育的意義に橋渡しします。 citeturn4search0turn19search13turn23search0turn23search3turn1search6turn6search2turn6search4turn14search4turn13search2

文章の見出しにすると、たとえば以下の流れが自然です。  
**Tomato quality indicators and the need for non-destructive estimation**  
**Tomato-specific studies on SSC, acidity, and maturity**  
**RGB image-based approaches for tomato quality assessment**  
**NIR/hyperspectral approaches as high-performance related work**  
**Smart farming system context and cloud-based AI**  
**Educational significance of student-led AI/PBL development**  

### Introduction の論理展開案

Introduction では、最初に **smart agriculture / agricultural DX** の流れの中で、**低コストかつ非破壊にトマト品質を推定する必要性**を出します。次に、トマト品質が **糖度・酸度・成熟度** に強く依存し、従来測定が破壊的で手間がかかることを述べます。そのうえで、NIR/HSI は有力だが、**装置コスト・複雑性・教育実装コスト**が高いと整理します。そこから、**RGB画像ベースなら学生が構築可能で、実装・教育双方の意義がある**とつなげるとよいです。最後に、あなたの貢献を**「RGB画像ベースのトマト品質推定の実装可能性」と「学生主導PBLとしての教育価値」**に限定して書くのが安全です。 citeturn19search13turn4search0turn23search0turn1search6turn20search12turn14search4turn15search18

## 主張してはいけないことと、安全なドラフト文

### 現時点で論文中に書かない方がよい主張

現在の条件では、次の主張は避けるべきです。  
**環境センサデータを画像と融合して性能を上げた。**  
**IoTセンサを実験入力として使った。**  
**クラウドAI と環境データにより品質推定精度が改善した。**  
**ロボット収穫やロボット操作を統合済みである。**  
**画像モデルが現場全条件で頑健に一般化すると実証した。**  
**Brix と酸度を高精度に推定できることを十分に示した。**  
**Explainable AI により農家の信頼性向上を実証した。**  
**スマート農業システム全体の経済性・省力化を検証した。**  
これらは、いずれも現時点の**実験入力・評価設計・システム完成度を超える**可能性が高いからです。特に、最近の smart greenhouse / IoT 論文は環境センサや制御を前提にしており、あなたの論文ではそれらを**背景または将来課題**として明確に切り分ける必要があります。 citeturn6search0turn6search4turn6search11turn17search17

### 将来課題として書くための安全な段落案

以下は、そのまま論文草稿に近い形で使える文です。

> 本研究の現在の実験範囲は、RGB画像に基づくトマト品質解析に限定されており、主に成熟度や外観特徴と、Brix・酸度に関連する品質指標の画像ベース推定可能性を検討した。環境センサデータ、IoT計測値、あるいはロボット機構は本研究の実験入力には含まれていない。したがって、環境情報とのマルチモーダル融合や、収穫支援ロボットとの統合は、本研究で実証した結果ではなく、今後の発展課題である。今後は、RGB画像ベース手法の限界を踏まえつつ、必要に応じてVis-NIR/HSIや環境情報を追加し、より高精度かつ解釈可能な非破壊品質推定へ拡張することが期待される。  
>  citeturn1search6turn19search13turn6search2turn6search4turn19search6

### 日本語で短くまとめるときの要約文

日本語でさらに短く書くなら、次のように整理できます。

> 本研究は、学生が実装可能な範囲に研究対象を限定し、RGB画像を用いたトマト品質推定を中心に検討した。環境センサ情報やロボット要素はシステム構想上の重要な要素ではあるが、本稿では実験入力としては扱っておらず、関連研究および将来課題として位置づける。これにより、研究スコープを明確化しつつ、低コスト画像ベース推定の学術的・教育的意義を議論する。  
>  citeturn4search0turn23search0turn1search6turn14search4turn15search18