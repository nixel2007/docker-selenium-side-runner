#!/bin/sh

sleep 5

selenium-side-runner -s http://chromedriver:4444 --output-directory ../out /sides/*.side
