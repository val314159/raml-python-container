#raml-python-generator host/simple.raml -o host/simple
raml-python-generator $1 -o host/simple
cp rpc_impl.py host/simple
cp host/rpc_impl.py host/simple
