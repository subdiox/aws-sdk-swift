#!/bin/bash

usage() {
    echo "Use case 1:"
    echo " ./scripts/mergeModels Source/Services"
    echo ""
    echo "Use case 2: merge all in single directory if it has swift files"
    echo " ./scripts/mergeModels codegen/sdk-codegen/build/smithyprojections/sdk-codegen/iam.2010-05-08/swift-codegen/IAM/models"
}

if [ $# -ne 1 ]; then
    usage
    exit 1
fi

RELDIR=$1
if [ ! -d ${RELDIR} ]; then
    echo "Not a directory: ${RELDIR}"
    exit 1
fi

MODELS="Models.swift"

mergeFiles() {
    TEMP=`mktemp`
    cat *.swift | grep -e "//\ Code\ generated" | sort | uniq >> ${TEMP}
    cat *.swift | grep -e "^import\ " -e "@_spi" | sort | uniq  >> ${TEMP}
    cat *.swift | grep -ve "^import\ " -ve "@_spi" -ve "//\ Code\ generated" >> ${TEMP}
    rm -f *.swift
    cat ${TEMP} | sed '/^$/N;/^\n$/D' > ${MODELS}
}

mergeFilesInDir() {
    for sdk in `ls ${RELDIR}`; do
	MODELDIR=${RELDIR}/${sdk}/models
	if [ ! -d ${MODELDIR} ]; then
	    echo "Bail, this directory does not seem right: ${MODELDIR}"
	    continue
	fi
	pushd ${MODELDIR}    
	if [ -f ${MODELS} ]; then
        echo "${sdk} has ${MODELS} already generated"
        echo "Removing ${MODELS}"
        rm -f ${MODELS}
	fi
	mergeFiles
	popd
    done
}

ls ${RELDIR}| grep -e "\.swift$" > /dev/null
if [ $? -eq 0 ]; then
    pushd ${RELDIR}
    mergeFiles
    popd
else
    mergeFilesInDir
fi
