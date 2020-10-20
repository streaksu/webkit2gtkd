module webkit2.GeolocationPermissionRequest;

private import gobject.ObjectG;
private import webkit2.PermissionRequestIF;
private import webkit2.PermissionRequestT;
private import webkit2.c.functions;
public  import webkit2.c.types;


/**
 * WebKitGeolocationPermissionRequest represents a request for
 * permission to decide whether WebKit should provide the user's
 * location to a website when requested through the Geolocation API.
 * 
 * When a WebKitGeolocationPermissionRequest is not handled by the user,
 * it is denied by default.
 * 
 * When embedding web views in your application, you *must* configure an
 * application identifier to allow web content to use geolocation services.
 * The identifier *must* match the name of the `.desktop` file which describes
 * the application, sans the suffix.
 * 
 * If your application uses #GApplication (or any subclass like
 * #GtkApplication), WebKit will automatically use the identifier returned by
 * g_application_get_application_id(). This is the recommended approach for
 * enabling geolocation in applications.
 * 
 * If an identifier cannot be obtained through #GApplication, the value
 * returned by g_get_prgname() will be used instead as a fallback. For
 * programs which cannot use #GApplication, calling g_set_prgname() early
 * during initialization is needed when the name of the executable on disk
 * does not match the name of a valid `.desktop` file.
 */
public class GeolocationPermissionRequest : ObjectG, PermissionRequestIF
{
	/** the main Gtk struct */
	protected WebKitGeolocationPermissionRequest* webKitGeolocationPermissionRequest;

	/** Get the main Gtk struct */
	public WebKitGeolocationPermissionRequest* getGeolocationPermissionRequestStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitGeolocationPermissionRequest;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitGeolocationPermissionRequest;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitGeolocationPermissionRequest* webKitGeolocationPermissionRequest, bool ownedRef = false)
	{
		this.webKitGeolocationPermissionRequest = webKitGeolocationPermissionRequest;
		super(cast(GObject*)webKitGeolocationPermissionRequest, ownedRef);
	}

	// add the PermissionRequest capabilities
	mixin PermissionRequestT!(WebKitGeolocationPermissionRequest);


	/** */
	public static GType getType()
	{
		return webkit_geolocation_permission_request_get_type();
	}
}
