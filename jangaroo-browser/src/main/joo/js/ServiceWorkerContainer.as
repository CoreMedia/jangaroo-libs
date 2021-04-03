package js {
public interface ServiceWorkerContainer {

  function register(scriptURL: Object, options: Object = null): Promise;
}
}
