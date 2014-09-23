#!/bin/bash

echo '<?xml version="1.0" encoding="UTF-8"?>' > $2 
echo '<week>' >> $2
cat $1 | grep -v ^"<[?,!]" | tr -d '-' >> $2 
echo '</week>' >> $2
