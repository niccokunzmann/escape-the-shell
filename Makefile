#
# This is the main file of the game.
# You can create and destroy a new game here.
#


#
# Building containers
#
build: build-challenges
	docker-compose build
	docker-compose create

build-base-packages:
	docker build --tag escapetheshell/packages challenges/base/packages

build-base-ssh: build-base-packages
	docker build --tag escapetheshell/ssh challenges/base/ssh

build-challenges: build-challenges-ada

build-challenges-ada: build-base-ssh
	docker build --tag escapetheshell/ada challenges/ada



#
# Running the game
#
run:
	docker-compose start

start: run greet

greet:
	challenges/ada/greet.sh

clean:
# TODO: remove all 'escapetheshell' containers

