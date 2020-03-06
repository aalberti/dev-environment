source '/c/Program Files/Git/mingw64/share/git/completion/git-completion.bash'

__git_complete g __git_main

alias go='git checkout '
__git_complete go _git_checkout

alias gs='git status '
__git_complete gs _git_status

alias gad='git add '
__git_complete gad _git_add

alias gb='git branch '
__git_complete gb _git_branch

alias gco='git commit '
__git_complete gco _git_commit

alias gcam='git commit --amend '
__git_complete gcam _git_commit

alias gd='git diff -w '
__git_complete gd _git_diff

alias greb='git rebase '
__git_complete greb _git_rebase

alias gstash='git stash --include-untracked '
__git_complete gstash _git_stash

alias gpop='git stash pop '
__git_complete gpop _git_stash pop

alias gmt='git mergetool '
__git_complete gmt _git_mergetool

alias gcp='git cherry-pick '
__git_complete gcp _git_cherry_pick

alias graz='git clean -fd && git reset --hard '
__git_complete graz _git_reset

alias get='git fetch --all --tag '
__git_complete get _git_fetch

alias gp='git push '
__git_complete gp _git_push

alias glo="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold green)(%ar)%C(reset) %C(white)%s%C(reset) %C(dim white)- %an%C(reset)%C(bold yellow)%d%C(reset)' --all"
__git_complete glo __git_log

gup() {
	if [ -z `git for-each-ref --format='%(upstream:short)' $(git symbolic-ref -q HEAD)` ]; then 
		get
		branch=${1:-master}
		greb origin/$branch
	else
		git pull --rebase
	fi
}
__git_complete gup _git_rebase

git-branch-report() {
	echo "merged branches:"
	for branch in `git branch -r --merged | grep -v HEAD`; do echo -e `git show --format="%ci %cr %an" $branch | head -n 1` \\t$branch; done | sort -r
	echo "unmerged branches:"
	for branch in `git branch -r --no-merged | grep -v HEAD`; do echo -e `git show --format="%ci %cr %an" $branch | head -n 1` \\t$branch; done | sort -r
}

alias gradle='if [ -x ./gradlew ]; then GRADLE_BIN=./gradlew; else GRADLE_BIN=\gradle; fi; $GRADLE_BIN'
