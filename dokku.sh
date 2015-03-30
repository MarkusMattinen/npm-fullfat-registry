#!/bin/sh

if [ -z "$FULLFAT_REGISTRY" ]; then
  echo FULLFAT_REGISTRY must be set.
  exit 1
fi

exec node bin/fullfat.js --fat=$FULLFAT_REGISTRY --skim=https://skimdb.npmjs.com/registry --seq-file=/data/registry.seq --missing-log=/data/missing.log
