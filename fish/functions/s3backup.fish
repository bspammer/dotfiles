function s3backup --description 'Backs up files to S3 deep archive'
    AWS_SHARED_CREDENTIALS_FILE=~/.aws/s3backup_credentials python3 ~/.config/fish/functions/scripts/s3backup.py $argv
end
