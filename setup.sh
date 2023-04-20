#!/bin/bash
# didn't work
find . -type f -exec sed -i 's/{dockerHubUsername}/'$1'/g' {} +
