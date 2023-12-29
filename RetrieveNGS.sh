#!/usr/bin/env bash
# RetrieveNGS.sh

# Retrieve the Rhodobacter spheroides NGS reads.
fasterq-dump --split-3 SRR522244 -O ~/WorkingDirectory/NGS/data
