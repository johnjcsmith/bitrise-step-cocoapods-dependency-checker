#!/bin/bash
set -ex

dependency-check --failOnCVSS=$fail_on_cvss_level --enableExperimental --project $app_title --out $deploy_dir --scan $podfile_lock_path
# Rename file to allow other dependency checker to be executed and stored in the artifact folder
mv $deploy_dir/dependency-check-report.html $deploy_dir/cocoapods-dependency-check-report.html
