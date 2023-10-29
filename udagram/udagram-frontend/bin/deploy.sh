aws s3 cp --recursive public-read ./www s3://final-udagram/
aws s3 cp public-read --cache-control="max-age=0, no-cache, no-store, must-revalidate" ./www/index.html s3://final-udagram/