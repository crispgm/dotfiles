# !/bin/bash
git push origin HEAD:refs/for/$(git rev-parse --abbrev-ref HEAD)
