FROM volvodocker/testdep:latest

COPY MinTest.java .

RUN javac -cp .:junit-4.12.jar:hamcrest-core-1.3.jar MinTest.java
CMD java -cp .:junit-4.12.jar:hamcrest-core-1.3.jar org.junit.runner.JUnitCore MinTest


