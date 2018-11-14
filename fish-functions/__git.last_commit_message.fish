function __git.last_commit_message -d "Output git's last commit message"
  git log -1 --pretty=%B
end
