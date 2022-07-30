commit() {
    commitMessage="$1"
    currDate = date
    if [ "$commitMessage" = "" ]; then
        commitMessage="Progress from today"
    fi

    git add .
    eval "git commit -a -m '${commitMessage}'"
}

clone() {
    if [[ $1 =~ "hub|lab" ]]; then
        provider="$1"
        shift
    else
        provider="hub"
    fi

    eval "git clone git@git${provider}.com:$1.git $2"
}

archive () {
    zip -r "$1".zip -i "$1" ;
}

weather() {
    city="$1"

    if [ -z "$city" ]; then
        city="Alhaurin+el+grande"
    fi

    eval "curl http://wttr.in/${city}"
}

emptytrash() {
    sudo rm -rf /Volumes/*/.Trashes/*;
    sudo rm -rf ~/.Trash/*;
    sudo rm -rf /private/var/log/asl/*.asl;
    sqlite3 ~/Library/Preferences/com.apple.LaunchServices.QuarantineEventsV* 'delete from LSQuarantineEvent';
    echo 'Whirrrshhhhhhhcccchhh';
}