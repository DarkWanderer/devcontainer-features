#!/bin/bash
set -e

# Test that claude command is available
source dev-container-features-test-lib

check "claude command exists" which claude

reportResults
