#!/bin/bash

echo "Configuring fish prompt for new style ..."

DIRECTORY=$HOME/.config/fish/functions
FISH=$(which fish)
FILE_PROMPT=$HOME/.config/fish/functions/fish_prompt.fish
FILE_PROMPT_BKP=$HOME/.config/fish/functions/fish_prompt.bkp.copy


if [ "$FISH" = "/usr/bin/fish" ]; then
    (
        if [ -d "$DIRECTORY" ]; then
            if [ -f "$FILE_PROMPT" ]; then
                (
                    echo "Found $FILE_PROMPT moving file to $FILE_PROMPT_BKP"
                    mv "$FILE_PROMPT" "$FILE_PROMPT_BKP"
                    curl "https://github.com/marcospsviana/my-fish-prompt/blob/main/fish_prompt.fish"
                    cp fish_prompt.fish "$DIRECTORY"
                    rm fish_prompt.fish
                )
            else
                cp fish_prompt.fish "$DIRECTORY"
            fi
        else
            mkdir "$DIRECTORY"
            cp fish_prompt.fish "$DIRECTORY"
        fi
        echo "Fish prompt is configured successfull!!! :) "
    )
else
    echo "fish is not installed, sorry, but to proceeed with scrpit fish is needed!! :'("
    
fi
