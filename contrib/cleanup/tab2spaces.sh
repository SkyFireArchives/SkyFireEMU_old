#!/bin/bash
# Example "sh tab2spaces.sh src/server/game"
find $1 -type f -exec sed -i 's/\t/    /g' {} \;
