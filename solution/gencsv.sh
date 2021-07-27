rm inputFile
for i in {0..9}
  do
    echo "$i, $RANDOM" >> inputFile
    chmod 777 inputFile
done
