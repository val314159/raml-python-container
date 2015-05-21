rm -fr root ; docker build -t raml-python $1 && docker run -it raml-python sh go.sh && docker cp $(docker ps -aq | head -1):/root/ . && (cd root; python -umsimple.server_mock)
