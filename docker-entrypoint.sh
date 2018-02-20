#!/usr/bin/env sh

main_cmd=phishthis.py

if [ "${1:0:1}" = '-' ] || [ "$1" = "$main_cmd" ]; then
  if [ "$1" = "$main_cmd" ]; then
    shift
  fi
  [ "$username" ] && set -- --username "$username" "$@"
  [ "$password" ] && set -- --password "$password" "$@"
  [ "$forward" ] && set -- --forward "$forward" "$@"
	set -- $main_cmd "$@"
fi

exec "$@"
