# Toy Robot Challenge GUI

As an extra to a [Toy Robot Challenge](https://github.com/keithrowell/toy_robot_challenge_gui), I built a GUI to interact with the robot.

## How to Run

Have this repository and the [Toy Robot Challenge](https://github.com/keithrowell/toy_robot_challenge_gui) repositiory share the same parent directory, with the Toy Robot Challenge code in a directory called `gem`.

```shell
drwxr-xr-x  11 keith  staff      352 Nov 28  2022 .
drwxr-xr-x@ 99 keith  staff     3168 Mar  1 16:06 ..
drwxr-xr-x   9 keith  staff      288 Jul  8 15:50 .git
-rw-r--r--@  1 keith  staff     2023 Nov 27  2022 README.md
drwxr-xr-x   4 keith  staff      128 Nov 28  2022 gem
-rw-r--r--@  1 keith  staff     3471 Nov 24  2022 toy_robot_challenge.md
drwxr-xr-x  35 keith  staff     1120 Jul  8 17:03 toy_robot_gui
```

Run using docker:

- `docker build -t toy_robot_gui .`
- `bin/docker/up`
- `bin/docker/start`
- visit <http://localhost:3000>
