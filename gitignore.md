## Gitignore

Gitignore tells git which files that you don't want to track. This is important for avoiding merge conflicts later on.

You should add a .gitignore file to your GitHub repository *as soon as you initialize it* i.e. during your first commit.

The .gitignore file in this folder has many common files that may be on your computer, but that you do not want to track in git. Please copy and use this template for your repos - but feel free to add more to it if you want to!

##Creating a .gitignore file

You should be able to create just a text file and save it as .gitignore.  

Here are instructions for one way to do it:

In terminal in your git repo enter `touch .gitignore`

Then open that .gitignore file `open .gitignore`
This opens the text file where you will add what you want to ignore. This website has a suggestion list: https://gist.github.com/octocat/9257657

For some projects we have ignored .Rhistory as well

Once adding what files to ignore save the text file then add it (make sure to just add that file and not the files you are trying to ignore) `git add .gitignore`
Commit and then push it.  You should be good to go.  You can do a `git status` to make sure it is no longer tracking the files you told it to ignore.

## Note 
(if you've forgotten to initialize your repo with a .gitignore...) 
Once git remembers a file, you can't gitingore it without first telling git to forget it. 
For example, we forgot to add .DS_Store to our .gitignore file at the beginning of one project, then accidentally added and committed it by using `git add -A` and `git commit`. 

### Here's how we solved it:

!Make sure to pull first!

Use the following line of code to look for any instances of .DS_Store you have being tracked in git.
`git ls-tree -r master --name-only`
for example ms/.DS_Store

Then, please use the following:
`git rm --cached ms/.DS_Store`
And repeat for any instances of .DS_Store

Then commit your changes, and push.

If you check again with `git ls-tree -r master --name-only` you should no longer see any instances of .DS_Store

As long as your file (e.g. .DS_Store) has been added to the .gitignore file, once you get rid of it in your individual git repos, it should stop being tracked.

