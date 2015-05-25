rm -fr root
docker build -t raml-python $1 && docker run -it raml-python sh go3.sh simple.raml
