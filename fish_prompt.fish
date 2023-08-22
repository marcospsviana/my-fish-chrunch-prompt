function fish_prompt
    set -l prompt_symbol ' ➭ '
    set -g __fish_git_prompt_show_informative_status auto

    echo -s (set_color white)"{"(set_color F79E56)(date "+%H:%M")\
    (set_color white)"}" (set_color 009966) (prompt_pwd) (set_color FF9900)(fish_git_prompt) (set_color white) $prompt_symbol (set_color normal)
end
