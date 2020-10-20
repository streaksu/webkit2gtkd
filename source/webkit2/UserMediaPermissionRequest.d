module webkit2.UserMediaPermissionRequest;

private import gobject.ObjectG;
private import webkit2.PermissionRequestIF;
private import webkit2.PermissionRequestT;
private import webkit2.c.functions;
public  import webkit2.c.types;


/**
 * WebKitUserMediaPermissionRequest represents a request for
 * permission to decide whether WebKit should be allowed to access the user's
 * audio and video source devices when requested through the getUserMedia API.
 * 
 * When a WebKitUserMediaPermissionRequest is not handled by the user,
 * it is denied by default.
 *
 * Since: 2.8
 */
public class UserMediaPermissionRequest : ObjectG, PermissionRequestIF
{
	/** the main Gtk struct */
	protected WebKitUserMediaPermissionRequest* webKitUserMediaPermissionRequest;

	/** Get the main Gtk struct */
	public WebKitUserMediaPermissionRequest* getUserMediaPermissionRequestStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitUserMediaPermissionRequest;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitUserMediaPermissionRequest;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitUserMediaPermissionRequest* webKitUserMediaPermissionRequest, bool ownedRef = false)
	{
		this.webKitUserMediaPermissionRequest = webKitUserMediaPermissionRequest;
		super(cast(GObject*)webKitUserMediaPermissionRequest, ownedRef);
	}

	// add the PermissionRequest capabilities
	mixin PermissionRequestT!(WebKitUserMediaPermissionRequest);


	/** */
	public static GType getType()
	{
		return webkit_user_media_permission_request_get_type();
	}
}
