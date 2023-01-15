#
# DESCRIPTION: function fish for change style prompt fish                   
#                                                                           
# AUTHOR: marcospaulo.silvaviana@gmail.com                                  
# LICENSE: MIT                                                              
# Obs.: This style is inspired by the oh-my-zsh chrunc theme link below     
# https://github.com/mkitby/oh-my-zsh/blob/master/themes/crunch.zsh-theme   
#

function fish_prompt
    set -l prompt_symbol ' ➭ '
    set -g __fish_git_prompt_show_informative_status auto

    echo -s (set_color white)"{" (set_color FFBB00) (date "+%H:%M") \
    (set_color white)"}" (set_color blue) (prompt_pwd) (fish_git_prompt) $prompt_symbol (set_color normal)
end
