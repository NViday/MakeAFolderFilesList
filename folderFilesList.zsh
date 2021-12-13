#NVIDAYTECH 2021
#Folder files list
#--------------
#Please read the README
#-------------


#!/bin/zsh




function printFilesFrom(){


	folder=${1}

	filesList=${2}


	
	echo "searching for files in ${folder}"

	echo "--"${folder} >> ${filesList}
 

	for file in ${folder}/*; do
        
		if [ -d "${file}" ]; then 

        	        echo "found a folder"

			printFilesFrom $file $filesList
        	else
                	echo $file >> $filesList

        	fi
	done

	echo "" >> ${filesList}

	echo " search completed. Check ${filesList}"

	


} 










printFilesFrom ${1} ${2}

