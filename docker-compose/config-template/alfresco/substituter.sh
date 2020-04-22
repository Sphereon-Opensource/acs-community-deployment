#!/bin/sh
set -e

# The number of configuration options reached a threshold where externalizing the configuration makes more sense,
# rather than sed'ing a whole bunch of stuff.

bash -c "$@"
