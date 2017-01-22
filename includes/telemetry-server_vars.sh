# CONSTANTS
readonly PROJECT_NAME="telemetry-server"
readonly PROGNAME="$( basename $0 )"
readonly LOG_FILE=""
readonly SCRIPT_DEPENDENCIES=( "python" )

readonly DATA_DIR="${HOME_DIR}/data"

readonly DATA_PIPE="${DATA_DIR}"/default.pipe

readonly UDP_FORWARDER"${HOME_DIR}/includes/udp-forwarder.py"

# WARNING:
# Please ensure that the address and port are not open to the public internet. It is recommended to only allow access from a "controlled" network (ie. VPN). For that reason, the safe default will be to listen on 127.0.0.1
readonly LISTEN_ADDRESS="127.0.0.1"
readonly LISTEN_PORT=5050