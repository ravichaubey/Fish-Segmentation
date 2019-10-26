/* Z Score Standardization  */

proc standard data=datas.fish out=fish_standard mean=0 std=1;
var height length1 width weight;
run;

/* K-Mean */

proc fastclus data=work.fish_standard out=work.fish_cluster maxclusters=7 maxiter=100;
var height length1 width weight;
title "Cluster Analysis of Fish Species on &sysdate &sysday";
run;