###########################################################################
#    script.sh
#    ---------------------
#    Date                 : March 2016
#    Copyright            : (C) 2016 by Matthias Kuhn
#    Email                : matthias at opengis dot ch
###########################################################################
#                                                                         #
#   This program is free software; you can redistribute it and/or modify  #
#   it under the terms of the GNU General Public License as published by  #
#   the Free Software Foundation; either version 2 of the License, or     #
#   (at your option) any later version.                                   #
#                                                                         #
###########################################################################

set -e
<<<<<<< c2162b0c279dc439e7ed8c63ce72cae878963b8d

DIR=$(git rev-parse --show-toplevel)/.docker

docker-compose -f $DOCKER_COMPOSE run --rm qgis-deps

mkdir -p $CCACHE_DIR

docker-compose --version
docker-compose -f $DOCKER_COMPOSE config
docker-compose -f $DOCKER_COMPOSE run --rm qgis-build-and-test

popd
