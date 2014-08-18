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

Use the developer.xml manifest to clone the repos from git@github.com instead of git://github.com:

    mkdir xbsv-work
    cd xbsv-work
    curl https://storage.googleapis.com/git-repo-downloads/repo > ./repo
    chmod agu+rx ./repo
    ./repo init -u git://github.com/cambridgehackers/xbsv-manifests.git -m developer.xml
    ./repo sync


Git push
========

To push from xbsv:

    cd xbsv-work/xbsv
    git push
