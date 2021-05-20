# get current branch in git repo
function parse_git_branch() {
	BRANCH=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`
	if [ ! "${BRANCH}" == "" ]
	then
		echo "[${BRANCH}]"
	else
		echo ""
	fi
}

export PS1="\[\e[32;40m\][\[\e[m\]\[\e[32m\]\A\[\e[m\]\[\e[32m\]]\[\e[m\]\[\e[36m\]\`parse_git_branch\`\[\e[m\] \[\e[35;40m\]\W\[\e[m\]\[\e[35m\]/\[\e[m\]  "