// Copyright 2017 Yahoo Holdings. Licensed under the terms of the Apache 2.0 license. See LICENSE in the project root.
package com.yahoo.vespa.hosted.controller.api.identifiers;

/**
 * @author smorgrav
 */
public class RotationId extends Identifier {

    public RotationId(String id) {
        super(id);
    }

    @Override
    public void validate() {
        super.validate();
        validateSerialized();
    }
}
