module webkit2.GeolocationPosition;

private import glib.ConstructionException;
private import gobject.ObjectG;
private import webkit2.c.functions;
public  import webkit2.c.types;


/**
 * WebKitGeolocationPosition is an opaque struct used to provide position updates to a
 * #WebKitGeolocationManager using webkit_geolocation_manager_update_position().
 *
 * Since: 2.26
 */
public class GeolocationPosition
{
	/** the main Gtk struct */
	protected WebKitGeolocationPosition* webKitGeolocationPosition;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public WebKitGeolocationPosition* getGeolocationPositionStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitGeolocationPosition;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)webKitGeolocationPosition;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitGeolocationPosition* webKitGeolocationPosition, bool ownedRef = false)
	{
		this.webKitGeolocationPosition = webKitGeolocationPosition;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( ownedRef )
			webkit_geolocation_position_free(webKitGeolocationPosition);
	}


	/** */
	public static GType getType()
	{
		return webkit_geolocation_position_get_type();
	}

	/**
	 * Create a new #WebKitGeolocationPosition
	 *
	 * Params:
	 *     latitude = a valid latitude in degrees
	 *     longitude = a valid longitude in degrees
	 *     accuracy = accuracy of location in meters
	 *
	 * Returns: a newly created #WebKitGeolocationPosition
	 *
	 * Since: 2.26
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(double latitude, double longitude, double accuracy)
	{
		auto __p = webkit_geolocation_position_new(latitude, longitude, accuracy);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(WebKitGeolocationPosition*) __p);
	}

	/**
	 * Make a copy of the #WebKitGeolocationPosition
	 *
	 * Returns: a copy of @position
	 *
	 * Since: 2.26
	 */
	public GeolocationPosition copy()
	{
		auto __p = webkit_geolocation_position_copy(webKitGeolocationPosition);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(GeolocationPosition)(cast(WebKitGeolocationPosition*) __p, true);
	}

	/**
	 * Free the #WebKitGeolocationPosition
	 *
	 * Since: 2.26
	 */
	public void free()
	{
		webkit_geolocation_position_free(webKitGeolocationPosition);
		ownedRef = false;
	}

	/**
	 * Set the @position altitude
	 *
	 * Params:
	 *     altitude = altitude in meters
	 *
	 * Since: 2.26
	 */
	public void setAltitude(double altitude)
	{
		webkit_geolocation_position_set_altitude(webKitGeolocationPosition, altitude);
	}

	/**
	 * Set the accuracy of @position altitude
	 *
	 * Params:
	 *     altitudeAccuracy = accuracy of position altitude in meters
	 *
	 * Since: 2.26
	 */
	public void setAltitudeAccuracy(double altitudeAccuracy)
	{
		webkit_geolocation_position_set_altitude_accuracy(webKitGeolocationPosition, altitudeAccuracy);
	}

	/**
	 * Set the @position heading, as a positive angle between the direction of movement and the North
	 * direction, in clockwise direction.
	 *
	 * Params:
	 *     heading = heading in degrees
	 *
	 * Since: 2.26
	 */
	public void setHeading(double heading)
	{
		webkit_geolocation_position_set_heading(webKitGeolocationPosition, heading);
	}

	/**
	 * Set the @position speed
	 *
	 * Params:
	 *     speed = speed in meters per second
	 *
	 * Since: 2.26
	 */
	public void setSpeed(double speed)
	{
		webkit_geolocation_position_set_speed(webKitGeolocationPosition, speed);
	}

	/**
	 * Set the @position timestamp. By default it's the time when the @position was created.
	 *
	 * Params:
	 *     timestamp = timestamp in seconds since the epoch, or 0 to use current time
	 *
	 * Since: 2.26
	 */
	public void setTimestamp(ulong timestamp)
	{
		webkit_geolocation_position_set_timestamp(webKitGeolocationPosition, timestamp);
	}
}
