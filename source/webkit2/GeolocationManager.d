module webkit2.GeolocationManager;

private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import std.algorithm;
private import webkit2.GeolocationPosition;
private import webkit2.c.functions;
public  import webkit2.c.types;


/**
 * WebKitGeolocationManager provides API to get the geographical position of the user.
 * Once a #WebKitGeolocationPermissionRequest is allowed, when WebKit needs to know the
 * user location #WebKitGeolocationManager::start signal is emitted. If the signal is handled
 * and returns %TRUE, the application is responsible for providing the position every time it's
 * updated by calling webkit_geolocation_manager_update_position(). The signal #WebKitGeolocationManager::stop
 * will be emitted when location updates are no longer needed.
 *
 * Since: 2.26
 */
public class GeolocationManager : ObjectG
{
	/** the main Gtk struct */
	protected WebKitGeolocationManager* webKitGeolocationManager;

	/** Get the main Gtk struct */
	public WebKitGeolocationManager* getGeolocationManagerStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitGeolocationManager;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitGeolocationManager;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitGeolocationManager* webKitGeolocationManager, bool ownedRef = false)
	{
		this.webKitGeolocationManager = webKitGeolocationManager;
		super(cast(GObject*)webKitGeolocationManager, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_geolocation_manager_get_type();
	}

	/**
	 * Notify @manager that determining the position failed.
	 *
	 * Params:
	 *     errorMessage = the error message
	 *
	 * Since: 2.26
	 */
	public void failed(string errorMessage)
	{
		webkit_geolocation_manager_failed(webKitGeolocationManager, Str.toStringz(errorMessage));
	}

	/**
	 * Get whether high accuracy is enabled.
	 *
	 * Since: 2.26
	 */
	public bool getEnableHighAccuracy()
	{
		return webkit_geolocation_manager_get_enable_high_accuracy(webKitGeolocationManager) != 0;
	}

	/**
	 * Notify @manager that position has been updated to @position.
	 *
	 * Params:
	 *     position = a #WebKitGeolocationPosition
	 *
	 * Since: 2.26
	 */
	public void updatePosition(GeolocationPosition position)
	{
		webkit_geolocation_manager_update_position(webKitGeolocationManager, (position is null) ? null : position.getGeolocationPositionStruct());
	}

	/**
	 * The signal is emitted to notify that @manager needs to start receiving
	 * position updates. After this signal is emitted the user should provide
	 * the updates using webkit_geolocation_manager_update_position() every time
	 * the position changes, or use webkit_geolocation_manager_failed() in case
	 * it isn't possible to determine the current position.
	 *
	 * If the signal is not handled, WebKit will try to determine the position
	 * using GeoClue if available.
	 *
	 * Returns: %TRUE to stop other handlers from being invoked for the event.
	 *     %FALSE to propagate the event further.
	 *
	 * Since: 2.26
	 */
	gulong addOnStart(bool delegate(GeolocationManager) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "start", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * The signal is emitted to notify that @manager doesn't need to receive
	 * position updates anymore.
	 *
	 * Since: 2.26
	 */
	gulong addOnStop(void delegate(GeolocationManager) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "stop", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
