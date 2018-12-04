Escape the Shell
================

An escape game for Programmers and Hackers who abide by the [hacker ethics].

Story
-----

The company head quarters have been infiltrated by hackers.
They are not extremely smart but we really do not like to have them snooping
around in our networks.
This is what we ask you for to help: Please help us defend our infrastructure
from foreing access, make it secure, close the loop holes and find
persistent infoltrations and delete them.

A group of our own infrastucture team is already workin on the case, tracking
back the changes and the hack.
But we can not do it alone. We need your help.
Please help us with your team, to gain complete access and control over our
infrastructure.

Installation for Development
----------------------------

You can run the escape game yourself and
[contribute new challenges][contributing].
If you install the game for development, you can also use play the game.

1. Install [Git].
2. Get the source code with [Git].
    ```shell
    git clone https://github.com/niccokumzmann/escape-the-shell.git
    ```
3. [Install Docker][install-docker].
4. [Install docker-compose][install-docker-compose].
5. You can build the software from the current version you downloaded.
    ```shell
    cd escape-the-shell
    make build
    ```
6. To start the game, do
    ```shell
    make start
    ```

[hacker ethics]: https://www.ccc.de/en/hackerethik
[contributing]: CONTRIBUTING.md
[install-docker]: https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-16-04
[Git]: http://git-scm.com/
[install-docker-compose]: https://docs.docker.com/compose/install/#master-builds

