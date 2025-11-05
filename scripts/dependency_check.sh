#!/bin/bash
if ! command -v "dependency_command" &> /dev/null; then
    echo "Dependency not found, exiting"
    exit 1
fi

#script to check for dependencies before starting a service.
