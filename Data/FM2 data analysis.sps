* Encoding: UTF-8.

DATASET ACTIVATE DataSet1.
COMPUTE Collectivism=MEAN(vq1, vq2, vq3, vq4, vq5).
COMPUTE Individualism=MEAN (vq6, vq7, vq8, vq9, vq10).
EXECUTE.
*does attribution mediate the cultural differences in dialectical emotion reports?**
*compute mediators*

*SINGELIS INDEPENDENT/INTERDEPENDENT*
*There were only 10 items although the full scale as 12 items?*
*neither scale is reliable by a long shot, even when looking at removing items*

RELIABILITY
  /VARIABLES=vq1 vq2 vq3 vq4 vq5
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE SCALE
  /SUMMARY=TOTAL MEANS VARIANCE.

RELIABILITY
  /VARIABLES=vq6 vq7 vq8 vq9 vq10
  /SCALE('ALL VARIABLES') ALL
  /MODEL=ALPHA
  /STATISTICS=DESCRIPTIVE SCALE
  /SUMMARY=TOTAL MEANS VARIANCE.

*compute DV*

COMPUTE dialectical = mean (emh_dialsum, efh_dialsum, amh_dialsum, afh_dialsum, ema_dialsum, efa_dialsum, ama_dialsum, afa_dialsum).
VARIABLE LABELS dialectical 'summary variable for dialectical emotions across extreme displays'.
EXECUTE.


