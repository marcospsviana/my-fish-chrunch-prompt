#!/bin/bash

DIRECTORY=$HOME/.config/fish/functions
FISH=$(which fish)
FILE_PROMPT=$HOME/.config/fish/functions/fish_prompt.fish
FILE_PROMPT_BKP=$HOME/.config/fish/functions/fish_prompt.bkp.copy
FISH_PROMPT=$(pwd)/fish_promp.fish


if [ "$FISH" = "/usr/bin/fish" ]; then
    (
        if [ -d "$DIRECTORY" ]; then
            (
            if [ -f "$FILE_PROMPT" ]; then
                (
                    mv "$FILE_PROMPT" "$FILE_PROMPT_BKP"
                    # cp $HOME/my-fish-prompt/fish_prompt.fish "$DIRECTORY"
                    echo "copyng  new fish prompt to $DIRECTORY"
                    cp $FISH_PROMPT "$DIRECTORY"
                    echo "style prompt is configured successfull!!!"
                )
            else
                (
                    cp fish_prompt.fish "$DIRECTORY"
                    echo "style prompt is configured successfull!!!"
                )
            fi
            )
        else
            (
                mkdir "$DIRECTORY"
                cp fish_prompt.fish "$DIRECTORY"
                echo "style prompt is configured successfull!!!"
            )
        fi
        
    )
else
    echo "the shell fish is not installed, sorry, but to proceeed with scrpit fish is needed!!"
    
fi
