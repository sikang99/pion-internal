#
# Makefile for golang-example
#
.PHONY: usage edit build clean git
VERSION=0.0.0.2
#----------------------------------------------------------------------------------
usage:
	@echo "make [edit|build]"
#----------------------------------------------------------------------------------
edit e:
	@echo "make (edit:e) [history]"
edit-go eg:
	vi main.go
edit-history eh:
	vi HISTORY.md
#----------------------------------------------------------------------------------
build b:
#----------------------------------------------------------------------------------
clean:
	rm -f bin/*
	docker system prune
#----------------------------------------------------------------------------------
run r:
	@echo "make (run:r) []"
#----------------------------------------------------------------------------------
git g:
	@echo "make (git:g) [update|store]"
git-update gu:
	git add .
	git commit -a -m "$(VERSION),$(USER)"
	git push
git-store gs:
	git config credential.helper store
#----------------------------------------------------------------------------------

