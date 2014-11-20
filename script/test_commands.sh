~/Downloads/s3cmd-master/s3cmd ls s3://logs-stockflare.com/cloudfront/EQXPEAUSXME2J.2014-10-05* | awk -F' ' '{if(NF>1){print $NF} else {print $NF}}' | xargs -L1 ~/Downloads/s3cmd-master/s3cmd get

~/Downloads/s3cmd-master/s3cmd ls s3://logs-stockflare.com/cloudfront/*2014-10-07* | awk -F' ' '{if(NF>1){print $NF} else {print $NF}}' | xargs -L1 ~/Downloads/s3cmd-master/s3cmd get

~/Downloads/s3cmd-master/s3cmd ls s3://logs-stockflare.com/cloudfront/ | grep .2014-10-07. | awk -F' ' '{if(NF>1){print $NF} else {print $NF}}' | xargs -L1 ~/Downloads/s3cmd-master/s3cmd get

~/Downloads/s3cmd-master/s3cmd ls s3://logs-stockflare.com/s3/ | grep 2014-10-07 | awk -F' ' '{if(NF>1){print $NF} else {print $NF}}' | xargs -L1 ~/Downloads/s3cmd-master/s3cmd get


~/Downloads/s3cmd-master/s3cmd ls s3://logs-seo.stockflare.com/cloudfront/ | grep .2014-10-13. | awk -F' ' '{if(NF>1){print $NF} else {print $NF}}' | xargs -L1 ~/Downloads/s3cmd-master/s3cmd get

ls -lart *.gz | awk -F' ' '{if(NF>1){print $NF} else {print $NF}}' | xargs -L1 gunzip
