
# Github walkthrough for Baum lab members
Started April 30th 2014
Updated August 2016 with shared repository guidelines.

### 1. Set up your personal account

See also: https://help.github.com/articles/set-up-git

```shell
git config --global user.name "myusername"
# Sets the default name for git to use when you commit
git config --global user.email "myemailaddress"
# Sets the default email for git to use when you commit
```

You might want to tell Git to remember your username and password when you clone new repos. Follow instructions on cashing passwords: <https://help.github.com/articles/caching-your-github-password-in-git/>

### 2. Navigating the Github website

Clicking the Git icon button in top left (the cat) shows you the main screen.
Note: Repositories which you are collaborating to are only viewable on this screen.

Username/photo icon in upper right shows dashboard for:

1. Contributions: Lists the repositories that you have recently worked in, and your Github activity over the last year
2. Repositories: Shows your private and public repositories, and the repos you have forked from other members
3. Public activity: Shows your work on Github - what have you forked, pulled, merged?


### 3. Join the Baum lab organisation

To use Github within the Baum lab organisation, contact James or Julia to be added as a member. For any project in the Baum lab, we will create a team that allows multiple users to create and edit repositories.

**Each team will be for a specific project/manuscript.**

The read/write permissions in an organisation can get confusing, but to keep things simple we will allow all members to read and write (fork, commit and push to the Baum lab project repo). This may result in a barrage of emails from Github going to every project member whenever a pull request is made, but let's see how it goes for now.


### 4. Create your first repo:

See also: https://help.github.com/articles/create-a-repo

FOR TEAMS - we will do this when multiple members want to collaborate on the code and manuscript for one project/manuscript

For our purposes, the easiest way to do this is to create a repo on Github, fork it, and then clone onto your desktop.

1. Go to github.com/baumlab/teams/teamname
2. Click "Add repositories" to create new repo

Your repo can be private or public - up to you, but make sure that you discuss with everyone in the team before publishing a public repo.

### 5 Collaborate on a repository

You can either clone a baumlab repository and work directly from the main repo, or you can fork a separate copy of the repository to your personal account. Whichever route you choose, be sure to think about the best collaboration style for your project.

#### For cloning:

The team leader should add every team member as a collaborator (in the Settings section of the repo page). Now everyone will have read and write access to the repository. 

Open up terminal, navigate to the folder that you want to keep the repo in, then type:

```shell
git clone https://github.com/username/reponame.git
```

Now you will all be able to push and pull files to the main repository. You will encounter merge conflicts - this is when a file has been edited by two or more people, and git doesn't know how to merge the files together. More on this later.

#### For forking:

See also: https://help.github.com/articles/fork-a-repo

Each member, and you, should go to baumlab/projectname and click *Fork* at the top right of the screen. Now your personal Github account has forked the new repository. The next step is to clone this onto your local machine.

Now your computer will have a local version of the repo files - the master branch. When you make changes on your computer, you will commit and push the changes to your personal github server.

To keep up to date with the forked repository (i.e. the original repo) you'll need to add a 'remote'. This tells git where to find the forked repo:

```shell
git remote add nickname https://github.com/username/git_repo
```

For nickname, put the user name or repo name that you want to use to link with the remote. Now, if you write:

```shell
git remote -v
```

You can see where git looks for commits. 'origin' is your forked git repo (push local commits there) and 'nickname' is the original repo. Now, to grab changes from the original repo, write

```shell
git fetch nickname
git merge nickname
```


### 6 Make commits and push to Github

Now you work. And make edits. And push to github. This section is just for you - you won't be able to make changes to the team repo yet.

To add files to the repo:

```shell
git add filename
```

To commit the changes to the repo:

```shell
git commit -m "This is my first commit"
```

Now your local repository - the **master** branch - has some changes that aren't up to date with the Github server (the **origin** branch). You can check this using:

```shell
git status
```


Here you will either see "Your branch is up to date" and no changes have been made. Or, you will see red files that are "ahead" of the origin, and are called uncommitted changes. You need to push these up to github:

```shell
git push origin master
```

This command sends the commits from **master** to **origin** (from your computer to Github).

### 7 Forking continued: sending edits to the Baum lab repo

See also: https://help.github.com/articles/fork-a-repo

In our forked github hierarchy, we are one step away from the original, shared repository. Currently, your local machine is linked to your personal github account, that was originally forked from the Baum lab team repo. We need to connect back to the Baum lab, and the final step is called the **upstream**. We need to tell Github where **upstream** actually is.

So, in the master directory (your repo on your machine) go to terminal and type:

```shell
git remote add upstream https://github.com/baumlab/reponame.git
```

This tells your personal github account that the original repository is located at Baum lab. We then need to fetch any changes that might have been made to the original:

```shell
git fetch upstream
git merge upstream/master
```

This will change your local files to match those in the Baum lab repository.

### 8 Cloning and sharing a repository

To work on a shared repository, you need to start your day with a ```git pull```, to get any new changes from the baumlab repo. As you work, be sure to use ```git add -A``` and ```git commit -m 'commiting something'``` to keep your changes recorded. Before you push up to the main repository you will need to pull, add and commit, then push. If git finds a merge conflict, *you* will need to fix it. 

To fix a merge conflict, open up the conflicted file and look for the git language HEAD and lots of >>>>>>>>>>. This is the conflict. Delete the git messages and fix the conflict yourself, then add, commit and push. 

If you think that the merge conflict is a mistake (e.g. it's an R history file that you don't care about, or a pdf that can't be merged), you might want to accept the file that is either yours or theirs. To do this, run one of these commands:

```
git checkout --theirs filepath/filename 
git checkout --yours filepath/filename
```

Then add, commit, push. 



### 9 Short note on how we collaborate on Github

See also: https://help.github.com/articles/using-pull-requests

There are two main models of collaborating on Github:

1) Forking (i.e. everyone's repo is connected to every other repo)
With this model, one source repo is maintained by each collaborator. Anyone can fork off the repo, work on their own personal repo, and fetch upstream changes from collaborators. This is most useful when one person is in charge of all the edits, or when a number of people are working independently on different aspects of the project.

2) Shared Repository Model (i.e. everyone clones the same Git repo)
This is more commonly used by teams and organisations - everyone has write access to a single shared repository, and the team works more collaboratively on all aspects of the project.

### 10 Git LFS (large file storage)

Github doesn't like large files. In order to save big Rdata or csv files, we need to enable git lfs. Follow installation instructions here: <https://git-lfs.github.com/> or https://help.github.com/en/github/managing-large-files/installing-git-large-file-storage

To set up your machine to enable git lfs in every cloned repo:

```
git config --global filter.lfs.required true
git config --global filter.lfs.clean "git-lfs clean %f"
git config --global filter.lfs.smudge "git-lfs smudge %f"
```

Or, to manually add git lfs for each repo:

```
git lfs install
```

You need to tell git which files to track for LFS. For all Rdata files, use:

```
git lfs track '*.Rdata'
```

LFS caused me a few issues when I started. Check here for some tips: <https://shuhrat.github.io/programming/git-lfs-tips-and-tricks.html>
  
What do you do if you have accidentally committed a large file multiple times before tracking it with lfs? (DC ran into this problem, found out while trying to push multiple commits)  
```
git filter-branch --index-filter 'git rm --cached --ignore-unmatch LARGE_FILENAME_HERE'  
git lfs track LARGE_FILENAME_HERE  
```  
Then add, commit, and push your big file, and it should work!


##*END OF SECTIONS*



###### Notes from GYA git troubleshooting:

29/07/2016: Ran into problems with JKB writing text and JR writing code on the same document. Ended up with old version of the Rmd and decided to revert to an older commit (using git revert and the SHA for JKB's older commit). Then ended up with detached HEAD after trying to commit and push the correct commit version. Fixed that by creating a temporary branch and committing changes.

2016: How to reattach your HEAD after reverting: 
http://learnwebtutorials.com/you-are-in-detached-head-state-how-fix

29/07/2016: Merge conflicts/issues CAN and SHOULD be avoided. Use git add -A; git commit -m ''; git pull [to merge changes from public repo into your local version] and then git push [to share back with everyone].


