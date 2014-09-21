# Sitemapper

A very simple project using the sitemap_generator to download a JSON file of stock names in the following format
```
{"rics":["ycyJBuSM","UQFYGgKc","okrjTHAD"]}
```
And generate the Stockflare sitemap file.

The JSON file is downloaded from a S3 bucket and the the resulting sitemap files are uploaded to another S3 bucket.

The docker container to run this script needs to be passed an environment file in the following format
```
AWS_ACCESS_KEY=XXXXXXXXXXX
AWS_SECRET_KEY=XXXXXXXXXX
STOCK_JSON_BUCKET=json-file-bucket-name
STOCK_JSON_FILE=stocks.json
SITE_ROOT_URL=http://www.example.com
COMPRESS_SITEMAP=true
PING_ENGINES=true
SITEMAP_DESTINATION_BUCKET=sitemap-destination-bucket
```

If you dont want the search engines pinged then dont pass the environment variable.

The same applies for compression

Passing false to those variables will not trun off the compression or pinging, you must not pass them at all.
