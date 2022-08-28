''
  set last_status $status

  echo

  set_color '#44aa88'
  printf '%s' (prompt_pwd)
  set_color '#666'

  echo (__fish_git_prompt '|%s')

  set_color '#bb4'
  echo -n (date '+%H∙%M∙%S')

  set_color -o brown
  echo -n ' » '

  set_color normal
''
