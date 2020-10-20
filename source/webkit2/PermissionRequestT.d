module webkit2.PermissionRequestT;

public  import webkit2.c.functions;
public  import webkit2.c.types;


/**
 * There are situations where an embedder would need to ask the user
 * for permission to do certain types of operations, such as switching
 * to fullscreen mode or reporting the user's location through the
 * standard Geolocation API. In those cases, WebKit will emit a
 * #WebKitWebView::permission-request signal with a
 * #WebKitPermissionRequest object attached to it.
 */
public template PermissionRequestT(TStruct)
{
	/** Get the main Gtk struct */
	public WebKitPermissionRequest* getPermissionRequestStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return cast(WebKitPermissionRequest*)getStruct();
	}


	/**
	 * Allow the action which triggered this request.
	 */
	public void allow()
	{
		webkit_permission_request_allow(getPermissionRequestStruct());
	}

	/**
	 * Deny the action which triggered this request.
	 */
	public void deny()
	{
		webkit_permission_request_deny(getPermissionRequestStruct());
	}
}
