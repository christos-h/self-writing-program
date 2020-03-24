javac SelfWritingProgram.java
java SelfWritingProgram | diff SelfWritingProgram.java - || (echo "Inputs are different" && exit 1)
echo "Programs are identical at $(cat SelfWritingProgram.java | wc -c) characters"
exit 0;
