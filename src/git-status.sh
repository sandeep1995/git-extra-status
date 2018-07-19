#!/bin/sh

RED='\033[1;31m'
GREEN='\033[0;32m'
CYAN='\033[1;36m'
NC='\033[0m'


UPSTREAM=${1:-'@{u}'};
LOCAL=$(git rev-parse @);
REMOTE=$(git rev-parse "$UPSTREAM");
BASE=$(git merge-base @ "$UPSTREAM");

if [ "${LOCAL}" = "${REMOTE}" ]; then
    echo "${GREEN}✓${NC} Up to date"
elif [ "${LOCAL}" = "${BASE}" ]; then
    echo "${RED}▼${NC} Pull Needed"
elif [ "${REMOTE}" = "${BASE}" ]; then
    echo "${CYAN}▲${NC} Push Needed"
else
    echo "${RED}✗${NC} Diverged"
fi