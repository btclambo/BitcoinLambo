#!/bin/sh

TOPDIR=${TOPDIR:-$(git rev-parse --show-toplevel)}
SRCDIR=${SRCDIR:-$TOPDIR/src}
MANDIR=${MANDIR:-$TOPDIR/doc/man}

BITCOINLAMBOD=${BITCOINLAMBOD:-$SRCDIR/bitcoinlambod}
BITCOINLAMBOCLI=${BITCOINLAMBOCLI:-$SRCDIR/bitcoinlambo-cli}
BITCOINLAMBOTX=${BITCOINLAMBOTX:-$SRCDIR/bitcoinlambo-tx}
BITCOINLAMBOQT=${BITCOINLAMBOQT:-$SRCDIR/qt/bitcoinlambo-qt}

[ ! -x $BITCOINLAMBOD ] && echo "$BITCOINLAMBOD not found or not executable." && exit 1

# The autodetected version git tag can screw up manpage output a little bit
BTLVER=($($BITCOINLAMBOCLI --version | head -n1 | awk -F'[ -]' '{ print $6, $7 }'))

# Create a footer file with copyright content.
# This gets autodetected fine for bitcoinlambod if --version-string is not set,
# but has different outcomes for bitcoinlambo-qt and bitcoinlambo-cli.
echo "[COPYRIGHT]" > footer.h2m
$BITCOINLAMBOD --version | sed -n '1!p' >> footer.h2m

for cmd in $BITCOINLAMBOD $BITCOINLAMBOCLI $BITCOINLAMBOTX $BITCOINLAMBOQT; do
  cmdname="${cmd##*/}"
  help2man -N --version-string=${BTLVER[0]} --include=footer.h2m -o ${MANDIR}/${cmdname}.1 ${cmd}
  sed -i "s/\\\-${BTLVER[1]}//g" ${MANDIR}/${cmdname}.1
done

rm -f footer.h2m
