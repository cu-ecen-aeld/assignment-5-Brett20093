#!/bin/sh

SCRIPT_DIR="$(dirname "$0")"
cd "$(SCRIPT_DIR)/buildroot"
make distclean
cd $(SCRIPT_DIR)