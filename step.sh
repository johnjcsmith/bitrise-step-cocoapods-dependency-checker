#!/bin/bash
set -ex

dependency-check --failOnCVSS=$fail_on_cvss_level --enableExperimental --project $BITRISE_APP_TITLE --out $BITRISE_DEPLOY_DIR --scan $podfile_lock_path
