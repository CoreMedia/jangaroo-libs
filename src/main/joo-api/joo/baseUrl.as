/*
 * Copyright 2009 CoreMedia AG
 *
 * Licensed under the Apache License, Version 2.0 (the "License"); 
 * you may not use this file except in compliance with the License. 
 * You may obtain a copy of the License at
 * http://www.apache.org/licenses/LICENSE-2.0 
 *
 * Unless required by applicable law or agreed to in writing, 
 * software distributed under the License is distributed on an "AS
 * IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either 
 * express or implied. See the License for the specific language 
 * governing permissions and limitations under the License.
 */
package joo {

/**
 * Jangaroo's base URL to use for loading resources like scripts and classes.
 * Must be set before loading jangaroo-application.js.
 * <p>If not set, it is determined by finding the first script element with a jangaroo-* src URL
 * and using its base URL minus the "joo" path.</p>
 * <p>If this fails, the base URL defaults to the empty string, so the "joo" path is relative to
 * the current request URL.</p>
 *
 * @see joo.loadScript
 * @see joo.loadScriptAsync
 * @see joo.loadModule
 * @see joo.loadDebugScript
 */
public var baseUrl:String;

}
