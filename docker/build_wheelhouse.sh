#!/bin/bash -e

touch /tmp/requirements.txt

while read line
do
  echo "$line" >> /tmp/requirements.txt
done < "${1:-/dev/stdin}"

mkdir /tmp/wheels

/databricks/conda/bin/python -m pip wheel -r /tmp/requirements.txt -w /tmp/wheels

cd /tmp/wheels
zip -r /output/all.wheelhouse.zip *.whl
