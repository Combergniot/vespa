# Copyright 2017 Yahoo Holdings. Licensed under the terms of the Apache 2.0 license. See LICENSE in the project root.
vespa_add_library(storage_teststatus TEST
    SOURCES
    statustest.cpp
    DEPENDS
    storage
    storage_testcommon
)
