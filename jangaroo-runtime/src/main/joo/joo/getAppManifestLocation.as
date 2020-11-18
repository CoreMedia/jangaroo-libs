/*
 * Copyright 2020 CoreMedia AG
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
import js.URL;

/**
 * Returns the URL of to the manifest of the given appEntry. The currently set language is always taken into
 * account when resolving a localized manifest.
 *
 * @return the URL of to the manifest of the given appEntry.
 */
[Native]
public native function getAppManifestLocation(appEntry: AppEntry): URL;

}
