function diary --description "Opens my diary with a given day offset"
    if set -q argv[1]
        set offset $argv[1]
    else
        set offset 0
    end
    vim (python3 -c "import datetime; import os; print((datetime.datetime.now() + datetime.timedelta(days=$offset)).strftime(os.environ['HOME'] + '/Dropbox/docs/diaries/%Y/%Y-%m-%d-%a.txt'))")
end
