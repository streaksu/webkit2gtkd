module webkit2.DeviceInfoPermissionRequest;

private import gobject.ObjectG;
private import webkit2.PermissionRequestIF;
private import webkit2.PermissionRequestT;
private import webkit2.c.functions;
public  import webkit2.c.types;


/**
 * WebKitUserMediaPermissionRequest represents a request for
 * permission to whether WebKit should be allowed to access the user's
 * devices information when requested through the enumeraceDevices API.
 * 
 * When a WebKitDeviceInfoPermissionRequest is not handled by the user,
 * it is denied by default.
 *
 * Since: 2.24
 */
public class DeviceInfoPermissionRequest : ObjectG, PermissionRequestIF
{
	/** the main Gtk struct */
	protected WebKitDeviceInfoPermissionRequest* webKitDeviceInfoPermissionRequest;

	/** Get the main Gtk struct */
	public WebKitDeviceInfoPermissionRequest* getDeviceInfoPermissionRequestStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDeviceInfoPermissionRequest;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDeviceInfoPermissionRequest;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDeviceInfoPermissionRequest* webKitDeviceInfoPermissionRequest, bool ownedRef = false)
	{
		this.webKitDeviceInfoPermissionRequest = webKitDeviceInfoPermissionRequest;
		super(cast(GObject*)webKitDeviceInfoPermissionRequest, ownedRef);
	}

	// add the PermissionRequest capabilities
	mixin PermissionRequestT!(WebKitDeviceInfoPermissionRequest);


	/** */
	public static GType getType()
	{
		return webkit_device_info_permission_request_get_type();
	}
}
