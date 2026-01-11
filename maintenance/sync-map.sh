#!/usr/bin/env bash

BACKUP_REMOTE="puppy@map.canine.systems"

# Configure it so the TERM process calls `exit 1` at the top level.
trap "exit 1" TERM
export TOP_PID=$$

START=$(date +'%d %b %Y at %H:%M:%S')
START_TS=$(date +'%s')

LOG_FILE="$HOME/map-upload.log"
LAST_BACKUP_FILE="$HOME/.last-map-upload.txt"

function fail() {
    printf "\n-----------------------------" >> $LOG_FILE
    echo >> $LOG_FILE
    echo "$@" >> $LOG_FILE
    # Kill the top-level process, instead of just exiting this function.
    kill -s TERM $TOP_PID
}

[ -f "$LOG_FILE" ] && mv "$LOG_FILE" "$LOG_FILE.1"
printf "Upload started on $START\n\n" > $LOG_FILE

# -a:   "Archive mode."
# -z:   Compress file data during transfer
# -v:   Increase verbosity.
# -P:   --partial (keep partially-transferred files), --progress (show progress during transfer)
# -h:   Use human-readable numbers.
# --delete: Delete extraneous files from dest dirs.
{ rsync -avzPh --delete "$HOME/server/squaremap/web/" "${BACKUP_REMOTE}:/usr/share/caddy/" 2>&1 || fail "Error running rsync ($?)."; } | tee -a $LOG_FILE

END_TS=$(date +'%s')

DURATION=$[$END_TS - $START_TS]

echo "$END_TS" > $LAST_BACKUP_FILE

printf "Backup complete." "Started on $START.\nTook $DURATION seconds." >> $LOG_FILE
