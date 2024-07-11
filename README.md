# Toy Robot Challenge GUI

As an extra to a [Toy Robot Challenge](https://github.com/keithrowell/toy_robot_challenge), I built a GUI to interact with the robot.

## How to Run

Have this repository and the [Toy Robot Challenge](https://github.com/keithrowell/toy_robot_challenge) repositiory share the same parent directory, with the [Toy Robot Challenge](https://github.com/keithrowell/toy_robot_challenge) code in a directory called `gem`.

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

## Screenshots

The App:

<img width="931" alt="Screenshot" src="https://github.com/keithrowell/toy_robot_challenge_gui/assets/792745/4fe18e48-8d83-475a-ae93-f4d16bc0bc98">

The main page for the app:

<img width="849" alt="Main Page" src="https://github.com/keithrowell/toy_robot_challenge_gui/assets/792745/30da2956-8724-4d33-83c8-2c71401657c5">

[app/matestack/app/pages/game/board.rb](https://github.com/keithrowell/toy_robot_challenge_gui/blob/main/app/matestack/app/pages/game/board.rb)

The game board component, defined as an SVG:

<img width="1165" alt="the game board component" src="https://github.com/keithrowell/toy_robot_challenge_gui/assets/792745/17393047-7fc9-4ba7-add8-720e25a13458">

[app/matestack/app/components/game/board.rb](https://github.com/keithrowell/toy_robot_challenge_gui/blob/main/app/matestack/app/components/game/board.rb)


The game board's robot graphic, also defined as an SVG (drawn in a graphics package and exported as an SVG):

<img width="1158" alt="the game board's robot graphic" src="https://github.com/keithrowell/toy_robot_challenge_gui/assets/792745/12014174-435e-4931-b461-fb49486cf89e">

[app/matestack/app/components/game/board.rb](https://github.com/keithrowell/toy_robot_challenge_gui/blob/main/app/matestack/app/components/game/board.rb)


And some of the Vue code for the board component:

<img width="1040" alt="some of the Vue code for the board component" src="https://github.com/keithrowell/toy_robot_challenge_gui/assets/792745/22fd54a5-c1f3-4d86-abdc-0a2c74bb335b">

[app/matestack/app/components/game/board.js](https://github.com/keithrowell/toy_robot_challenge_gui/blob/main/app/matestack/app/components/game/board.js)
