# Copyright 2017 Yahoo Holdings. Licensed under the terms of the Apache 2.0 license. See LICENSE in the project root.
vespa_add_executable(filedistribution_filedistributor_app
    SOURCES
    filedistributor.cpp
    OUTPUT_NAME vespa-filedistributor-bin
    INSTALL sbin
    DEPENDS
    filedistribution_distributor
    filedistribution_filedistributionmodel
    filedistribution_filedistributorrpc
    filedistribution_common
)
target_compile_options(filedistribution_filedistributor_app PRIVATE -DTORRENT_DISABLE_ENCRYPTION -DTORRENT_DISABLE_DHT -DWITH_SHIPPED_GEOIP_H -DBOOST_ASIO_HASH_MAP_BUCKETS=1021 -DBOOST_EXCEPTION_DISABLE -DBOOST_ASIO_ENABLE_CANCELIO -DBOOST_ASIO_DYN_LINK -DTORRENT_LINKING_SHARED)
vespa_add_target_system_dependency(filedistribution_filedistributor_app boost boost_system${VESPA_BOOST_LIB_SUFFIX})
vespa_add_target_system_dependency(filedistribution_filedistributor_app boost boost_thread${VESPA_BOOST_LIB_SUFFIX})
vespa_add_target_system_dependency(filedistribution_filedistributor_app boost boost_program_options${VESPA_BOOST_LIB_SUFFIX})
vespa_add_target_system_dependency(filedistribution_filedistributor_app boost boost_filesystem${VESPA_BOOST_LIB_SUFFIX})
