set -e

if which brew; then
  echo "Homebrew installed OK"
else
  echo "Need to install Homebrew"
  # /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

if hugo version; then
  echo "Hugo already installed OK"
  echo "Attempting Upgrade"
  if brew upgrade hugo; then
    echo "Hugo upgraded"
  else
    echo "Nothing to upgrade"
  fi
else
  echo "Need to install Hugo"
  brew install hugo
fi

cd -- "$(dirname "$BASH_SOURCE")"
/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome http://localhost:1313/ &
hugo serve --config config.toml
