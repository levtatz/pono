all: git aws

git:
	git push

aws:
	aws s3 sync . s3://www.sailpono.com --region us-east-2 --exclude ".git/*" --exclude "*DS_Store" --exclude "Makefile" --exclude "README.md"
