# Terminal log for Rebase Tutorial

❯ git clone git@github.com:playing-withGit/great-project.git
Cloning into 'great-project'...
Warning: Permanently added the RSA host key for IP address '140.82.118.3' to the list of known hosts.
remote: Enumerating objects: 3, done.
remote: Counting objects: 100% (3/3), done.
remote: Total 3 (delta 0), reused 0 (delta 0), pack-reused 0
Receiving objects: 100% (3/3), done.

/Volumes/Hitachi/Repos
❯ great-project

/Volumes/Hitachi/Repos/great-project master
❯ echo "Edit 1 from upstream/master" > file1.txt

/Volumes/Hitachi/Repos/great-project master*
❯ git add file1.txt

/Volumes/Hitachi/Repos/great-project master*
❯ git commit -m "Commit 1 from upstream/master"
[master 6ae2299] Commit 1 from upstream/master
 1 file changed, 1 insertion(+)
 create mode 100644 file1.txt

/Volumes/Hitachi/Repos/great-project master ⇡
❯ git push
Counting objects: 3, done.
Delta compression using up to 2 threads.
Compressing objects: 100% (2/2), done.
Writing objects: 100% (3/3), 318 bytes | 318.00 KiB/s, done.
Total 3 (delta 0), reused 0 (delta 0)
To github.com:playing-withGit/great-project.git
   916f6d5..6ae2299  master -> master

/Volumes/Hitachi/Repos/great-project master 7s
❯ ..

/Volumes/Hitachi/Repos
❯ git clone git@github.com:Searge/great-project.git great-project-fork
Cloning into 'great-project-fork'...
Warning: Permanently added the RSA host key for IP address '140.82.118.4' to the list of known hosts.
remote: Enumerating objects: 6, done.
remote: Counting objects: 100% (6/6), done.
remote: Compressing objects: 100% (3/3), done.
remote: Total 6 (delta 0), reused 3 (delta 0), pack-reused 0
Receiving objects: 100% (6/6), done.

/Volumes/Hitachi/Repos
❯ great-project-fork

/Volumes/Hitachi/Repos/great-project-fork master
❯ git remote add upstream git@github.com:playing-withGit/great-project.git

/Volumes/Hitachi/Repos/great-project-fork master
❯ git remote -v
origin	git@github.com:Searge/great-project.git (fetch)
origin	git@github.com:Searge/great-project.git (push)
upstream	git@github.com:playing-withGit/great-project.git (fetch)
upstream	git@github.com:playing-withGit/great-project.git (push)

/Volumes/Hitachi/Repos/great-project-fork master
❯ git checkout -b featurebranch
Switched to a new branch 'featurebranch'

/Volumes/Hitachi/Repos/great-project-fork featurebranch
❯ echo "Edit 1 from fork/featurebranch" >> file1.txt

/Volumes/Hitachi/Repos/great-project-fork featurebranch*
❯ less file1.txt

/Volumes/Hitachi/Repos/great-project-fork featurebranch* 7s
❯ git add file1.txt

/Volumes/Hitachi/Repos/great-project-fork featurebranch*
❯ git commit -m "Commit 1 from fork/featurebranch"
[featurebranch 363a0c6] Commit 1 from fork/featurebranch
 1 file changed, 1 insertion(+)

/Volumes/Hitachi/Repos/great-project-fork featurebranch
❯ git log

/Volumes/Hitachi/Repos/great-project-fork featurebranch 13m 0s
❯ git push --all -u
Counting objects: 3, done.
Delta compression using up to 2 threads.
Compressing objects: 100% (3/3), done.
Writing objects: 100% (3/3), 340 bytes | 340.00 KiB/s, done.
Total 3 (delta 0), reused 0 (delta 0)
remote:
remote: Create a pull request for 'featurebranch' on GitHub by visiting:
remote:      https://github.com/Searge/great-project/pull/new/featurebranch
remote:
To github.com:Searge/great-project.git
 * [new branch]      featurebranch -> featurebranch
Branch 'master' set up to track remote branch 'master' from 'origin'.
Branch 'featurebranch' set up to track remote branch 'featurebranch' from 'origin'.

/Volumes/Hitachi/Repos/great-project-fork featurebranch
❯ ..

/Volumes/Hitachi/Repos
❯ great-project

/Volumes/Hitachi/Repos/great-project master
❯ echo "Edit 2 from upstream/master" >> file1.txt

/Volumes/Hitachi/Repos/great-project master*
❯ git add file1.txt

/Volumes/Hitachi/Repos/great-project master*
❯ git commit -m "Commit 2 from upstream/master"
[master f1315ba] Commit 2 from upstream/master
 1 file changed, 1 insertion(+)

/Volumes/Hitachi/Repos/great-project master ⇡
❯ git push
Counting objects: 3, done.
Delta compression using up to 2 threads.
Compressing objects: 100% (3/3), done.
Writing objects: 100% (3/3), 325 bytes | 325.00 KiB/s, done.
Total 3 (delta 0), reused 0 (delta 0)
To github.com:playing-withGit/great-project.git
   6ae2299..f1315ba  master -> master

/Volumes/Hitachi/Repos/great-project master
❯ ..

/Volumes/Hitachi/Repos
❯ great-project-fork

/Volumes/Hitachi/Repos/great-project-fork featurebranch
❯ git checkout master
Switched to branch 'master'
Your branch is up to date with 'origin/master'.

/Volumes/Hitachi/Repos/great-project-fork master
❯ git pull --rebase upstream master
remote: Enumerating objects: 5, done.
remote: Counting objects: 100% (5/5), done.
remote: Compressing objects: 100% (3/3), done.
remote: Total 3 (delta 0), reused 3 (delta 0), pack-reused 0
Unpacking objects: 100% (3/3), done.
From github.com:playing-withGit/great-project
 * branch            master     -> FETCH_HEAD
 * [new branch]      master     -> upstream/master
Updating 6ae2299..f1315ba
Fast-forward
 file1.txt | 1 +
 1 file changed, 1 insertion(+)
Current branch master is up to date.

/Volumes/Hitachi/Repos/great-project-fork master ⇡
❯ git log

/Volumes/Hitachi/Repos/great-project-fork master ⇡ 40s
❯ git checkout featurebranch
Switched to branch 'featurebranch'
Your branch is up to date with 'origin/featurebranch'.

/Volumes/Hitachi/Repos/great-project-fork featurebranch
❯ git rebase master
First, rewinding head to replay your work on top of it...
Applying: Commit 1 from fork/featurebranch
Using index info to reconstruct a base tree...
M	file1.txt
Falling back to patching base and 3-way merge...
Auto-merging file1.txt
CONFLICT (content): Merge conflict in file1.txt
error: Failed to merge in the changes.
Patch failed at 0001 Commit 1 from fork/featurebranch
Use 'git am --show-current-patch' to see the failed patch

Resolve all conflicts manually, mark them as resolved with
"git add/rm <conflicted_files>", then run "git rebase --continue".
You can instead skip this commit: run "git rebase --skip".
To abort and get back to the state before "git rebase", run "git rebase --abort".


/Volumes/Hitachi/Repos/great-project-fork featurebranch|rebase*
❯ mate file1.txt

/Volumes/Hitachi/Repos/great-project-fork featurebranch|rebase*
❯ git add file1.txt

/Volumes/Hitachi/Repos/great-project-fork featurebranch|rebase*

/Volumes/Hitachi/Repos/great-project-fork featurebranch ⇣⇡
❯ git log

/Volumes/Hitachi/Repos/great-project-fork featurebranch ⇣⇡ 28s
❯ git push --force
Counting objects: 6, done.
Delta compression using up to 2 threads.
Compressing objects: 100% (6/6), done.
Writing objects: 100% (6/6), 646 bytes | 646.00 KiB/s, done.
Total 6 (delta 0), reused 0 (delta 0)
To github.com:Searge/great-project.git
 + 363a0c6...c455a92 featurebranch -> featurebranch (forced update)

/Volumes/Hitachi/Repos/great-project-fork featurebranch
❯ git pull --rebase upstream master
remote: Enumerating objects: 1, done.
remote: Counting objects: 100% (1/1), done.
remote: Total 1 (delta 0), reused 0 (delta 0), pack-reused 0
Unpacking objects: 100% (1/1), done.
From github.com:playing-withGit/great-project
 * branch            master     -> FETCH_HEAD
   f1315ba..46b2e3f  master     -> upstream/master
Updating c455a92..46b2e3f
Fast-forward
Current branch featurebranch is up to date.

/Volumes/Hitachi/Repos/great-project-fork featurebranch ⇡
❯ git push
Counting objects: 1, done.
Writing objects: 100% (1/1), 643 bytes | 643.00 KiB/s, done.
Total 1 (delta 0), reused 0 (delta 0)
To github.com:Searge/great-project.git
   c455a92..46b2e3f  featurebranch -> featurebranch

/Volumes/Hitachi/Repos/great-project-fork featurebranch 6s
❯ git status
On branch featurebranch
Your branch is up to date with 'origin/featurebranch'.

nothing to commit, working tree clean

/Volumes/Hitachi/Repos/great-project-fork featurebranch
❯ echo "# Termonal log for Rebase Tutorial" > log.sh

/Volumes/Hitachi/Repos/great-project-fork featurebranch*
❯ mate log.sh

/Volumes/Hitachi/Repos/great-project-fork featurebranch*
❯ git add log.sh

/Volumes/Hitachi/Repos/great-project-fork featurebranch*
❯ git commit -m "Terminal log for Rebase Tutorial"
[featurebranch 2131836] Terminal log for Rebase Tutorial
 1 file changed, 230 insertions(+)
 create mode 100644 log.sh

/Volumes/Hitachi/Repos/great-project-fork featurebranch ⇡
❯ git push --all -u
Counting objects: 3, done.
Delta compression using up to 2 threads.
Compressing objects: 100% (3/3), done.
Writing objects: 100% (3/3), 1.99 KiB | 1.99 MiB/s, done.
Total 3 (delta 0), reused 0 (delta 0)
To github.com:Searge/great-project.git
   46b2e3f..2131836  featurebranch -> featurebranch
   6ae2299..f1315ba  master -> master
Branch 'featurebranch' set up to track remote branch 'featurebranch' from 'origin'.
Branch 'master' set up to track remote branch 'master' from 'origin'.

/Volumes/Hitachi/Repos/great-project-fork featurebranch
❯ git status
On branch featurebranch
Your branch is up to date with 'origin/featurebranch'.

nothing to commit, working tree clean

/Volumes/Hitachi/Repos/great-project-fork featurebranch
❯ git checkout master
Switched to branch 'master'
Your branch is up to date with 'origin/master'.

/Volumes/Hitachi/Repos/great-project-fork master
❯ git status
On branch master
Your branch is up to date with 'origin/master'.

nothing to commit, working tree clean

/Volumes/Hitachi/Repos/great-project-fork master
❯ git add log.sh
fatal: pathspec 'log.sh' did not match any files

/Volumes/Hitachi/Repos/great-project-fork master
❯ ls
README.md file1.txt

/Volumes/Hitachi/Repos/great-project-fork master
❯ echo "# Termonal log for Rebase Tutorial" > log.sh