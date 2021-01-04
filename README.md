# Systems: Attacks and Defences

## The following tasks were performed

### Git & Travis CI (Part 1)

* Create an ssh key pair to perform actions from the command line
* Create a GPG key pair to sign commits
* Set up Travis to test your repository at each commit

### Exploits (Part 2)

* Create two input payloads that crash the program (Segmentation Fault), each crash has a different root cause
* Create one input payload that hangs the program (Infinite Loop)
* Write Bug.txt to explain the bugs triggered by each of the payloads
* Fix the bugs and perform regression tests using Travis

### Coverage and Fuzzing (Part 3)

* Use lcov to perform a coverage test and see how much of the program is covered
* Create testcases to increase coverage by two more lines
* Fuzz the program using AFL
* Use passing test cases generated by AFL to improve coverage of the program
* Fix two fuzzer generated tests that crash the program
* Perform regression tests using Travis CI
* Brief write up explaining the above bugs that crashed the program

### Please look at [intructions](HW1_Instructions.md) for more details
