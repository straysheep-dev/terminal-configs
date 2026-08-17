#!/usr/bin/env bash

# GPL-3.0-or-later

# Adjust the terminal environment to indicate we're running in a generic virtual machine.

# Colors and color printing code taken directly from:
# https://github.com/carlospolop/PEASS-ng/blob/master/linPEAS/builder/linpeas_parts/linpeas_base.sh
C=$(printf '\033')
GRAY="${C}[1;90m"
YELLOW="${C}[1;33m"
RESET="${C}[0m"

VM_ICON=$(printf '\u232c ')

PS1="${GRAY}\u[${YELLOW}vm${GRAY}]\h \w: ${YELLOW}${VM_ICON}${RESET} "
