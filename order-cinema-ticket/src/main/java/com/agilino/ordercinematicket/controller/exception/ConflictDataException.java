package com.agilino.ordercinematicket.controller.exception;

public class ConflictDataException extends RuntimeException{
    public ConflictDataException(String message) {
        super(message);
    }
}
