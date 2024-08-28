# Suckless Tools Configuration

This repository contains my configuration for suckless tools (dwm, st, dmenu, etc.), along with some helpful scripts. It has been tested on Debian 12.

## Characteristics

- The configuration is set up to work with the pipewire audio server.
- It uses conky to display CPU, RAM, and swap usage.
- I have written my own Python script for the dwm status text.

### Note

I have ignored the contents of the `scripts/statusbar/pythonvenv` directory because it can be generated with the following command:

```bash
python3 -m venv scripts/statusbar/pythonvenv
```

I hope this saves you some time!
