#!/usr/bin/env bash

PROJECT_HOME=~/stage/consolidation/heimdall-hoard/spark-ingest
JOB_DIR=~/stage/consolidation/JOB_DIR
DIST_DIR=~/stage/consolidation/heimdall-hoard/spark-ingest/target
CLEAN_UP=~/stage/consolidation/JOB_DIR/bin/cleanup.sh

echo creating directory, setting up config and submitting job...
cd "$PROJECT_HOME"
mvn clean package -DskipTests
mkdir -p "$JOB_DIR"
cp "$DIST_DIR/spark-ingest-1.0-SNAPSHOT-dist-assembly.tar.gz" "$JOB_DIR"
cd "$JOB_DIR"
tar xvf "spark-ingest-1.0-SNAPSHOT-dist-assembly.tar.gz"
# chmod +x "$CLEAN_UP"
# "$CLEAN_UP"
