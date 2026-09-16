#!/usr/bin/env bash

# GPL-3.0-or-later

# Adjust the terminal environment to indicate we're running in a generic virtual machine.

# Controlling the prompt: https://www.gnu.org/software/bash/manual/bash.html#Controlling-the-Prompt-1
# Shell variables: https://www.gnu.org/software/bash/manual/bash.html#Shell-Variables

# shellcheck disable=SC2034

# Colors and color printing code taken directly from:
# https://github.com/carlospolop/PEASS-ng/blob/master/linPEAS/builder/linpeas_parts/linpeas_base.sh
C=$(printf '\033')
RED="${C}[1;31m"
GREEN="${C}[1;32m"
YELLOW="${C}[1;33m"
RED_YELLOW="${C}[1;31;103m"
BLUE="${C}[1;34m"
ITALIC_BLUE="${C}[1;34m${C}[3m"
LIGHT_MAGENTA="${C}[1;95m"
LIGHT_CYAN="${C}[1;96m"
LG="${C}[1;37m" #LightGray
DG="${C}[1;90m" #DarkGray
NC="${C}[0m"
UNDERLINED="${C}[5m"
ITALIC="${C}[3m"

# Shell variables
export PROMPT_DIRTRIM=2

VM_ICON=$(printf '\u232C ')  # Benzene Ring unicode character.

# Prompt string
PS1="${DG}\u[${YELLOW}vm${DG}]\h \w: ${YELLOW}${VM_ICON}${NC} "
