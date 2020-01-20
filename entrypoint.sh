#!/bin/sh -l

git ftp catchup

git ftp push \
  --syncroot '.' \
  --user $INPUT_USER \
  --passwd $INPUT_PASSWORD \
  $INPUT_URL