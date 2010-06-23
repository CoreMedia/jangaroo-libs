package ext.data.datareader {

import ext.ExtError;

/**
 * General error class for ext.data.DataReader
 */
public class Error extends ext.ExtError {
    public native function Error(message, arg);
}}
