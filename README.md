# My pomodoro timer

This is a pomodoro timer for linux. It's based on a [script created by James Miranda](https://gist.github.com/jameswpm/2833c89b18fc3f571985779cbee0a2b8), which is based on a Superuser [answer written by myself](https://superuser.com/questions/224265/pomodoro-timer-for-linux/669811#669811) back in 2013.

After many years jumping from Pomodoro timer to Pomodoro timer, I decided to start using this again because I gave up trying to find a perfect solution elsewhere. Now I can't stop using this script, so I decided to continue working on it and publishing it because why not? This may not be the best pomodoro solution for you, but it suits my needs like no other competing software.

# Licence

GPL-3. You can read the whole thing [here](https://www.gnu.org/licenses/gpl-3.0.en.html), or you can stop being such a lawyer and just read the [tl;dr version here](https://tldrlegal.com/license/gnu-general-public-license-v3-(gpl-3)). You can also read my super tl;dr version, which basically states "don't be a jerk: keep this open and free, and give people credit". All contributions are welcome.

# Features

- Low on resources (uses terminal and desktop notifications).
- Locks your screen during breaks to motivate you to _actually_ go on a break.
- Leaves a footprint on your terminal so you can have an activity log.

# Installation

Just copy everything into a folder.

# Usage

Make sure `pomodoro.sh` is executable (`chmod +x pomodoro.sh`), then run

```
./pomodoro.sh
```

on your terminal and follow the prompt. You should be getting visual (notification) and audio feedback about your pomodoro and your breaks. You can interrupt the program by pressing <kbd>Ctrl</kbd>+<kbd>C</kbd> on your terminal.

# Dependencies

`notify-send` and `paplay`. Both are small packages which are commonly bundled by default in most Linux distributions, so they will probably either come pre-installed or should be available in the default repository of your distro of choice. Another dependency is `xtrlock`, which is also easily available.

# TODOs

- Add cases for custom number of pomodoros
- Add endless loop over pomodoros
- Move terminal commands to a log file
- Improve notification timeouts so they don't jumble up
- Add push notifications to Android
- During breaks, page `xtrlock` frequently to relock in case screen was unlocked
