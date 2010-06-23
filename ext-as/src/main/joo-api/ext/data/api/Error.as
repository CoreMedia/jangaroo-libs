package ext.data.api {

import ext.ExtError;

/**
 * Error class for ext.data.Api errors
 */
public class Error extends ext.ExtError {
    public native function Error(message, arg) : void;
}}
