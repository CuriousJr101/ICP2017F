A).
    
    1). Command: git branch test1 || Output: -

    2). Command: git branch test2 || Output: -

B).

    1). Command: git checkout test1 || Output: Switched to branch 'test1'

    2). Command: cd Homework/2/ || Output: -

    3). Command: vim test.txt || Output: -

D).

	1). Command: git add . || Output: -

    2). Command: git commit -a || Output: [test1 9620e5c] Homework 1 Update 2.1
                                            1 file changed, 1 insertion(+)
                                            create mode 100644 Homework/2/test.txt

    3). Command: git push origin test1 || Output: Counting objects: 5, done.
                                                    Delta compression using up to 4 threads.
                                                    Compressing objects: 100% (3/3), done.
                                                    Writing objects: 100% (5/5), 426 bytes | 426.00 KiB/s, done.
                                                    Total 5 (delta 1), reused 0 (delta 0)
                                                    remote: Resolving deltas: 100% (1/1), completed with 1 local object.
                                                    To https://github.com/CuriousJr101/ICP2017F.git
                                                    * [new branch]      test1 -> test1
                                                    * [new branch]      test2 -> test2


E). [CuriousJr101/Git/ICP2017F/Homework/2/]

	1). Command: git checkout test2 || Output: Switched to branch 'test2'

	2). Command: ls || Output: README.md

There is no test.txt in the test2 branch because both of the branches of are independent of each other. They are separate snapshots of the master branch in which any change in one branch has no impact in the other. They are two separate paths of changes unique to one another.

F). [CuriousJr101/Git/ICP2017F/Homework/2/] (in test2 branch)

	1). Command: vim test.txt || Output: -

G).

    1). Command: git checkout test1 || Output:    error: The following untracked working tree files would be overwritten by checkout:
                                                    Homework/2/test.txt
                                                    Please move or remove them before you switch branches.
                                                    Aborting

(Staging and pushing in branch test2)

    2). Command: git add -a || Ouput: -

    3). Command: git commit -a || Output:     [test2 4ed78e9] Homework 1 Update 2.2
                                                1 file changed, 1 insertion(+)
                                                create mode 100644 Homework/2/test.txt

    4). Command: git push --all || Output:    Counting objects: 5, done.
                                                Delta compression using up to 4 threads.
                                                Compressing objects: 100% (3/3), done.
                                                Writing objects: 100% (5/5), 429 bytes | 429.00 KiB/s, done.
                                                Total 5 (delta 1), reused 0 (delta 0)
                                                remote: Resolving deltas: 100% (1/1), completed with 1 local object.
                                                To https://github.com/CuriousJr101/ICP2017F.git
                                                8a2e403..4ed78e9  test2 -> test2

    5). Command: git checkout test1 || Output: Switched to branch 'test1'

H). 

    1). Command: git checkout master || Output:   Switched to branch 'master'
                                                    Your branch is up-to-date with 'origin/master'.

    2). Command: git merge test1 || Output:   Updating 8a2e403..9620e5c
                                                Fast-forward
                                                Homework/2/test.txt | 1 +
                                                1 file changed, 1 insertion(+)
                                                create mode 100644 Homework/2/test.txt




I). [CuriousJr101/Git/ICP2017F/Homework/2/] (Master Branch)

	1). Command: ls || Output: README.md	test.txt

J). 

    1). Command: git merge test2 || Output:   Auto-merging Homework/2/test.txt
                                                CONFLICT (add/add): Merge conflict in Homework/2/test.txt
                                                Automatic merge failed; fix conflicts and then commit the result.

We get this error when we attempted to merge the test2 branch becasue both the test2 branch and the master branch have the same file, test.txt, but the information in the txt file is different for each branch. Since the data was different, the merge couldn't be completed.

K).

    1). Command: git checkout test2 || Output:    Homework/2/test.txt: needs merge
                                                    error: you need to resolve your current index first

L). 

    1). Command: git status || Output:    On branch master
                                            Your branch is ahead of 'origin/master' by 1 commit.
                                            (use "git push" to publish your local commits)

                                            You have unmerged paths.
                                            (fix conflicts and run "git commit")
                                            (use "git merge --abort" to abort the merge)

                                            Unmerged paths:
                                            (use "git add <file>..." to mark resolution)

                                            both added:      test.txt

                                            no changes added to commit (use "git add" and/or "git commit -a")

Through the git status command, the reason for the conflict is that there are unmerged paths, more specifically the test.txt is still unmerged.

M). 

    1). Command: vim test.txt || Output: - 
                (changed the information in the file to avoid the conflict due to merging)

N). 

    1). Command: git status || Output:    On branch master
                                            Your branch is ahead of 'origin/master' by 1 commit.
                                            (use "git push" to publish your local commits)

                                            You have unmerged paths.
                                            (fix conflicts and run "git commit")
                                            (use "git merge --abort" to abort the merge)

                                            Unmerged paths:
                                            (use "git add <file>..." to mark resolution)

                                            both added:      test.txt

                                            no changes added to commit (use "git add" and/or "git commit -a")

    2). Command: git add -a || Ouput: -

    3). Command: git commit -a || Output:   [master 2c79d4b] Merge branch 'test2' With changes made to test.txt Homework 1 Update 2.3

    4). Command: git push --all || Output:    Counting objects: 5, done.
                                                Delta compression using up to 4 threads.
                                                Compressing objects: 100% (3/3), done.
                                                Writing objects: 100% (5/5), 475 bytes | 475.00 KiB/s, done.
                                                Total 5 (delta 1), reused 0 (delta 0)
                                                remote: Resolving deltas: 100% (1/1), completed with 1 local object.
                                                To https://github.com/CuriousJr101/ICP2017F.git
                                                8a2e403..2c79d4b  master -> master

    5). Command: git checkout test2 || Output: Switched to branch 'test2'

O). (in test2 branch)

    1). Command: git branch test1 -d || Output:   error: The branch 'test1' is not fully merged.
                                                    If you are sure you want to delete it, run 'git branch -D test1'.

P). 
    
    1). Command: git checkout master || Output:   Switched to branch 'master'
                                                    Your branch is up-to-date with 'origin/master'.

    2). Command: git branch test1 -d || Output: Deleted branch test1 (was 9620e5c).
    
    3). Command: git branch || Output:    * master
                                            test2

Q). You can only delete the branch if it has been merged with another branch (due to the alias -d). For instance, you get the error message, when you attempt to delete the test1 branch from the test2 branch because the two were not merged. However, when you delete the test1 branch from the master branch you don't get any error becasue of the fact that both of those branches have been merged together.

R). 

    1). Command: git checkout test2 || Output: Switched to branch 'test2'

    2). Command: git branch test2 -d || Output: error: Cannot delete branch 'test2' checked out at '/Users/CuriousJr101/Git/ICP2017F'

S). 

    1). Command: git checkout master || Output:   Switched to branch 'master'
                                                    Your branch is up-to-date with 'origin/master'.

    2). Command: git branch test2 -d || Output: Deleted branch test2 (was 4ed78e9).

    3). Command: git branch || Output: * master

T). 

    1). Command: git add . || Output: -

    2). Command: git commit -a || Output: On branch master
                                            Your branch is up-to-date with 'origin/master'.

                                            nothing to commit, working tree clean

    3). Command: git push --all || Output: Everything up-to-date

(To delete the branches in the remote repository since it wasnt with the git push)
    
    4). Command: git push origin :test2 || Ouput:   To https://github.com/CuriousJr101/ICP2017F.git
                                                    - [deleted]         test2 

    5). Command: git push origin :test1 || Output:  To https://github.com/CuriousJr101/ICP2017F.git
                                                    - [deleted]         test1

Bonus 1:
3). https://curiousjr101.github.io/ICP2017F/.






