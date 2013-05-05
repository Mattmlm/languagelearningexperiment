languagelearningexperiment
==========================

An online experiment for a friend.

rails generate scaffold IterativeChain chain:text num_users:integer 
rails generate scaffold UserEntry pairs:text chain_id:integer

MVC:
Models: iterative_chains, user_entries
Views: experiment_intro, training, testing
Controllers: manage iterative chains, manage user entry

Table of Iterative Chains

Each chain:
- contains a chain
- contains a Boolean checking whether it's locked or not
- contains a time stamp of when it was locked if locked
- length of chain

UX

1. User clicks yes on taking experiment
# figure out which chains are free
- Check each chain for whether any should be unlocked
- check again what's unlocked
# if none are free, tell user too bad
# figure out which chain to assign
- check lengths of free chain, choose shortest
# assign chain
- lock chain
- assign user a cookie
- record time stamp

2. User gets directed to training page
# grab latest entry of chain
# display chain

3. User gets directed to testing
# determine whether entry is sem->phone or phone->sem
# display images and audio in random order
# check whether everything has been matched