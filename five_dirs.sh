mkdir five

for i in {1..5}; do
  mkdir five/dir$i
  for j in {1..4}; do
      touch five/dir$i/file$j
      if [[ "$j" =~ ^[01] ]]; then
	  echo "1" >> five/dir$i/file$j
      elif [[ "$j" =~ ^[02] ]]; then
          echo "2" >> five/dir$i/file$j
          echo "2" >> five/dir$i/file$j
      elif [[ "$j" =~ ^[03] ]]; then
	  echo "3" >> five/dir$i/file$j
	  echo "3" >> five/dir$i/file$j
	  echo "3" >> five/dir$i/file$j
      else
	  echo "4" >> five/dir$i/file$j
	  echo "4" >> five/dir$i/file$j
	  echo "4" >> five/dir$i/file$j
	  echo "4" >> five/dir$i/file$j

      fi
  done
done
