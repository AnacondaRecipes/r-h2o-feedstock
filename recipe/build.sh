#!/bin/bash
set -e

# H2O release zip has R package tarball in R/ directory
R_PKG=$(ls "$SRC_DIR"/R/h2o_*.tar.gz 2>/dev/null | head -1)
$R CMD INSTALL "$R_PKG" -l "$PREFIX/lib/R/library"
