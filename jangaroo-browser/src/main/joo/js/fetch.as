package js {

/**
 * The fetch() method of the WindowOrWorkerGlobalScope mixin starts the process of fetching a resource from the network,
 * returning a promise which is fulfilled once the response is available. The promise resolves to the Response object
 * representing the response to your request. The promise does not reject on HTTP errors — it only rejects on network
 * errors. You must use then handlers to check for HTTP errors.
 *
 * WindowOrWorkerGlobalScope is implemented by both Window and WorkerGlobalScope, which means that the fetch() method is
 * available in pretty much any context in which you might want to fetch resources.
 *
 * A fetch() promise only rejects when a network error is encountered (which is usually when there’s a permissions issue
 * or similar). A fetch() promise does not reject on HTTP errors (404, etc.). Instead, a then() handler must check the
 * Response.ok and/or Response.status properties.
 *
 * The fetch() method is controlled by the connect-src directive of Content Security Policy rather than the directive of
 * the resources it's retrieving.
 *
 * @param input This defines the resource that you wish to fetch. This can either be:
 *              - A String containing the direct URL of the resource you want to fetch. Some browsers accept the blob:
 *                and data: schemes.
 *              - A {@link js.Request} object.
 * @param init
 * @return A Promise that resolves to a {@link Response} object.
 * @throws AbortError The request was aborted due to a call to the AbortController method abort() method.
 * @throws TypeError The specified URL string includes user credentials. This information should instead be provided
 *                   using an Authorization header.
 */
[Native("fetch")]
public native function fetch(input: *, init: RequestInit = undefined): Promise;

}
