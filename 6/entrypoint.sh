#!/bin/bash

Xvfb :99 -ac -screen 0 1280x720x16 -nolisten tcp &
webdriver-manager start &
exec "$@"
