# #!/bin/bash
# fswatch . ./auto-commit.sh

histo=$(git diff --histogram  | sed -n -e '/^+/p' | sed '/^+++/ d' ) 

git add .
git commit -m "$histo"