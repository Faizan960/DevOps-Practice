#!/bin/bash
 
greet() {

 echo "Welcome $1 to DevOps"
}

echo "Enter your name"
read name

greet "$name"
