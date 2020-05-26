#!/bin/bash

more bananas.ini | grep '^version' | sed "s/^version = //g"
