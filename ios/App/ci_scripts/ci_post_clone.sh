#!/bin/zsh

# fail if any command fails

echo "🧩 Stage: Post-clone is activated .... "

set -e
# debug log
set -x

echo "🚀 Install dependencies using Homebrew. This is MUST! Do not delete."
brew install node 
brew install n
brew install cocoapods 
brew install fastlane

# Install node and npm
NODE_PATH=$HOME/n_test PREFIX=$HOME/n_test N_PREFIX=$HOME/n_test n 18
ls $HOME/n_test/bin
NODE_PATH=$HOME/n_test PREFIX=$HOME/n_test N_PREFIX=$HOME/n_test $HOME/n_test/bin/npm install -g pnpm

# Install yarn and pods dependencies.
# If you're using Flutter or Swift 
# just install pods by "pod install" command 

N_PREFIX=$HOME/n_test n exec 18 $HOME/n_test/bin/pnpm i
N_PREFIX=$HOME/n_test n exec 18 $HOME/n_test/bin/pnpm build
N_PREFIX=$HOME/n_test n exec 18 $HOME/n_test/bin/pnpm sync:ios 
N_PREFIX=$HOME/n_test n exec 18 $HOME/n_test/bin/pnpm copy:ios

echo "🎯 Stage: Post-clone is done .... "

exit 0