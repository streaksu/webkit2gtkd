module webkit2.NotificationPermissionRequest;

private import gobject.ObjectG;
private import webkit2.PermissionRequestIF;
private import webkit2.PermissionRequestT;
private import webkit2.c.functions;
public  import webkit2.c.types;


/**
 * WebKitNotificationPermissionRequest represents a request for
 * permission to decide whether WebKit should provide the user with
 * notifications through the Web Notification API.
 * 
 * When a WebKitNotificationPermissionRequest is not handled by the user,
 * it is denied by default.
 *
 * Since: 2.8
 */
public class NotificationPermissionRequest : ObjectG, PermissionRequestIF
{
	/** the main Gtk struct */
	protected WebKitNotificationPermissionRequest* webKitNotificationPermissionRequest;

	/** Get the main Gtk struct */
	public WebKitNotificationPermissionRequest* getNotificationPermissionRequestStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitNotificationPermissionRequest;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitNotificationPermissionRequest;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitNotificationPermissionRequest* webKitNotificationPermissionRequest, bool ownedRef = false)
	{
		this.webKitNotificationPermissionRequest = webKitNotificationPermissionRequest;
		super(cast(GObject*)webKitNotificationPermissionRequest, ownedRef);
	}

	// add the PermissionRequest capabilities
	mixin PermissionRequestT!(WebKitNotificationPermissionRequest);


	/** */
	public static GType getType()
	{
		return webkit_notification_permission_request_get_type();
	}
}
