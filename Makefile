

WORK_DIR=work
THREADS=4

updatemanifest: default.xml
	sed 's|git://github.com/cambridgehackers/|git@github.com:cambridgehackers/|' < default.xml > developer.xml

init: $(WORK_DIR)/repo $(WORK_DIR)/.repo/manifest.xml
	echo 'run make sync to update the repo'

sync:
	cd $(WORK_DIR); ./repo sync -j$(THREADS)

$(WORK_DIR)/repo:
	mkdir -p $(WORK_DIR)
	curl https://storage.googleapis.com/git-repo-downloads/repo > $(WORK_DIR)/repo
	chmod agu+rx $(WORK_DIR)/repo

$(WORK_DIR)/.repo/manifest.xml:
	cd $(WORK_DIR); ./repo init -u git://github.com/cambridgehackers/xbsv-manifests.git
