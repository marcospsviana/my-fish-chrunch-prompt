function fish_prompt
    set -l prompt_symbol ' ➭ '
    set -g __fish_git_prompt_show_informative_status auto

    echo -s (set_color white)"{" (set_color FFBB00) (date "+%H:%M") \
    (set_color white)"}" (set_color blue) (prompt_pwd) (fish_git_prompt) $prompt_symbol (set_color normal)
end
