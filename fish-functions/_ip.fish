function :ip --description 'Display ip info'
  set wan (curl -s http://ipecho.net/plain)
  set lan (ipconfig getifaddr en0)
  set domain (cat /etc/resolv.conf | grep domain | awk '{print $2}')
  set gateway (netstat -rn | grep default | awk '{print $2}')

  printf '%sLAN IP: %s%s%s\n' (set_color red) (set_color cyan) $lan (set_color normal)
  printf '%sWAN IP: %s%s%s\n' (set_color red) (set_color green) $wan (set_color normal)
  printf '%sDOMAIN : %s%s%s\n' (set_color red) (set_color green) $domain (set_color normal)
  printf '%sGATEWAY : %s%s%s\n' (set_color red) (set_color green) $gateway (set_color normal)
end
