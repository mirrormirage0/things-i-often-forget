#Add the remote (original repo that you forked) and call it “upstream”
`git remote add upstream https://github.com/original-repo/goes-here.git`

#Fetch all branches
`git fetch upstream`

#Rewrite your local master with upstream’s master using git rebase.
`git rebase upstream/master`

#Push your changes to master
`git push origin master --force`



