#!/bin/bash
set -e

error () {
    echo "theres is an error"
}
trap error ERR






echo "Hello.."
echo "Before error.."
ccaffjl;dnf # here shell understands there is an error and signal is ERR then ERR means print there is an error
echo "After error"