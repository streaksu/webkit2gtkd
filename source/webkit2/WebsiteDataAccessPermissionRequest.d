module webkit2.WebsiteDataAccessPermissionRequest;

private import glib.Str;
private import gobject.ObjectG;
private import webkit2.PermissionRequestIF;
private import webkit2.PermissionRequestT;
private import webkit2.c.functions;
public  import webkit2.c.types;


/**
 * WebKitWebsiteDataAccessPermissionRequest represents a request for
 * permission to allow a third-party domain access its cookies.
 * 
 * When a WebKitWebsiteDataAccessPermissionRequest is not handled by the user,
 * it is denied by default.
 *
 * Since: 2.30
 */
public class WebsiteDataAccessPermissionRequest : ObjectG, PermissionRequestIF
{
	/** the main Gtk struct */
	protected WebKitWebsiteDataAccessPermissionRequest* webKitWebsiteDataAccessPermissionRequest;

	/** Get the main Gtk struct */
	public WebKitWebsiteDataAccessPermissionRequest* getWebsiteDataAccessPermissionRequestStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitWebsiteDataAccessPermissionRequest;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitWebsiteDataAccessPermissionRequest;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitWebsiteDataAccessPermissionRequest* webKitWebsiteDataAccessPermissionRequest, bool ownedRef = false)
	{
		this.webKitWebsiteDataAccessPermissionRequest = webKitWebsiteDataAccessPermissionRequest;
		super(cast(GObject*)webKitWebsiteDataAccessPermissionRequest, ownedRef);
	}

	// add the PermissionRequest capabilities
	mixin PermissionRequestT!(WebKitWebsiteDataAccessPermissionRequest);


	/** */
	public static GType getType()
	{
		return webkit_website_data_access_permission_request_get_type();
	}

	/**
	 * Get the current domain being browsed.
	 *
	 * Returns: the current domain name
	 *
	 * Since: 2.30
	 */
	public string getCurrentDomain()
	{
		return Str.toString(webkit_website_data_access_permission_request_get_current_domain(webKitWebsiteDataAccessPermissionRequest));
	}

	/**
	 * Get the domain requesting permission to access its cookies while browsing the current domain.
	 *
	 * Returns: the requesting domain name
	 *
	 * Since: 2.30
	 */
	public string getRequestingDomain()
	{
		return Str.toString(webkit_website_data_access_permission_request_get_requesting_domain(webKitWebsiteDataAccessPermissionRequest));
	}
}
