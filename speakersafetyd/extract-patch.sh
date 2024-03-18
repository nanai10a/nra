#!/bin/bash

tp() {
  echo "$(tput setaf 2)$(tput bold)==> $(tput setaf 7)$@$(tput sgr0)"
}

sp() {
  echo "  $(tput bold setaf 4)$(tput bold)-> $(tput setaf 7)$@$(tput sgr0)"
}

tp "Extracting patch..."
  dirname=/tmp/speakersafetyd-$(date +%s)
  destdir=$PWD
  patchname=align-debug.patch

  sp "\`dirname\`   ... $(tput sgr0)${dirname}"
  sp "\`destdir\`   ... $(tput sgr0)${destdir}"
  sp "\`patchname\` ... $(tput sgr0)${patchname}"

tp "Cloning repository..."
  git clone -b ${patchname%.*} --depth 2 https://github.com/ivabus/speakersafetyd.git ${dirname}

tp "Entering repository..."
  pushd ${dirname}
    sp "Write out patch..."
    git diff --output ${patchname} 8ff0db2e96a816101299c3dad26a275612fe6a33 HEAD

    sp "Move out patch..."
    mv ${patchname} $destdir

    sp "Exiting repository..."
  popd


tp "Cleaning up..."
  sp "remove repository..."
  rm -rf ${dirname}

tp "Extract completed (patch located at ./${patchname})"

# vim:set ts=8 sts=2 sw=2 et:
