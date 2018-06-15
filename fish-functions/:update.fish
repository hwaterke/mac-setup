function :update --description 'Updates all the things'
  printf '%s------------------------------%s\n' (set_color cyan) (set_color normal)
  printf '%s  Updating all the things%s\n' (set_color cyan) (set_color normal)
  printf '%s------------------------------%s\n' (set_color cyan) (set_color normal)

  printf '%s  Cleaning docker%s\n' (set_color green) (set_color normal)
  docker system prune -f

  printf '%s  Updating homebrew%s\n' (set_color green) (set_color normal)
  brew update; and brew upgrade; and brew cleanup

  printf '%s  Updating global npm packages%s\n' (set_color green) (set_color normal)
  yarn global upgrade

  printf '%s  All done%s\n' (set_color green) (set_color normal)
end
