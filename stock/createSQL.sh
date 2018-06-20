#use enca or iconv to convert gbk to utf8
#enca -L zh_CN -x utf-8 history.txt 
#iconv -f GBK -t UTF-8 h.txt -o h_utf8.txt

awk '{print "replace into t_trans_history (StockName,Date,Time,Des,Price,Num,Amount,TransID,StockID,CiID,StockholderID ) values (\""$1 "\",\""$2 "\",\""$3"\",\""$4"\",\""$5"\",\""$6"\",\""$7"\",\""$8"\",\""$10"\",\""$9"\",\""$11"\");" }' h_utf8.txt > h.sql
