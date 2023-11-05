#!/bin/bash

# Time to wait
wait_time=5

# Countdown loop
while [ $wait_time -gt 0 ]; do
   echo "Waiting for $wait_time more seconds..."
   sleep 1
   wait_time=$((wait_time-1))
done

# Running the spark-submit command
echo "Running spark-submit..."

# Running the spark-submit command with custom log4j configuration
echo "Running spark-submit with custom logging configuration..."
spark-submit \
    --conf "spark.driver.extraJavaOptions=-Dlog4j.configuration=file:../opt/bitnami/spark/conf/log4j.properties" \
    --conf "spark.executor.extraJavaOptions=-Dlog4j.configuration=file:../opt/bitnami/spark/conf/log4j.properties" \
    structured_network_wordcount.py 0.0.0.0 9999
