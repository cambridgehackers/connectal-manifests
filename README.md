xbsv-manifests
==============

Repo manifest for xbsv project

    mkdir xbsv-work
    cd xbsv-work
    curl https://storage.googleapis.com/git-repo-downloads/repo > ./repo
    chmod agu+rx ./repo
    ./repo init -u git://github.com/cambridgehackers/xbsv-manifests.git
    ./repo sync


XBSV developers
===============

    mkdir xbsv-work
    cd xbsv-work
    curl https://storage.googleapis.com/git-repo-downloads/repo > ./repo
    chmod agu+rx ./repo
    ./repo init -u git://github.com/cambridgehackers/xbsv-manifests.git -m developer.xml
    ./repo sync


How to make git push work
=========================

    cd xbsv-work
    ./repo forall -c 'export repodir=`/bin/pwd`; git remote add cambridgehackers git@github.com:cambridgehackers/`basename $repodir`.git'

To push from xbsv:

    cd xbsv-work/xbsv
    git push cambridgehackers
