
#Github walkthrough for Baum lab members
Started April 30th 2014

###1. Set up your personal account

See also: https://help.github.com/articles/set-up-git

```shell
git config --global user.name "juliakbaum"   
# Sets the default name for git to use when you commit
git config --global user.email "juliakbaum@gmail.com" 
# Sets the default email for git to use when you commit
```

###2. Navigating the Github website

Clicking the Git icon button in top left (the cat) shows you the main screen. 
Note: Repositories which you are collaborating to are only viewable on this screen.

Username/photo icon in upper right shows dashboard for:

1. Contributions: Lists the repositories that you have recently worked in, and your Github activity over the last year
2. Repositories: Shows your private and public repositories, and the repos you have forked from other members 
3. Public activity: Shows your work on Github - what have you forked, pulled, merged?


###3. Join the Baum lab organisation

To use Github within the Baum lab organisation, contact James or Julia to be added as a member. For any project in the Baum lab, we will create a team that allows multiple users to create and edit repositories. 

**Each team will be for a specific project/manuscript.**

The read/write permissions in an organisation can get confusing, but to keep things simple we will allow all members to read and write (fork, commit and push to the Baum lab project repo). This may result in a barrage of emails from Github going to every project member whenever a pull request is made, but let's see how it goes for now.


###4. Create your first repo: 

See also: https://help.github.com/articles/create-a-repo

FOR TEAMS - we will do this when multiple members want to collaborate on the code and manuscript for one project/manuscript

For our purposes, the easiest way to do this is to create a repo on Github, fork it, and then clone onto your desktop.

1. Go to github.com/baumlab/teams/teamname
2. Click "Add repositories" to create new repo

Your repo can be private or public - up to you, but make sure that you discuss with everyone in the team before publishing a public repo.

###5 Fork to your personal account

See also: https://help.github.com/articles/fork-a-repo

Now every member of the team will have access to the repository. Each member, and you, should go to baumlab/projectname and click *Fork* at the top right of the screen.

Now your personal Github account has forked the new repository. The next step is to clone this onto your local machine.

Open up terminal, navigate to the folder that you want to keep the repo in, then type:

```shell
git clone https://github.com/username/reponame.git
```

Now your computer will have a local version of the repo files - the master branch. When you make changes on your computer, you will commit and push the changes to your personal github server.


###6 Make commits and push to Github

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

###7 Sending edits to the Baum lab repo

See also: https://help.github.com/articles/fork-a-repo

In our github hierarchy, we are one step away from the original, shared repository. Currently, your local machine is linked to your personal github account, that was originally forked from the Baum lab team repo. We need to connect back to the Baum lab, and the final step is called the **upstream**. We need to tell Github where **upstream** actually is.

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

Now, the important part - changing the files in the Baum lab repo. To do this we need to send a pull request: https://help.github.com/articles/using-pull-requests

On github.com, navigate to your username and the forked repo. On the right hand side, click *Pull Request*, then *New pull request*.

If your personal repo differs from the Baum lab repo, you will see the file changes on this page. To request a review of the changes by the Baum lab, click *Create Pull Request*. Now you can:

**A)** Wait for the Team administrator to review edits and decide whether to merge or reject the changes

OR

**B)** If you have write priveleges, and you know that no-one has to review the changes, you can merge the pull request yourself. 

On baumlab/reponame, you can click pull requests again, look at the *Closed* tab, and you can see all the merged pull requests. This way everyone can track the history of changes to the repo, and nothing gets lost in the edit.

###8 Short note on how we collaborate on Github

See also: https://help.github.com/articles/using-pull-requests

There are two main models of collaborating on Github:

1) Fork & Pull
With this model, one source repo is maintained by one project manager. Anyone can fork off the repo, work on their own personal repo, and submit pull requests to the project manager. This is most useful when one person is in charge of all the edits, or when a number of people are working independently on different aspects of the project.

2) Shared Repository Model
This is more commonly used by teams and organisations - everyone has write access to a single shared repository, and the team works more collaboratively on all aspects of the project. 

It might be easiest to think of the 2 models in terms of their pull requests. In the Fork & Pull, pull requests are for project managers to review changes to their work; in the shared repository model, pull requests start discussions and code review between all members of a team, before being merged into the master copy.

 
