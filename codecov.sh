#!/usr/bin/env bash
# Intended only for use in Travis-CI build
cd /tales-of-sosaria && \
  bash <(curl -s https://codecov.io/bash) \
  -f /build/app.coverage.txt \
  -t d395ed2d-409d-439a-8acd-70e2ac3f04f4 \
  -X gcov \
  -X coveragepy \
  -X search \
  -X xcode \
  -R /repo \
  -F unittests \
  -Z

