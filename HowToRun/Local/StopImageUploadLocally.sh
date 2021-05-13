#!/bin/sh
abort()
{
    echo >&2 '
***************
*** ABORTED ***
***************
'
    echo "An error occurred StopImageUploadLocally.sh . Exiting..." >&2
    exit 1
}

trap 'abort' 0

set -e
cd ../../
cd ImageUpload-logic
sh StopImageUploadLogicLocally.sh >> ../logs/ImageUpload-logic.log
echo "Stopped ImageUpload-logic. Do tail -f logs/ImageUpload-logic.log from "+$CURRENT_DIR

trap : 0

echo >&2 '
************
*** DONE StopImageUploadLocally ***
************'
