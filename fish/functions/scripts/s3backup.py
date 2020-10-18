from boto3 import client
from sys import argv, exit
from os import stat

# Credentials provided via shared credentials file env variable
s3 = client('s3')
paths = argv[1:]
transferred = 0

def upload_callback(filename, total_size):
    global transferred
    transferred = 0
    def callback(new_bytes):
        global transferred
        transferred += new_bytes
        print(f"\r{filename}: Uploaded {transferred/(1024**3):.3f} / {total_size/(1024**3):.3f} GiB ({100*transferred/total_size:.2f}%)", end='')
    return callback

total_size = sum(stat(path).st_size for path in paths) / (1024 ** 3)
response = input(f'Upload {len(paths)} file{"" if len(paths) == 1 else "s"} with total size {total_size:.3f} GiB? ')
if response != 'yes':
    print("Not uploading")
    exit(0)

bucket_path = "x"
while not bucket_path[-1] == "/":
    bucket_path = input("Enter bucket path ending in '/': ")

for path in paths:
    s3.upload_file(path, 'charlie-collard-backups', bucket_path + path, Callback=upload_callback(path, stat(path).st_size), ExtraArgs={'StorageClass': 'DEEP_ARCHIVE'})
    print('')
