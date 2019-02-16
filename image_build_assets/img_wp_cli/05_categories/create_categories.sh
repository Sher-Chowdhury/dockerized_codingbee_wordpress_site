#!/bin/bash
set -ex

echo '##################################################################'
echo '################# configure create categories  ###################'
echo '##################################################################'

echo "INFO: About to create top level categories"
for name in `cat $PWD/assets/top-level-categories.txt` ; do

  echo "The name of top level category is ${name}"
  slug=$(echo "$name" | tr '[:upper:]' '[:lower:]')
  wp term create category ${name} --slug=${slug} 

done

echo "INFO: About to create Sub-Categories"
for line in `cat $PWD/assets/sub-categories.csv` ; do

  echo "About to process: $line"
  name=`echo $line | cut -d',' -f1`
  slug=$(echo "$name" | tr '[:upper:]' '[:lower:]')
  parent=`echo $line | cut -d',' -f2`
  echo "The name is ${name}"
  echo "The parent is ${parent}"


  echo "Parent name is: ${parent}"
  # echo "parent info is: $(wp term list category --fields=name,term_id --format=csv | grep ${parent})"
  parent_id=`wp term list category --fields=name,term_id --format=csv | grep ${parent} | cut -d',' -f2`
  echo "parent_id is $parent_id"

  wp term create category ${name} --slug=${slug} --parent=${parent_id}
done