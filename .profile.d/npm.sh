# NPM Environment
NPM_GLOBAL="$HOME/npm"

if [ -d "$NPM_GLOBAL" ] ; then
    export PATH="$NPM_GLOBAL/bin:$PATH"
    export NODE_PATH="$NPM_GLOBAL/lib/node_modules:$NODE_PATH"
fi
