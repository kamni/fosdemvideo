
ToDo
====
* h01ger: borrowed 50e to buy boxes some day before fosdem2014
* WoDaN: buys gaffa-tape - 10 rolls
 * RichiH: might add 5 more rolls
* h01ger: security starts to become an issue - think about it. 
* wouter: built a list of contacts per devroom so we can update the rooms sheet
* sorted, in progress:
 * boxes?! friday hopefully.
 * wouter: found 2 other cameras and 4 tripods, delivered thursday around 1800
 * wouter: order/confirm 5 more laptops - confirmed
  * FIXME: needs infodesk to receive+pick them up here
* mail devroom managers and/or volunteers on friday again
 * tell them the basics, include cheatcheet.pdf
 * reuse old mail
 * repeat infos, point out cheat sheets (attach them now!)
 * decide first: and then: create separate cheat sheet for rsync
 * give that info to markvandenborre too, so he can spam volunteers from volunteers.fosdem.org
* h01ger: fai
 * save laptop+all logs on the server
  * just do it
 * make video1 central munin + nagios server
  * setup nagios
  * setup munin
* h01ger: build dvswitch at from 75dda59bd2a74ffe842154a0f2d7a1d0c94fea00
* print: 
 * building maps
* everything is labeled, except: 
 * 4 twinpacts from KDE (need to assign room numbers in serial_numbers file) 
 * whatever aint here
* Build a list of serial numbers (for insurance)
 * whatever aint here
* document in on github: review workflow
* test on penta: review workflow
 * forget streaming, REVIEW ALL THE THINGS
* missing tripod for hackmans camera
 * hackman will bring something
* hackman arriving friday 1930 BRU, then beer event? :-/
* sylvestre/tobias IRILL camera arrives saturday 1000oish at ULB
* streaming: use http://git.sesse.net/?p=videoredirector;a=summary and get sesse to join
 * or mithros solution
 * add notes from talk with sesse to this very readme
 * ask trouble / jimmy about google code engine sponsoring
  * or debconf.org servers ?
* at ULB:
 * enable bonding again, see files/etc/network/interfaces/video?

Basic setup
====

* 2 main talk rooms (janson, K auditorium)
 *  streamed (the main talk rooms)
 *  audio entirely done by ULB
 *  1 camera, 1 twinpact
 *  2 laptops

* Lightning talks room
 * Streamed
 * audio, appearantly done by ULB
 * 1 camera, 1 twinpact
 * 2 laptops

* 19 developer rooms
 * 1 camera per room 
 * 1 twinpact
 * audio, appearantly done by ULB

Check the rooms at https://fosdem.org/2014/schedule/rooms/ 
and https://fit.fosdem.org/wiki/Fosdem2014Devrooms 

open questions / random stati
----
 wheezy + which dvswitch version?
  - debconf + bugfix for manual fade state machine failure? 
  - which version / branch is that?
    It's in [git](http://anonscm.debian.org/gitweb/?p=dvswitch/dvswitch.git;a=commit;h=75dda59bd2a74ffe842154a0f2d7a1d0c94fea00)
  - The plan is to record to the server during the event, and copy to
    local hard disk _only_ as a backup. As such, we don't necessarily
    need 23 small switches (a few would be necessary, to deal with the
    laptops from U building; but I have some at the office, so that
    shouldn't be a major issue)


3 servers
----
* how do we use them?
  - 6 rooms per server:
    - K building: video1
    - H building (minus 1301, Cornil): video2
    - Janson, AW building, H.1301: video3
 
  There is no wired connectivity to the U building; we'll need to record
  to local hard disk there, and possibly sneakernet them over with a USB
  disk or some such.

* For U building: sync to servers by night from NOC
  - UA2.114 & UA2.252A: sync to video1
  - UD2.120: sync to video2
  - UD2.218A: sync to video3

Additionally, there are two USB hard disks to sneakernet data over in case of
disk space issues

24 twinpacts
----
* 2 from IRILL
* 3 from FOSDEM
* 10 from carl (2 need power supplies fixed)
* 4 from Kenny (KDE)
* 5 newly bought on eBay (no power supplies or remotes) testing now.

Thats 24 in total. 1 broke on Wednesday at pre-setup.

People (core team)
----
* wouter
* h01ger (arriving 26th or 25th, leaving the 3rd or 4th)
* CarlFK (arriving 26th, leaving the 3rd) + Jen
* fil (arriving 2014-01-28 14:05 brussels south, leaving monday)

Gear arrivals
=============

From Videohouse:
----------------
8 cameras but only 6 tripods: we can pick these up on Wednesday (need to drive to
Vilvoorde, 10')

From Stake5:
------------
10 cameras: will be delivered on thursday


From IRILL/DebConf:
-------------------
h01ger brought from Paris:

- 1 pelicase
- 2 twinpacts
- 3 cameras
- 4 tripods

From Python:
------------
CarlFK brought:

- 10 twinpacts
- plus 5 more bought with FOSDEM money
- Loads of firewire cables

From hackman:
---------
- 1 camera will be brought by him on friday

From easy2rent:
---------------
3 servers and 45 laptops will be delivered on monday

From KDE:
---------
Kenny Duffus will bring 4 twinpacts to the infodesk on friday.

Planning
========

This is an initial planning for what we'll do during the week before FOSDEM.

- Monday: install servers, configure them, install transcoding scripts,
  monitoring, etc
- Tuesday: install & test laptops
- Wednesday: hook up cameras & twinpacts, test things, divide gear over boxes
- Thursday: go buy stuff if we figure out we're missing something, write
  documentation for volunteers, make waitscreen loop
- Friday morning: margin in case we run behind schedule
- Friday afternoon: bring gear to ULB, with help of FOSDEM logistics
  team. Possibly verify ULB audio set-up already in place, so we can ask
  for changes if necessary (and still possible...)
- Saturday/Sunday, early-o-clock: go to ULB and be ready to hand out video gear
  to volunteers
- Saturday/Sunday, 8:00 AM: yell at devrooms who've not shown up yet, go set up
  gear there ourselves (and possibly send volunteers there as well)
