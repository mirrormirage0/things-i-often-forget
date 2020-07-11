#How to update a forked repo with git rebase

##add your master repo as upstream
`git remote add upstream https://github.com/original-repo/goes-here.git`

##fetch all branches of upstream
`git fetch upstream`

##rebase your forked repo with master's changes
`git rebase upstream/master`

##optional: if you have changes you want to push to master
`git push origin master --force`
