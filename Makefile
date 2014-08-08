

WORK_DIR=xbsv-work
THREADS=4

sync: $(WORK_DIR)/repo $(WORK_DIR)/.repo/manifest.xml
	cd $(WORK_DIR); ./repo sync -j$(THREADS)

$(WORK_DIR)/repo:
	mkdir -p $(WORK_DIR)
	curl https://storage.googleapis.com/git-repo-downloads/repo > $(WORK_DIR)/repo
	chmod agu+rx a $(WORK_DIR)/repo

$(WORK_DIR)/.repo/manifest.xml:
	cd $(WORK_DIR); ./repo init -u git://github.com/cambridgehackers/xbsv-manifests.git
