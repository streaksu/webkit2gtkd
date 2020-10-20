module webkit2.InstallMissingMediaPluginsPermissionRequest;

private import glib.Str;
private import gobject.ObjectG;
private import webkit2.PermissionRequestIF;
private import webkit2.PermissionRequestT;
private import webkit2.c.functions;
public  import webkit2.c.types;


/**
 * WebKitInstallMissingMediaPluginsPermissionRequest represents a request for
 * permission to decide whether WebKit should try to start a helper application to
 * install missing media plugins when the media backend couldn't play a media because
 * the required plugins were not available.
 * 
 * When a WebKitInstallMissingMediaPluginsPermissionRequest is not handled by the user,
 * it is allowed by default.
 *
 * Since: 2.10
 */
public class InstallMissingMediaPluginsPermissionRequest : ObjectG, PermissionRequestIF
{
	/** the main Gtk struct */
	protected WebKitInstallMissingMediaPluginsPermissionRequest* webKitInstallMissingMediaPluginsPermissionRequest;

	/** Get the main Gtk struct */
	public WebKitInstallMissingMediaPluginsPermissionRequest* getInstallMissingMediaPluginsPermissionRequestStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitInstallMissingMediaPluginsPermissionRequest;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitInstallMissingMediaPluginsPermissionRequest;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitInstallMissingMediaPluginsPermissionRequest* webKitInstallMissingMediaPluginsPermissionRequest, bool ownedRef = false)
	{
		this.webKitInstallMissingMediaPluginsPermissionRequest = webKitInstallMissingMediaPluginsPermissionRequest;
		super(cast(GObject*)webKitInstallMissingMediaPluginsPermissionRequest, ownedRef);
	}

	// add the PermissionRequest capabilities
	mixin PermissionRequestT!(WebKitInstallMissingMediaPluginsPermissionRequest);


	/** */
	public static GType getType()
	{
		return webkit_install_missing_media_plugins_permission_request_get_type();
	}

	/**
	 * Gets the description about the missing plugins provided by the media backend when a media couldn't be played.
	 *
	 * Returns: a string with the description provided by the media backend.
	 *
	 * Since: 2.10
	 */
	public string getDescription()
	{
		return Str.toString(webkit_install_missing_media_plugins_permission_request_get_description(webKitInstallMissingMediaPluginsPermissionRequest));
	}
}
