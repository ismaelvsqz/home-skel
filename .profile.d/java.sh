export JDK8="/usr/lib/jvm/java-8-openjdk-amd64"
export JDK11="/usr/lib/jvm/java-11-openjdk-amd64"

pathAddDirectory() {
  if test ! -z "$1"
  then
    P="$PATH"
    for var in "$@"
    do
      P="$var:$P"
    done
    export PATH="$P"
  fi
}

pathRemoveDirectory() {
  if test ! -z "$1"
  then
    P="$PATH"
    for var in "$@"
    do
      P=$(echo "$P" | sed -e "s|$var:||g")
    done
    export PATH="$P"
  fi
}

pathUseJDK() {
  if test ! -z "$1"
  then
   if test "$1" = "$JDK8"
   then
      pathRemoveDirectory "$JDK8/bin" "$JDK11/bin"
      pathAddDirectory "$JDK8/bin"
    elif test "$1" = "$JDK11"
    then
      pathRemoveDirectory "$JDK8/bin" "$JDK11/bin"
      pathAddDirectory "$JDK11/bin"
    fi
  fi
}

alias use-jdk8='export JAVA_HOME="$JDK8" && pathUseJDK "$JDK8"'
alias use-jdk11='export JAVA_HOME="$JDK11" && pathUseJDK "$JDK11"'
