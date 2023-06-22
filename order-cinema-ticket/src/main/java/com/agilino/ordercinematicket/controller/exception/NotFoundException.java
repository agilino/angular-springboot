package com.agilino.ordercinematicket.controller.exception;

/**
 * Exception to be thrown when datasource does not find data.
 */
public class NotFoundException extends RuntimeException {

    public NotFoundException(String message) {
        super(message);
    }

    public NotFoundException() {
        super("Resource not found");
    }
}
