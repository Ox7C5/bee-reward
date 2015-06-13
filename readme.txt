=================
Bee Reward readme
=================

Manual for the really impatient Bees
====================================

- Activate the game script,
- Start new game,
- Pick a goal from the goal window to do,
- Make a connection from a supplier to the given destination for the requested
  cargo type,
- Transport the cargo, get reward,
- Pick next goal to connect.


Manual for the less impatient bees
==================================

Bee Reward is a game script for OpenTTD 1.5 or newer.

The script gives a number of goals to achieve (number of goals can be set by a
parameter). It requests a given amount of cargo of a given type to deliver to a
given destination, where the first amount should arrive within a time frame.
You have to build the transport connection, and deliver the requested amount.
When that is done, the goal is considered to be fulfilled. It is removed from
the list, and a new goal is created (may take a while) for you to fulfill.

You can configure how much you get for completing a goal. There is no penalty for
failing to achieve a goal. The purpose of the timer is to get rid of obsolete
or unreachable goals. Since the timer is reset when new cargo is detected, you
can take as long as you like to complete the goal, as long as you deliver
something regularly.


Features
========

Bee Reward 1
- Set the balance between town and industrial cargo goals.
- Set the amount of reward for completing a goal.
- Forked from Busy Bee RC2

Translations
============
We thank the following people for their contributed translations:

    Afrikaans:  telanus
    Catalan:    juanjo
    Croatian:   Voyager1
    French:     arikover
    German:     frosch
    Indonesian: UseYourIllusion
    Italian:    Snail, Voyager1
    Korean:     kevin
    Latin:      Supercheese
    Spanish:    SilverSurferZzZ
    Swedish:    Zuu


License
=======

Bee Reward
Copyright (C) 2015  andythenorth, alberth, jottyfan

This program is free software; you can redistribute it and/or modify it under
the terms of the GNU General Public License version 2 as published by the Free
Software Foundation.

This program is distributed in the hope that it will be useful, but WITHOUT ANY
WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A
PARTICULAR PURPOSE. See the GNU General Public License
for more details.

You should have received a copy of the GNU General Public License along with
this program; if not, write to the

Free Software Foundation, Inc.
51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
