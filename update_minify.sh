#!/usr/bin/env bash

! [ -z ${ZSH_VERSION+x} ] && _SDIR=${(%):-%N} || _SDIR="${BASH_SOURCE[0]}"
DIR="$( cd "$( dirname "${_SDIR}" )" && pwd )"

cd "$DIR"

echo "Updating from Git..."
git pull -q

echo "Minifying CSS..."
curl -fsSL -X POST --data-urlencode 'input@osticket-dark.css' https://cssminifier.com/raw > osticket-dark.min.css

echo "Done."

