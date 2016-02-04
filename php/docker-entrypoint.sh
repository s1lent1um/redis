#!/bin/bash
set -e

if [ "$1" = 'bash' ]; then
	exec bash
elif [ "/entrypoint.php" = "$@" ]; then
	exec /entrypoint.php
else
	exec /entrypoint.php $@
fi

