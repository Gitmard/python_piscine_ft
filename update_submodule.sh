#!/bin/bash
set -e

echo "Updating submodules..."
git submodule update --remote --merge
if [[ -n $(git status --porcelain) ]]; then
	echo "Submodules updated. Creating commit..."
	git add .
	git commit -m "chore: update submodules $(date +%Y-%m-%d %H:%M:%S)"
	echo "Commit created. You can now git push"
else
	echo "Nothing to update."
fi
echo "Done"
