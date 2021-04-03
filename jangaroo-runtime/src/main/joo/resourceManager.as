package {
import mx.resources.IResourceManager;
import mx.resources.ResourceManager;

/**
 * A reference to the object which manages all of the application's localized resources.
 * This is a singleton instance which implements the IResourceManager interface.
 */
public const resourceManager:IResourceManager = ResourceManager.getInstance();
}
