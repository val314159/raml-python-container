
def rpc_hello_world_get():
    return [
        '"Hello, world!"',
        "\n"]

def rpc_check_in_get(name, lat=None, long=None):
    return [
        "Hello, %s@(%s,%s)!" % (name, lat, long),
        "\n"]
