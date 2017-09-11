A).

        1). Command: git branch test1 || Output: -

        2). Command: git branch test2 || Output: -

B).

        1). Command: git checkout test1 || Output: Switched to branch 'test1'

        2). Command: cd Homework/2/ || Output: -

        3). Command: vim test.txt || Output: -

D). 

	1). Command: git add . || Output: -

	2). Command: git commit -a || Output: 	[test1 58bc550] Adding test.txt to test1 branch
						1 file changed, 4 insertions(+)
						create mode 100644 Homework/2/test.txt

	3). Command: git push origin test1 || Output: 	Counting objects: 15, done.
							Delta compression using up to 4 threads.
							Compressing objects: 100% (11/11), done.
				 			Writing objects: 100% (15/15), 1.57 KiB | 802.00 KiB/s, done.
							Total 15 (delta 4), reused 0 (delta 0)
							remote: Resolving deltas: 100% (4/4), completed with 2 local objects.
							To https://github.com/CuriousJr101/ICP2017F.git
							4459f6b..58bc550  test1 -> test1

E). [CuriousJr101/Git/ICP2017F/Homework/2/]

	1). Command: git checkout test2 || Output: Switched to branch 'test2'

	2). Command: ls || Output: README.md

There is no test.txt in the test2 branch because both of the branches of are independent of each other. They are separate snapshots of the master branch in which any change in one branch has no impact in the other. They are two separate paths of changes unique to one another.

F). [CuriousJr101/Git/ICP2017F/Homework/2/]

	1). Command: vim test.txt || Output: -

	2). Command: git add . || Output: -

	3). Command: git commit -a || Output: 	[test2 fd1a387] Adding test.txt to test2 branch
 						1 file changed, 3 insertions(+)
 						create mode 100644 Homework/2/test.txt

	4). Command: git push origin test2 || Output: 	Delta compression using up to 4 threads.
							Compressing objects: 100% (3/3), done.
							Writing objects: 100% (4/4), 361 bytes | 361.00 KiB/s, done.
							Total 4 (delta 1), reused 0 (delta 0)
							remote: Resolving deltas: 100% (1/1), completed with 1 local object.
							To https://github.com/CuriousJr101/ICP2017F.git
   							f6f9dcf..fd1a387  test2 -> test2

G).

	1). Command: git checkout test1 || 
