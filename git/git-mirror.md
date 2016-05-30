# Mirroring Git servers

Core server: [https://git.cb-geo.com](https://git.cb-geo.com)
Mirror servers: [GitLab](https://gitlab.com/groups/cbgeo) & [GitHub](https://github.com/cb-geo)

Git repositories are stored and mirrored from `ci.cb-geo.com`. User: <refer to internal doc>. Location: `~/git-repos/`

# Make a bare mirrored clone of the repository
	git clone --mirror git@git.cb-geo.com:lem/lem.git

	cd lem.git

# Set the push location to gitlab.com mirror site (user: cb-geo)
     	git remote set-url --push origin git@gitlab.com:cbgeo/lem.git
    
# Set the push location to github.com mirror site (user: cb-geo)
Edit config file in the repo and add github’s repo url as an additional push url.
The file should look like

	[core]
		repositoryformatversion = 0
		filemode = true
		bare = true
	[remote "origin"]
		url = git@git.cb-geo.com:lem/lem.git
		fetch = +refs/*:refs/*
		mirror = true
		pushurl = git@gitlab.com:cbgeo/lem.git
		pushurl = git@github.com:cb-geo/lem.git


Add this to a cronjob to `<user>` in `ci.cb-geo.com`.
	git fetch -p origin
   	git push --mirror
    
The cronjob will look like this:

	0 * * * * /usr/bin/sh ~/git-repos/mirror.sh

Snippet from `mirror.sh`
	#! /bin/bash
	# Script to mirror git.cb-geo repos to github and gitlab

	# lem repo
	cd ~/git-repos/lem.git
	git fetch -p origin
	git push --mirror

	# felib repo
	cd ~/git-repos/felib.git
	git fetch -p origin
	git push --mirror

Check cron job status `tail /var/spool/mail/geomechanics`


Reference
[1] https://help.github.com/articles/duplicating-a-repository/

