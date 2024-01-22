#!/bin/bash

if [ "$1" == "build" ]; then
    echo "Building..."
    mkdir -p build
    find src -type f -name "*.java" > build/sources.txt
    javac -d out/classes -cp lib/*:src @build/sources.txt
    jar -cf HelloWorld.jar out/classes
    echo "Build complete"
elif [ "$1" == "run" ]; then
    echo "Running"
    java -cp out/classes:lib/* "$2"
elif [ "$1" == "dependencies" ]; then
    echo "Resolving dependencies"
    mkdir -p lib
    java -jar ivy-2.5.2.jar -retrieve "lib/[artifact]-[type]-[revision].[ext]"
elif [ "$1" == "clean" ]; then
    echo "Cleaning project"
    echo "Removing library folder..."
    rm -rd ./lib
    echo "Removing out folder..."
    rm -rd ./out
    echo "Removing build folder..."
    rm -rd ./build
    echo "Removing project jar file"
    rm -f ./HelloWorld.jar
    echo "Cleaning done!"
else
  echo "Unknown command"
fi