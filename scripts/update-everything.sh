#!/bin/bash

perl -n -e 'if (/repo: *(\S+)/) {
    print "./scripts/update-modules.sh $name $1\n";
    next;
}
if (/^ +(\S+):/) {
    $name = $1;
}' sally.yaml | sh -e
