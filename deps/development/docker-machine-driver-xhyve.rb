# xhyve driver for docker-machine
# TODO:
# docker-machine-driver-xhyve need root owner and uid
# $ sudo chown root:wheel $(brew --prefix)/opt/docker-machine-driver-xhyve/bin/docker-machine-driver-xhyve
# $ sudo chmod u+s $(brew --prefix)/opt/docker-machine-driver-xhyve/bin/docker-machine-driver-xhyve
dep 'docker-machine-driver-xhyve.managed'
