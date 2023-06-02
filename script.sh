#script.sh
mkdir jenkins_backup
cp -r s/var/lib/jenkins /jenkins_backup
tar -cvzf jenkins_backup.tar.gz jenkins_backup
aws s3 cp jenkins_backup-$(date +'%Y-%m-%d').tar.gz s3://bucket-name/