

### Notes for introducing version control, Github, and Atom
### Baum lab
#####November 2014
### James Robinson, Mairin Deith

Thanks to http://software-carpentry.org/lessons.html for the walkthrough.

### Part 1 - version control in the Terminal

Get set up on your machine - for first time users.

```shell
git config --global user.name "myusername"
# Sets the default name for git to use when you commit
git config --global user.email "myemailaddress"
# Sets the default email for git to use when you commit
```

Now we will use Git on our local machine.

1. Create a directory and a text file
2. Initialise the directory
3. Add file for tracking, then commit
4. Edit that file
5. Explore file history.

```shell
mkdir gitpractice
cd git practice

git init
ls
ls -a

git status

git add practice.txt
git status

git commit -m "First commit"
git status

nano practice.txt
git status
git diff
git commit -m "Updated text file 11am"
```

### Part 2 - Linking to your Github account

1. Log in to Github and create a new repository
2. Link repository to local machine
3. Push files from local to Github

```shell
git remote add origin https://github.com/username/gitpractice
git remote -v
git push origin master
git pull origin master
```

### Part 3 - Using Atom instead of the terminal

MAIRIN

### Part 4 - Collaborating on Github

We are using two ways to collaborate on Github.

1. "Fork & Pull" (collaboration between individuals): here, we fork off the account of whoever is leading a project, and changes are made by submitting pull requests. There is no "master" repo.

2. "Shared repository model" (collaboration using a "master" organisation repo): here, each team member forks off a master repository and submits pull requests to update their work. The project leader has read/write permissions for the master repository, and can review the pull requests.
