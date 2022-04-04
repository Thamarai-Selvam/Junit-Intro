@echo off
set FileName=ICalculator.java Calculator.java
set TestFileName=CalculatorTest.java
set JUnitJAR=junit-platform-console-standalone-1.8.2.jar

rmdir out
mkdir out

echo Compiling %FileName%
javac -d out %FileName%

echo Compiling %TestFileName%
javac -d out -cp out:%JUnitJAR% %TestFileName%

echo Running tests from %TestFileName%
java -jar %JUnitJAR% --class-path out --scan-class-path