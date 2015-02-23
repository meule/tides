aws s3 sync web s3://phangantide.info --recursive --region ap-southeast-1 --acl public-read
aws s3 sync web s3://samuitide.info --recursive --region ap-southeast-1 --acl public-read
aws s3 sync web s3://phukettide.info --recursive --region ap-southeast-1 --acl public-read

if [ $# -eq 1 ] 
	then
		git add .
		git commit -m $1
		git push -u origin master
fi