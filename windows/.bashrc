export AA_HOME=/c/Users/*******
. $AA_HOME/.id

export INIT_FOLDER=$AA_HOME/dev/init
test -f $INIT_FOLDER/url.sh && . $_
test -f $INIT_FOLDER/git-proxy.sh && . $_
test -f $INIT_FOLDER/git-aliases.sh && . $_

alias ll='ls -la'

export MAVEN_OPTS='-Djavax.net.ssl.trustStore=/c/Windows/win.ini -Djavax.net.ssl.trustStoreType=Windows-ROOT'
export DEV=$AA_HOME/dev
export SOURCES=$DEV/sources
