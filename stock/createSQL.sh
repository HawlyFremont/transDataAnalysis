#use enca or iconv to convert gbk to utf8
#enca -L zh_CN -x utf-8 history.txt 
#iconv -f GBK -t UTF-8 h.txt -o h_utf8.txt
#awk '{print $1,$2,$3,$4,$5,$6,$7,$(NF-1)}' h_utf8.txt  > a.txt

awk '{print "insert into t_trans_history (StockName,Date,Time,Des,Price,Num,Amount,StockID) values (\""$1 "\",\""$2 "\",\""$3"\",\""$4"\",\""$5"\",\""$6"\",\""$7"\",\""$8"\");" }' a.txt > h.sql
