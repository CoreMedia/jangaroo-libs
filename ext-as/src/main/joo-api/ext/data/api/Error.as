package ext.data.api {

import ext.Error;

/**
 * Error class for ext.data.Api errors
 */
public class Error extends ext.Error {
    public native function Error(message, arg) : void;
}}
