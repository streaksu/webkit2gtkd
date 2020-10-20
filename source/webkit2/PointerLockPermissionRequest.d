module webkit2.PointerLockPermissionRequest;

private import gobject.ObjectG;
private import webkit2.PermissionRequestIF;
private import webkit2.PermissionRequestT;
private import webkit2.c.functions;
public  import webkit2.c.types;


/**
 * WebKitPointerLockPermissionRequest represents a request for
 * permission to decide whether WebKit can lock the pointer device when
 * requested by web content.
 * 
 * When a WebKitPointerLockPermissionRequest is not handled by the user,
 * it is allowed by default.
 *
 * Since: 2.28
 */
public class PointerLockPermissionRequest : ObjectG, PermissionRequestIF
{
	/** the main Gtk struct */
	protected WebKitPointerLockPermissionRequest* webKitPointerLockPermissionRequest;

	/** Get the main Gtk struct */
	public WebKitPointerLockPermissionRequest* getPointerLockPermissionRequestStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitPointerLockPermissionRequest;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitPointerLockPermissionRequest;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitPointerLockPermissionRequest* webKitPointerLockPermissionRequest, bool ownedRef = false)
	{
		this.webKitPointerLockPermissionRequest = webKitPointerLockPermissionRequest;
		super(cast(GObject*)webKitPointerLockPermissionRequest, ownedRef);
	}

	// add the PermissionRequest capabilities
	mixin PermissionRequestT!(WebKitPointerLockPermissionRequest);


	/** */
	public static GType getType()
	{
		return webkit_pointer_lock_permission_request_get_type();
	}
}
