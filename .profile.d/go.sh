# Go Environment
GOPATH="$HOME/go"

if [ -d "$GOPATH" ] ; then
    export GOPATH
    export PATH="$GOPATH/bin:$PATH"

    alias gopath='cd "$GOPATH"'
fi

