#!/bin/bash
set -ex

dependency-check --failOnCVSS=$fail_on_cvss_level --enableExperimental --project $app_title --out $deploy_dir --scan $podfile_lock_path
