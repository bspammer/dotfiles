function diary --description "Opens my diary with a given day offset"
    if set -q argv[1]
        set offset $argv[1]
    else
        set offset 0
    end
    if test $offset -ge 0
        set offset +$offset
    end
    vim (date -v "$offset"d +"$HOME/Dropbox/docs/diaries/%Y/%Y-%m-%d-%a.md")
end
