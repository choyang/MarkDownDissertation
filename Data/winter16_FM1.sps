*Demographics*

SORT CASES  BY nation.
SPLIT FILE SEPARATE BY nation.

FREQUENCIES VARIABLES=parents grandp gender
  /ORDER=ANALYSIS.

DESCRIPTIVES VARIABLES=age out_ea
  /STATISTICS=MEAN STDDEV MIN MAX.

SPLIT FILE OFF.


*******************Perception of Dialectical Emotions**********************************
*Summary variables averaging across models
*efh_ove efa_ove emh_ove ema_ove afh_ove afa_ove amh_ove ama_ove

COUNT
  em1h_ove = em1h_d em1h_f em1h_c em1h_sd em1h_a (1 thru 8)  .
VARIABLE LABELS em1h_ove 'number of opposite-valenced emotions in White male #1'+
 ' happy face' .
EXECUTE .
COUNT
  em2h_ove = em2h_d em2h_f em2h_c em2h_sd em2h_a (1 thru 8)  .
VARIABLE LABELS em2h_ove 'number of opposite-valenced emotions in White male #2'+
 ' happy face' .
EXECUTE .
COUNT
  am1h_ove = am1h_d am1h_f am1h_c am1h_sd am1h_a (1 thru 8)  .
VARIABLE LABELS am1h_ove 'number of opposite-valenced emotions in Asian male #1'+
 ' happy face' .
EXECUTE .
COUNT
  am2h_ove = am2h_d am2h_f am2h_c am2h_sd am2h_a (1 thru 8)  .
VARIABLE LABELS am2h_ove 'number of opposite-valenced emotions in Asian male #2'+
 ' happy face' .
EXECUTE .
COUNT
  em1a_ove = em1a_h em1a_su em1a_am em1a_co em1a_p  (1 thru 8)  .
VARIABLE LABELS em1a_ove 'number of opposite-valenced emotions in White male #1'+
 ' angry face' .
EXECUTE .
COUNT
  em2a_ove = em2a_h em2a_su em2a_am em2a_co em2a_p  (1 thru 8)  .
VARIABLE LABELS em2a_ove 'number of opposite-valenced emotions in White male #2'+
 ' angry face' .
EXECUTE .
COUNT
  am1a_ove = am1a_h am1a_su am1a_am am1a_co am1a_p  (1 thru 8)  .
VARIABLE LABELS am1a_ove 'number of opposite-valenced emotions in Asian male #1'+
 ' angry face' .
EXECUTE .
COUNT
  am2a_ove = am2a_h am2a_su am2a_am am2a_co am2a_p  (1 thru 8)  .
VARIABLE LABELS am2a_ove 'number of opposite-valenced emotions in Asian male #2'+
 ' angry face' .
EXECUTE .
COUNT
  ef1h_ove = ef1h_d ef1h_f ef1h_c ef1h_sd ef1h_a (1 thru 8)  .
VARIABLE LABELS ef1h_ove 'number of opposite-valenced emotions in White female #1'+
 ' happy face' .
EXECUTE .
COUNT
  ef2h_ove = ef2h_d ef2h_f ef2h_c ef2h_sd ef2h_a (1 thru 8)  .
VARIABLE LABELS ef2h_ove 'number of opposite-valenced emotions in White female #2'+
 ' happy face' .
EXECUTE .
COUNT
  af1h_ove = af1h_d af1h_f af1h_c af1h_sd af1h_a (1 thru 8)  .
VARIABLE LABELS af1h_ove 'number of opposite-valenced emotions in Asian female #1'+
 ' happy face' .
EXECUTE .
COUNT
  af2h_ove = af2h_d af2h_f af2h_c af2h_sd af2h_a (1 thru 8)  .
VARIABLE LABELS af2h_ove 'number of opposite-valenced emotions in Asian female #2'+
 ' happy face' .
EXECUTE .
COUNT
  ef1a_ove = ef1a_h ef1a_su ef1a_am ef1a_co ef1a_p  (1 thru 8)  .
VARIABLE LABELS ef1a_ove 'number of opposite-valenced emotions in White female #1'+
 ' angry face' .
EXECUTE .
COUNT
  ef2a_ove = ef2a_h ef2a_su ef2a_am ef2a_co ef2a_p  (1 thru 8)  .
VARIABLE LABELS ef2a_ove 'number of opposite-valenced emotions in White female #2'+
 ' angry face' .
EXECUTE .
COUNT
  af1a_ove = af1a_h af1a_su af1a_am af1a_co af1a_p  (1 thru 8)  .
VARIABLE LABELS af1a_ove 'number of opposite-valenced emotions in Asian female #1'+
 ' angry face' .
EXECUTE .
COUNT
  af2a_ove = af2a_h af2a_su af2a_am af2a_co af2a_p  (1 thru 8)  .
VARIABLE LABELS af2a_ove 'number of opposite-valenced emotions in Asian female #2'+
 ' angry face' .
EXECUTE .

FREQUENCIES VARIABLES=ef1h_ove ef2h_ove ef1a_ove ef2a_ove em1h_ove em2h_ove em1a_ove em2a_ove af1h_ove af2h_ove af1a_ove af2a_ove am1h_ove am2h_ove am1a_ove
 am2a_ove
  /ORDER=ANALYSIS.

*range of values is 0-5*

COMPUTE emh_dialsum = SUM(em1h_ove, em2h_ove) .
VARIABLE LABELS emh_dialsum 'total no. of opposite-valenced emotions for White male happy faces' .
EXECUTE .
FREQUENCIES VARIABLES=emh_dialsum
  /ORDER=ANALYSIS.

COMPUTE amh_dialsum = sum(am1h_ove, am2h_ove) .
VARIABLE LABELS amh_dialsum 'total no. of opposite-valenced emotions for Asian male happy faces' .
EXECUTE .
FREQUENCIES VARIABLES=amh_dialsum
  /ORDER=ANALYSIS.

COMPUTE ema_dialsum = sum(em1a_ove, em2a_ove) .
VARIABLE LABELS ema_dialsum 'total no. of opposite-valenced emotions for White male angry faces' .
EXECUTE .
FREQUENCIES VARIABLES=ema_dialsum
  /ORDER=ANALYSIS.

COMPUTE ama_dialsum = sum(am1a_ove, am2a_ove) .
VARIABLE LABELS ama_dialsum 'total no. of opposite-valenced emotions for Asian male angry faces' .
EXECUTE .
FREQUENCIES VARIABLES=ama_dialsum
  /ORDER=ANALYSIS.

COMPUTE efh_dialsum = sum(ef1h_ove, ef2h_ove) .
VARIABLE LABELS efh_dialsum 'total no. of opposite-valenced emotions for White female happy faces' .
EXECUTE .
FREQUENCIES VARIABLES=efh_dialsum
  /ORDER=ANALYSIS.

COMPUTE afh_dialsum = sum(af1h_ove, af2h_ove) .
VARIABLE LABELS afh_dialsum 'total no. of opposite-valenced emotions for Asian female happy faces' .
EXECUTE .
FREQUENCIES VARIABLES=afh_dialsum
  /ORDER=ANALYSIS.

COMPUTE efa_dialsum = sum(ef1a_ove, ef2a_ove) .
VARIABLE LABELS efa_dialsum 'total no. of opposite-valenced emotions for White female angry faces' .
EXECUTE .
FREQUENCIES VARIABLES=efa_dialsum
  /ORDER=ANALYSIS.

COMPUTE afa_dialsum = sum(af1a_ove, af2a_ove) .
VARIABLE LABELS afa_dialsum 'total no. of opposite-valenced emotions for Asian female angry faces' .
EXECUTE .
FREQUENCIES VARIABLES=afa_dialsum
  /ORDER=ANALYSIS.

COMPUTE h_dialmean = MEAN(efh_dialsum, emh_dialsum, afh_dialsum, amh_dialsum).
VARIABLE LABELS h_dialmean 'mean number of opposite-valenced emotions for happy faces'.
EXECUTE.
COMPUTE a_dialmean = MEAN(efa_dialsum, ema_dialsum, afa_dialsum, ama_dialsum).
VARIABLE LABELS a_dialmean 'mean number of opposite-valenced emotions for angry faces'.
EXECUTE.
FREQUENCIES VARIABLES=h_dialmean a_dialmean
  /ORDER=ANALYSIS.

T-TEST GROUPS=nation(1 2)
  /MISSING=ANALYSIS
  /VARIABLES=h_dialmean
  /CRITERIA=CI(.95).

T-TEST GROUPS=nation(1 2)
  /MISSING=ANALYSIS
  /VARIABLES=a_dialmean
  /CRITERIA=CI(.95).
