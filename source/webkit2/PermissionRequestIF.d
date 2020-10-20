module webkit2.PermissionRequestIF;

private import webkit2.c.functions;
public  import webkit2.c.types;


/**
 * There are situations where an embedder would need to ask the user
 * for permission to do certain types of operations, such as switching
 * to fullscreen mode or reporting the user's location through the
 * standard Geolocation API. In those cases, WebKit will emit a
 * #WebKitWebView::permission-request signal with a
 * #WebKitPermissionRequest object attached to it.
 */
public interface PermissionRequestIF{
	/** Get the main Gtk struct */
	public WebKitPermissionRequest* getPermissionRequestStruct(bool transferOwnership = false);

	/** the main Gtk struct as a void* */
	protected void* getStruct();


	/** */
	public static GType getType()
	{
		return webkit_permission_request_get_type();
	}

	/**
	 * Allow the action which triggered this request.
	 */
	public void allow();

	/**
	 * Deny the action which triggered this request.
	 */
	public void deny();
}
