# SRTP
# This is a repository recording the discoveries and attempts in SRTP project.

Pipeline:
1.数据预处理：
对测序数据进行质量控制（Quality Control），包括去除低质量的 reads 和修剪 adapter 序列。
使用适当的软件（例如Trimmomatic）进行质量控制和修剪。
2.TCR 序列提取：
使用特定的工具（例如MiXCR、IMGT/HighV-QUEST）从质控后的测序数据中提取 TCR 序列。
对于每个样本，提取 alpha 链和 beta 链的 TCR 序列。
3.序列过滤和去重：
根据需要，过滤掉低频或不感兴趣的 TCR 序列。
对 TCR 序列进行去重，以消除重复的序列。
4.特征提取：
根据需要，从 TCR 序列中提取特征，如 CDR3 序列、V、D、J 基因段的注释等。
可以使用工具如MiXCR、TCRdist等进行特征提取和注释。
5.无监督学习：
使用无监督学习算法（例如聚类算法、降维算法）对 TCR 序列进行聚类或降维。
基于聚类或降维的结果，可以发现样本中的疾病特异的 TCR 序列或重要的 TCR 组成模式。
6.结果分析和解释：
对聚类或降维结果进行分析和解释，以识别疾病特异的 TCR 序列或与疾病相关的 TCR 特征。
可以进行富集分析、功能注释等来进一步理解这些特异的 TCR 序列的生物学意义。
