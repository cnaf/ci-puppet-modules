#!/bin/bash

set -xe

ARTIFACTS_DIR=${ARTIFACTS_DIR:-"$PWD/../puppet_artifacts"}

puppet="/opt/puppetlabs/bin/puppet"
dirs=`ls modules`

cd modules
for dir in $dirs; do
    cd ${dir}
    ${puppet} module build
    mv -v pkg/*.tar.gz ${ARTIFACTS_DIR}
    cd ..
done
