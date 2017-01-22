# sets up directories
ts::setup() {
  [ ! -d "${DATA_DIR}" ] && mkdir "${DATA_DIR}"
}

# starts udp forwarder
ts::start() {

  [ ! -p "${DATA_PIPE}" ] && mkfifo "${DATA_PIPE}"
 
  echo "Starting UDP forwarder on ${LISTEN_ADDRESS}:${LISTEN_PORT}"

  python -u "${UDP_FORWARDER}" "${LISTEN_ADDRESS}" ${LISTEN_PORT} "${DATA_PIPE}" || bp::abrt "Unable to start listener."
}