function gpr -d "git pull request"
  set git_last_log (__git.last_commit_message)
  hub pull-request -m "$git_last_log"
end
