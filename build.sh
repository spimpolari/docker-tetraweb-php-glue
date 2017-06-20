versions=(5.5 5.6 7.0 7.1 latest)

for i in "${versions[@]}"
do
	# Check if the version directory exists
	if [ -d $i ]
	then
	    echo "Updating $i"
	else
		echo "Creating $i"
	    mkdir $i
	fi

	# Build the Docker file from template
	templateFile=`cat Dockerfile.template`
	dockerFile="${templateFile/VERSION/$i}"
	echo "$dockerFile" > "$i/Dockerfile"

	# Build the image
	imageName="pionl/tetraweb-php-glue:$i"
	image="$1 ./$i/"

	# Should we deploy?
	if [ $1="deploy" ]; then
	   	docker push $imageName
	else
	 	docker build -t $image
	fi

done