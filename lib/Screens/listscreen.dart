import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:git_commands/Screens/detailscreen.dart';
import 'package:git_commands/utils/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';

class ListScreen extends StatefulWidget {

  final int listIndex;

  const ListScreen({Key? key,required this.listIndex}) : super(key: key);

  @override
  State<ListScreen> createState() => _ListScreenState(listIndex);


}

class _ListScreenState extends State<ListScreen> {

  final int listIndex;

  _ListScreenState(this.listIndex);


  final List<List<String>> data_2 = [
    ['git', 'The stupid content tracker'],
    ['git config', 'Get & set repository or global options'],
    ['git help', 'Display help information about git commands'],
    ['git bugreport', 'Collect information for user to a file a bug report'],
  ];

  final List<List<String>> data_3 = [
    ['git init', 'Create an empty git repository or reinitialize an existing one'],
    ['git clone', 'Clone a git repository to a new one'],
  ];

  final List<List<String>> data_4 = [
    ['git add', 'Add a file contents to the index'],
    ['git status', 'Show the working tree status'],
    ['git diff', 'Show the changes between commits, commit and working tree'],
    ['git commit', 'Record changes to the repository'],
    ['git notes', 'Add or inspect object notes'],
    ['git restore', 'Restore the working tree fields'],
    ['git reset', 'Reset current HEAD to the specified state'],
    ['git rm', 'Remove files from the working tree and from the index'],
    ['git mv', 'Move ot rename the file, a directory or a symlink'],

  ];

  final List<List<String>> data_5 = [
    ['git branch', 'List, create or delete a branches'],
    ['git checkout', 'Switch branches or restore working tree files'],
    ['git switch', 'Switch branches'],
    ['git merge', 'Join two or more development histories together'],
    ['git mergetool', 'Run merge conflict resolution tools to resolve merge conflicts'],
    ['git log', 'Show commit logs'],
    ['git stash', 'Stash the changes in a dirty working directory away'],
    ['git tag', 'Create, list, delete or verify a tag object signed with GPG'],
    ['git worktree', 'Manage multiple working trees'],

  ];

  final List<List<String>> data_6 = [
    ['git fetch', 'Download objects and refs another repository'],
    ['git pull', 'Fetch from and integrate with another repository or a local branch'],
    ['git push', 'Update remote refs along with associated objects'],
    ['git remote', 'Manage set of tracked repositories'],
    ['git submodule', 'Initialize, update or inspect submodules'],


  ];

  final List<List<String>> data_7 = [
    ['git show', 'Show various types of object'],
    ['git log', 'Show commits log'],
    ['git difftool', 'Show changes using common diff tools'],
    ['git range diff', 'Compare two commit ranges (e.g two versions of a branch)'],
    ['git shortlog', 'Summarize git log output'],
    ['git describe', 'Give an object human readable name based on an available reference'],

  ];


  final List<List<String>> data_8 = [
    ['git apply', 'Apply a patch to files and or to the index'],
    ['git cherry pick', 'Apply the changes introduced by some existing commands'],
    ['git rebase', 'Show changes using common diff tools'],
    ['git revert', 'Revert some existing commits'],

  ];

  final List<List<String>> data_9 = [
    ['git bisect', 'Use binary search to find the commit that introduced a bug'],
    ['git blame', 'Show what revision and author last modified each line of a file'],
    ['git grep', 'Print line matching a pattern'],

  ];

  final List<List<String>> data_10 = [
    ['gitattributes', 'Defining attributes per patch'],

  ];

  final List<List<String>> data_11 = [
    ['git am', 'Apply a series of patches from a mailbox'],
    ['git format patch', 'Prepare patches for e-mail submission'],
    ['git send email', 'Send a collection of patches as emails'],
    ['git request pull', 'Generates a summary of pending changes'],

  ];

  final List<List<String>> data_12 = [
    ['git svn', 'Bidirectional operation between a subversion repository and git'],
    ['git fast import', 'Backend for fast git data importers'],
  ];

  final List<List<String>> data_13 = [
    ['git clean', 'Remove untracked files from the working tree'],
    ['git gc', 'Cleanup unnecessary files and optimize the local repository'],
    ['git fsck', 'Verifies the connectivity and validity of the objects in the database'],
    ['git reflog', 'Manage reflog information'],
    ['git instaweb', 'Instantly browse your working repository in gitweb'],
    ['git filter branch', 'Rewrite branches'],
    ['git archive', 'Create an archive of files from a named tree'],
    ['git bundle', 'Move objects and refs by archive'],

  ];

  final List<List<String>> data_14 = [
    ['git daemon', 'A really simple server for git repositories'],
    ['git update server info', 'Update auxiliary info file to help dumb servers'],
  ];

  final List<List<String>> data_15 = [
    ['git cat file', 'Provide content or type and size information for repository objects'],
    ['git check ignore', 'Debug gitignore / exclude files'],
    ['git checkout index', 'Copy files from the index to the working tree'],
    ['git commit tree', 'Create a new commit objects'],
    ['git count objects', 'Count unpacked number of objects and their disk consumption'],
    ['git diff index', 'Compare a tree to the working tree or index'],
    ['git for each ref', 'Output information on each ref'],
    ['git hash object', 'Compute object ID and optionally creates a blob from a file'],
    ['git ls file', 'Show information about files in the index and the working tree'],
    ['git ls tree', 'List the contents of a tree object'],
    ['git merge base', 'Find as good common ancestors as possible for a merge'],
    ['git read tree', 'Reads tree information into the index'],
    ['git rev list', 'Lists commit objects in reverse chronological order'],
    ['git rev parse', 'Pick out and massage parameters'],
    ['git show ref', 'List references in a local repository'],
    ['git symbolic ref', 'Read, modify and delete symbolic refs'],
    ['git update index', 'Register file contents in the working tree to the index'],
    ['git update ref', 'Update the object name stored in a ref safely'],
    ['git verify pack', 'Validate packed Git archive files'],
    ['git write tree', 'Create a tree object from the current index'],
  ];

  final List<List<String>> data_16 = [
    ['git init', 'This command turns a directory into an empty Git repository. This is the first step in creating a repository. After running git init, adding and committing files, directories is possible'],
    ['git add', 'Adds files in the staging area for git, before a file is available to commit to a repository, the file needs to be added to the git index ( staging area ). There are a few different ways to use git add by adding entire directories, specific files or all unstaged files'],
    ['git commit', 'Record the changes made to the file to a local repository. For Easy reference, each commit has a unique ID. Its best practice to include a message with each commit explaining the changes made in a commit. Adding a commit message helps to find a particular change or understanding the changes'],
    ['git status', 'This command returns the current state of the repository git status will return the current working branch. If a file is in the current working branch. If a file is in the staging area but not committed, It shows with git status or if there are no changes, it will return noting to commit working directory clean'],
    ['git config', 'With Git there are many configurations and setting possible git config is how  to assign these settings two important settings are user user.name and user.email'],
    ['git branch', 'To determine what branch the local repository is on, add a new branch or delete a branch'],
    ['git checkout', 'To start working in a different branch use git checkout to switch branches'],
    ['git merge', 'Integrate branches together, git merge combines the changes from one branch to another branch, for example merge the changes made in a staging branch into the stable branch'],
  ];

  final List<List<String>> data_17 = [
    ['git remote', 'To connect a local repository with a remote repository. A remote repository can have a name set to to avoid having to remember the URL of the repository'],
    ['git clone',  'To create a local working copy of an existing remote repository, use git clone to copy and download the repository to a computer. Cloning is the equivalent of git init when working with a remote repository. Git will create a directory locally with all files and repository history'],
    ['git pull',  'To get the latest version of a repository run git pull. This pull the changes from the remote repository to the local computer'],
    ['git push',  'Send local commits to the remote repository, git push requires two parameters, the remote repository and the branch that the push is for'],
  ];

  final List<List<String>> data_18 = [
    ['git stash', 'To save changes made when they are not in a state to commit them to a repository This will store the work and give a clean working directory'],
    ['git log',  'To show the chronological commit history for a repository. This helps give context and history for a repository git log is available immediately on a recently cloned repository to see history'],
    ['git rm', 'Remove files or directories from the working index ( staging area ), with git rm there are two options to keep in mind force and cached' ]
  ];


  @override
  Widget build(BuildContext context) {
     if(widget.listIndex == 1) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Setup & Config'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: data_2.length,
          itemBuilder: (BuildContext context, int index) {
            List<String> row = data_2[index];
            return Card(
              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: ListTile(
                  onTap: ()
                  {
                    Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 2)));

                  },
                  title: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(row[0],
                        style: GoogleFonts.openSans(textStyle: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w800,))
                    ),
                  ), // Display item name
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                    child: Text(row[1],
                        style: GoogleFonts.openSans(textStyle: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                          fontWeight: FontWeight.w600,))
                    ),
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                    onPressed: () {
                      _copyToClipboard(
                          row[0]); // Copy the description to clipboard
                    },
                  ),
                ),
              ),
            );
          },
        ),
      );
    }
    else if(widget.listIndex == 2) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Getting & Creating'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: data_3.length,
          itemBuilder: (BuildContext context, int index) {
            List<String> row = data_3[index];
            return Card(
              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: ListTile(
                  onTap: ()
                  {
                    Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 2)));

                  },
                  title: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(row[0],
                        style: GoogleFonts.openSans(textStyle: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w800,))
                    ),
                  ), // Display item name
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                    child: Text(row[1],
                        style: GoogleFonts.openSans(textStyle: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                          fontWeight: FontWeight.w600,))
                    ),
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                    onPressed: () {
                      _copyToClipboard(
                          row[0]); // Copy the description to clipboard
                    },
                  ),
                ),
              ),
            );
          },
        ),
      );
    }
    else if(widget.listIndex == 3) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Basic Snapshotting'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: data_4.length,
          itemBuilder: (BuildContext context, int index) {
            List<String> row = data_4[index];
            return Card(
              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: ListTile(
                  onTap: ()
                  {
                    Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 2)));

                  },
                  title: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(row[0],
                        style: GoogleFonts.openSans(textStyle: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w800,))
                    ),
                  ), // Display item name
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                    child: Text(row[1],
                        style: GoogleFonts.openSans(textStyle: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                          fontWeight: FontWeight.w600,))
                    ),
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                    onPressed: () {
                      _copyToClipboard(
                          row[0]); // Copy the description to clipboard
                    },
                  ),
                ),
              ),
            );
          },
        ),
      );
    }
    else if(widget.listIndex == 4) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Branching & Merging'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: data_5.length,
          itemBuilder: (BuildContext context, int index) {
            List<String> row = data_5[index];
            return Card(
              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: ListTile(
                  onTap: ()
                  {
                    Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 2)));

                  },
                  title: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(row[0],
                        style: GoogleFonts.openSans(textStyle: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w800,))
                    ),
                  ), // Display item name
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                    child: Text(row[1],
                        style: GoogleFonts.openSans(textStyle: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                          fontWeight: FontWeight.w600,))
                    ),
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                    onPressed: () {
                      _copyToClipboard(
                          row[0]); // Copy the description to clipboard
                    },
                  ),
                ),
              ),
            );
          },
        ),
      );
    }
    else if(widget.listIndex == 5) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Inspection & Comparison'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: data_6.length,
          itemBuilder: (BuildContext context, int index) {
            List<String> row = data_6[index];
            return Card(
              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: ListTile(
                  onTap: ()
                  {
                    Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 2)));

                  },
                  title: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(row[0],
                        style: GoogleFonts.openSans(textStyle: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w800,))
                    ),
                  ), // Display item name
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                    child: Text(row[1],
                        style: GoogleFonts.openSans(textStyle: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                          fontWeight: FontWeight.w600,))
                    ),
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                    onPressed: () {
                      _copyToClipboard(
                          row[0]); // Copy the description to clipboard
                    },
                  ),
                ),
              ),
            );
          },
        ),
      );
    }
    else if(widget.listIndex == 6) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Handy Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: data_7.length,
          itemBuilder: (BuildContext context, int index) {
            List<String> row = data_7[index];
            return Card(
              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: ListTile(
                  onTap: ()
                  {
                    Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 2)));

                  },
                  title: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(row[0],
                        style: GoogleFonts.openSans(textStyle: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w800,))
                    ),
                  ), // Display item name
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                    child: Text(row[1],
                        style: GoogleFonts.openSans(textStyle: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                          fontWeight: FontWeight.w600,))
                    ),
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                    onPressed: () {
                      _copyToClipboard(
                          row[0]); // Copy the description to clipboard
                    },
                  ),
                ),
              ),
            );
          },
        ),
      );
    }
    else if(widget.listIndex == 7) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Patching'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: data_8.length,
          itemBuilder: (BuildContext context, int index) {
            List<String> row = data_8[index];
            return Card(
              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: ListTile(
                  onTap: ()
                  {
                    Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 2)));

                  },
                  title: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(row[0],
                        style: GoogleFonts.openSans(textStyle: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w800,))
                    ),
                  ), // Display item name
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                    child: Text(row[1],
                        style: GoogleFonts.openSans(textStyle: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                          fontWeight: FontWeight.w600,))
                    ),
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                    onPressed: () {
                      _copyToClipboard(
                          row[0]); // Copy the description to clipboard
                    },
                  ),
                ),
              ),
            );
          },
        ),
      );
    }
    else if(widget.listIndex == 8) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Debugging'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: data_9.length,
          itemBuilder: (BuildContext context, int index) {
            List<String> row = data_9[index];
            return Card(
              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: ListTile(
                  onTap: ()
                  {
                    Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 2)));

                  },
                  title: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(row[0],
                        style: GoogleFonts.openSans(textStyle: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w800,))
                    ),
                  ), // Display item name
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                    child: Text(row[1],
                        style: GoogleFonts.openSans(textStyle: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                          fontWeight: FontWeight.w600,))
                    ),
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                    onPressed: () {
                      _copyToClipboard(
                          row[0]); // Copy the description to clipboard
                    },
                  ),
                ),
              ),
            );
          },
        ),
      );
    }
    else if(widget.listIndex == 9) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Guides'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: data_10.length,
          itemBuilder: (BuildContext context, int index) {
            List<String> row = data_10[index];
            return Card(
              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: ListTile(
                  onTap: ()
                  {
                    Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 2)));

                  },
                  title: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(row[0],
                        style: GoogleFonts.openSans(textStyle: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w800,))
                    ),
                  ), // Display item name
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                    child: Text(row[1],
                        style: GoogleFonts.openSans(textStyle: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                          fontWeight: FontWeight.w600,))
                    ),
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                    onPressed: () {
                      _copyToClipboard(
                          row[0]); // Copy the description to clipboard
                    },
                  ),
                ),
              ),
            );
          },
        ),
      );
    }
    else if(widget.listIndex == 10) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Emails'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: data_11.length,
          itemBuilder: (BuildContext context, int index) {
            List<String> row = data_11[index];
            return Card(
              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: ListTile(
                  onTap: ()
                  {
                    Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 2)));

                  },
                  title: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(row[0],
                        style: GoogleFonts.openSans(textStyle: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w800,))
                    ),
                  ), // Display item name
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                    child: Text(row[1],
                        style: GoogleFonts.openSans(textStyle: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                          fontWeight: FontWeight.w600,))
                    ),
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                    onPressed: () {
                      _copyToClipboard(
                          row[0]); // Copy the description to clipboard
                    },
                  ),
                ),
              ),
            );
          },
        ),
      );
    }
    else if(widget.listIndex == 11) {
      return Scaffold(
        appBar: AppBar(
          title: Text('External Systems'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: data_12.length,
          itemBuilder: (BuildContext context, int index) {
            List<String> row = data_12[index];
            return Card(
              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: ListTile(
                  onTap: ()
                  {
                    Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 2)));

                  },
                  title: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(row[0],
                        style: GoogleFonts.openSans(textStyle: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w800,))
                    ),
                  ), // Display item name
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                    child: Text(row[1],
                        style: GoogleFonts.openSans(textStyle: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                          fontWeight: FontWeight.w600,))
                    ),
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                    onPressed: () {
                      _copyToClipboard(
                          row[0]); // Copy the description to clipboard
                    },
                  ),
                ),
              ),
            );
          },
        ),
      );
    }
    else if(widget.listIndex == 12) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Administration'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: data_13.length,
          itemBuilder: (BuildContext context, int index) {
            List<String> row = data_13[index];
            return Card(
              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: ListTile(
                  onTap: ()
                  {
                    Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 2)));

                  },
                  title: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(row[0],
                        style: GoogleFonts.openSans(textStyle: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w800,))
                    ),
                  ), // Display item name
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                    child: Text(row[1],
                        style: GoogleFonts.openSans(textStyle: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                          fontWeight: FontWeight.w600,))
                    ),
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                    onPressed: () {
                      _copyToClipboard(
                          row[0]); // Copy the description to clipboard
                    },
                  ),
                ),
              ),
            );
          },
        ),
      );
    }
    else if(widget.listIndex == 13) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Server Admin'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: data_14.length,
          itemBuilder: (BuildContext context, int index) {
            List<String> row = data_14[index];
            return Card(
              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: ListTile(
                  onTap: ()
                  {
                    Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 2)));

                  },
                  title: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(row[0],
                        style: GoogleFonts.openSans(textStyle: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w800,))
                    ),
                  ), // Display item name
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                    child: Text(row[1],
                        style: GoogleFonts.openSans(textStyle: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                          fontWeight: FontWeight.w600,))
                    ),
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                    onPressed: () {
                      _copyToClipboard(
                          row[0]); // Copy the description to clipboard
                    },
                  ),
                ),
              ),
            );
          },
        ),
      );
    }
    else if(widget.listIndex == 14) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Plumbing Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: data_15.length,
          itemBuilder: (BuildContext context, int index) {
            List<String> row = data_15[index];
            return Card(
              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: ListTile(
                  onTap: ()
                  {
                    Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 2)));

                  },
                  title: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(row[0],
                        style: GoogleFonts.openSans(textStyle: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w800,))
                    ),
                  ), // Display item name
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                    child: Text(row[1],
                        style: GoogleFonts.openSans(textStyle: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                          fontWeight: FontWeight.w600,))
                    ),
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                    onPressed: () {
                      _copyToClipboard(
                          row[0]); // Copy the description to clipboard
                    },
                  ),
                ),
              ),
            );
          },
        ),
      );
    }
    else if(widget.listIndex == 15) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Share & Update'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: data_16.length,
          itemBuilder: (BuildContext context, int index) {
            List<String> row = data_16[index];
            return Card(
              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: ListTile(
                  onTap: ()
                  {
                    Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 2)));

                  },
                  title: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(row[0],
                        style: GoogleFonts.openSans(textStyle: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w800,))
                    ),
                  ), // Display item name
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                    child: Text(row[1],
                        style: GoogleFonts.openSans(textStyle: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                          fontWeight: FontWeight.w600,))
                    ),
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                    onPressed: () {
                      _copyToClipboard(
                          row[0]); // Copy the description to clipboard
                    },
                  ),
                ),
              ),
            );
          },
        ),
      );
    }
    else if(widget.listIndex == 16) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Remote Commands'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: data_17.length,
          itemBuilder: (BuildContext context, int index) {
            List<String> row = data_17[index];
            return Card(
              child: Container(
                decoration: BoxDecoration(
                  color: ksecondcolor,
                  border: Border.all(
                    color: kprimarycolor, // Set border color
                    width: 1, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(2.0), // Set border radius
                ),
                child: ListTile(
                  onTap: ()
                  {
                    Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 2)));

                  },
                  title: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(row[0],
                        style: GoogleFonts.openSans(textStyle: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w800,))
                    ),
                  ), // Display item name
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                    child: Text(row[1],
                        style: GoogleFonts.openSans(textStyle: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                          fontWeight: FontWeight.w600,))
                    ),
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                    onPressed: () {
                      _copyToClipboard(
                          row[0]); // Copy the description to clipboard
                    },
                  ),
                ),
              ),
            );
          },
        ),
      );
    }
     else if(widget.listIndex == 17) {
       return Scaffold(
         appBar: AppBar(
           title: Text('Remote Commands'),
           centerTitle: true,
         ),
         body: ListView.builder(
           itemCount: data_18.length,
           itemBuilder: (BuildContext context, int index) {
             List<String> row = data_18[index];
             return Card(
               child: Container(
                 decoration: BoxDecoration(
                   color: ksecondcolor,
                   border: Border.all(
                     color: kprimarycolor, // Set border color
                     width: 1, // Set border width
                   ),
                   borderRadius: BorderRadius.circular(2.0), // Set border radius
                 ),
                 child: ListTile(
                   onTap: ()
                   {
                     Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: DetailScreen(listIndex: index,value: 2)));

                   },
                   title: Padding(
                     padding: const EdgeInsets.only(top: 8.0),
                     child: Text(row[0],
                         style: GoogleFonts.openSans(textStyle: TextStyle(
                           fontSize: 20,
                           color: Colors.white,
                           fontWeight: FontWeight.w800,))
                     ),
                   ), // Display item name
                   subtitle: Padding(
                     padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                     child: Text(row[1],
                         style: GoogleFonts.openSans(textStyle: TextStyle(
                           fontSize: 12,
                           color: Colors.grey,
                           fontWeight: FontWeight.w600,))
                     ),
                   ),
                   trailing: IconButton(
                     icon: Icon(Icons.copy, color: Colors.white, size: 24,),
                     onPressed: () {
                       _copyToClipboard(
                           row[0]); // Copy the description to clipboard
                     },
                   ),
                 ),
               ),
             );
           },
         ),
       );
     }

    else
      {
        return Container();
      }
  }

  void _copyToClipboard(String text) {
    Clipboard.setData(ClipboardData(text: text));
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Git Command Copied to clipboard')),
    );
  }

}
