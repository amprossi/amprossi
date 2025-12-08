#!/usr/bin/env bash

type_text() {
  local text="$1"
  local delay=${2:-0.02}
  local i
  for ((i=0; i<${#text}; i++)); do
    printf "%s" "${text:$i:1}"
    sleep "$delay"
  done
  printf "\n"
}

# ANSI codes
C_RESET=$'\e[0m'
C_BOLD=$'\e[1m'
C_WHITE=$'\e[1;37m'
C_GREEN=$'\e[1;32m'
C_CYAN=$'\e[1;36m'
C_BLUE=$'\e[1;34m'
C_MAGENTA=$'\e[1;35m'
C_RED=$'\e[1;31m'
C_GRAY=$'\e[0;37m'
C_YELLOW=$'\e[1;33m'

clear
printf "\n"

# -------- header line --------
print_prompt_header() {
  printf "${C_CYAN}amprossi${C_RESET} in ${C_YELLOW}amprossi${C_RESET} on ${C_MAGENTA} main${C_RESET} ${C_RED}[?]${C_RESET}\n"
}

print_prompt_header
printf "${C_GREEN}➜ ${C_RESET}"
sleep 0.30
type_text "${C_WHITE}hello --banner${C_RESET}" 0.08
sleep 0.10

# -------- HELLO WORLD ASCII --------
banner_lines=(
"  _   _      _ _        __        __         _     _ "
" | | | | ___| | | ___   \\ \\      / /__  _ __| | __| |"
" | |_| |/ _ \\ | |/ _ \\   \\ \\ /\\ / / _ \\| '__| |/ _' |"
" |  _  |  __/ | | (_) |   \\ V  V / (_) | |  | | (_| |"
" |_| |_|\\___|_|_|\\___( )   \\_/\\_/ \\___/|_|  |_|\\__,_|"
"                     |/                                "
)


printf "${C_BOLD}${C_WHITE}"
for line in "${banner_lines[@]}"; do
  type_text "$line" 0.005
done
printf "${C_RESET}\n"
sleep 0.5

# -------- BLOCK 1: whoami --------
print_prompt_header
printf "${C_GREEN}➜ ${C_RESET}"
sleep 0.12
type_text "${C_WHITE}whoami${C_RESET}" 0.05
sleep 0.18
printf "${C_GRAY}Antonio Amparo Rossi — Full Stack Developer & DevOps${C_RESET}\n\n"
sleep 0.10

# -------- BLOCK 2: focus --now --------
print_prompt_header
printf "${C_GREEN}➜ ${C_RESET}"
sleep 0.12
type_text "${C_WHITE}focus --now${C_RESET}" 0.05
sleep 0.18
printf "${C_GRAY}Building expertise in DevOps → Cloud${C_RESET}\n\n"
sleep 0.10

# -------- BLOCK 3: contact --------
print_prompt_header
printf "${C_GREEN}➜ ${C_RESET}"
sleep 0.12
type_text "${C_WHITE}contact${C_RESET}" 0.05
sleep 0.18
printf "${C_GRAY}GitHub: https://github.com/amprossi \nLinkedIn: https://linkedin.com/in/antonioamparorossi ${C_RESET}\n\n"
sleep 0.10

# -------- BLOCK 4: status --------
print_prompt_header
printf "${C_GREEN}➜ ${C_RESET}"
sleep 0.12
type_text "${C_WHITE}note --self${C_RESET}" 0.05
sleep 0.18
printf "${C_GRAY}Remember to drink water 💧 ${C_RESET}\n\n"
sleep 0.10

# -------- Pause --------

print_prompt_header
printf "${C_GREEN}➜ ${C_RESET}"
sleep 5.0

# -------- BLOCK 5: git flow --------
type_text "${C_WHITE}git add .${C_RESET}" 0.05
printf "\n"
sleep 0.10

print_prompt_header
printf "${C_GREEN}➜ ${C_RESET}"
type_text "${C_WHITE}git commit -m \"setting up profile\"${C_RESET}" 0.05
sleep 0.30
printf "${C_GRAY}[main abc1234] setting up profile${C_RESET}\n"
printf "${C_GRAY} 1 file changed, 42 insertions(+)\n\n${C_RESET}"
sleep 0.10

print_prompt_header
printf "${C_GREEN}➜ ${C_RESET}"
type_text "${C_WHITE}git push${C_RESET}" 0.05
sleep 0.30
printf "${C_GRAY}Pushing to github.com:amprossi/amprossi.git${C_RESET}\n"
printf "${C_GRAY}   m4l1kth..abc1234  main -> main${C_RESET}\n\n"
sleep 0.10

# -------- BLOCK 6: clear --------
print_prompt_header
printf "${C_GREEN}➜ ${C_RESET}"
type_text "${C_WHITE}clear${C_RESET}" 0.05
clear
sleep 0.10