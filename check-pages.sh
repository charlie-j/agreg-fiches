for f in builds/9*.pdf; do
   pages=$(pdfinfo "$f" | grep Pages | awk '{print $2}')
   echo $pages
   if (( $pages > 2 ))
   then
	   exit 1
   fi
done

