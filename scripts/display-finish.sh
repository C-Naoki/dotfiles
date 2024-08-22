#!/bin/bash

# set color and style
GREEN=$(printf '\033[32m')
BOLD=$(printf '\033[1m')
RESET=$(printf '\033[m')

art="
███████╗██╗███╗  ██╗██╗███████╗██╗  ██╗
██╔════╝██║████╗ ██║██║██╔════╝██║  ██║
█████╗  ██║██╔██╗██║██║███████╗███████║
██╔══╝  ██║██║╚████║██║╚════██║██╔══██║
██║     ██║██║ ╚███║██║███████║██║  ██║
╚═╝     ╚═╝╚═╝  ╚══╝╚═╝╚══════╝╚═╝  ╚═╝
"

echo "${BOLD}${GREEN}${art}${RESET}"
echo "${BOLD}${GREEN}🎉🎉🎉 Setup complete!! 🎉🎉🎉${RESET}"
echo "⚠️  Please restart your terminal."
