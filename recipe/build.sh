#!/bin/bash
set -e

# H2O release zip has R package tarball in R/ directory
R_PKG=$(ls "$SRC_DIR"/R/h2o_*.tar.gz 2>/dev/null | head -1)
if [ -z "$R_PKG" ]; then
    echo "ERROR: no h2o_*.tar.gz found under $SRC_DIR/R" >&2
    exit 1
fi

R="${R:-$PREFIX/bin/R}"
"$R" CMD INSTALL "$R_PKG" -l "$PREFIX/lib/R/library"
