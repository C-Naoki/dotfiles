import atexit
import datetime
import math
import os
import platform
import readline
import sys


def timestamp():
    return datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S")

sys.ps1 = "\033[1;32m>>>\033[0m "
sys.ps2 = "\033[1;34m...\033[0m "

readline.parse_and_bind("tab: complete")

def get_python_version():
    return f"{sys.version_info.major}.{sys.version_info.minor}.{sys.version_info.micro}"

# ANSI color codes
BLUE = "\033[1;34m"
GREEN = "\033[1;32m"
YELLOW = "\033[1;33m"
RESET = "\033[0m"

welcome_message = f"""
{BLUE}
┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
┃                                                        ┃
┃         {YELLOW}  _____       _   _                   {BLUE}         ┃
┃         {YELLOW} |  __ \     | | | |                  {BLUE}         ┃
┃         {YELLOW} | |__) |   _| |_| |__   ___  _ __    {BLUE}         ┃
┃         {YELLOW} |  ___/ | | | __| '_ \ / _ \| '_ \   {BLUE}         ┃
┃         {YELLOW} | |   | |_| | |_| | | | (_) | | | |  {BLUE}         ┃
┃         {YELLOW} |_|    \__, |\__|_| |_|\___/|_| |_|  {BLUE}         ┃
┃         {YELLOW}         __/ |                        {BLUE}         ┃
┃         {YELLOW}        |___/                         {BLUE}         ┃
┃                                                        ┃
┣━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┫
┃                                                        ┃
┃   {GREEN}Welcome to Python!{BLUE}                                   ┃
┃                                                        ┃
┃   {YELLOW}Current time: {GREEN}{timestamp()}{BLUE}                    ┃
┃   {YELLOW}Python version: {GREEN}{get_python_version()}{BLUE}                               ┃
┃   {YELLOW}Operating System: {GREEN}{platform.system()} {platform.release()}{BLUE}                      ┃
┃                                                        ┃
┃   {GREEN}Happy coding!{BLUE}                                        ┃
┃                                                        ┃
┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
{RESET}
"""

print(welcome_message)
