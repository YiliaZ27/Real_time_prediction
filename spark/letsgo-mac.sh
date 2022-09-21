#!/usr/bin/env sh

echo I assume you have Python and Jupyter installed and accessible in this environment

CURRENT_HOME="$( cd "$(dirname "$0")" ; pwd -P )"
export SPARK_HOME=$CURRENT_HOME/spark-3.2.1-bin-hadoop2.7
# export JAVA_HOME=$CURRENT_HOME/jdk-11.0.14.1+1-jre_mac
export PYSPARK=$SPARK_HOME/bin/pyspark

export PYSPARK_DRIVER_PYTHON="jupyter" 
export PYSPARK_DRIVER_PYTHON_OPTS="notebook" 
export PYSPARK_PYTHON=python3

chmod +x $JAVA_HOME/bin/*
chmod +x $SPARK_HOME/bin/*

echo Ready to start
echo $PYSPARK

$PYSPARK
