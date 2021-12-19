function _update {
  docker system prune -f --volumes
  brew update
  brew outdated
  brew upgrade
  brew cleanup
}
