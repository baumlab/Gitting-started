Gitting-started
===============

Readme to set up teams, collaborators and repos


Gitting-started.tex contains information on how to use Git within our lab. Feel free to fork and make comments


Notes from GYA git troubleshooting:

29/07/2016: Ran into problems with JKB writing text and JR writing code on the same document. Ended up with old version of the Rmd and decided to revert to an older commit (using git revert and the SHA for JKB's older commit). Then ended up with detached HEAD after trying to commit and push the correct commit version. Fixed that by creating a temporary branch and committing changes.

2016: How to reattach your HEAD after reverting: 
http://learnwebtutorials.com/you-are-in-detached-head-state-how-fix

29/07/2016: Merge conflicts/issues CAN and SHOULD be avoided. Use git add -A; git commit -m ''; git pull [to merge changes from public repo into your local version] and then git push [to share back with everyone].


