function fish_prompt
  printf '[%s%s%s]$ ' (set_color green) (prompt_pwd --dir-length 0) (set_color normal)
  # printf '[%s%s%s]$ ' (set_color green) $PWD (set_color normal)
end
