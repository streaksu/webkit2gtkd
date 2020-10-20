module webkit2.WebViewSessionState;

private import glib.Bytes;
private import glib.ConstructionException;
private import gobject.ObjectG;
private import webkit2.c.functions;
public  import webkit2.c.types;


/** */
public class WebViewSessionState
{
	/** the main Gtk struct */
	protected WebKitWebViewSessionState* webKitWebViewSessionState;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public WebKitWebViewSessionState* getWebViewSessionStateStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitWebViewSessionState;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)webKitWebViewSessionState;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitWebViewSessionState* webKitWebViewSessionState, bool ownedRef = false)
	{
		this.webKitWebViewSessionState = webKitWebViewSessionState;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( ownedRef )
			webkit_web_view_session_state_unref(webKitWebViewSessionState);
	}


	/** */
	public static GType getType()
	{
		return webkit_web_view_session_state_get_type();
	}

	/**
	 * Creates a new #WebKitWebViewSessionState from serialized data.
	 *
	 * Params:
	 *     data = a #GBytes
	 *
	 * Returns: a new #WebKitWebViewSessionState, or %NULL if @data doesn't contain a
	 *     valid serialized #WebKitWebViewSessionState.
	 *
	 * Since: 2.12
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(Bytes data)
	{
		auto __p = webkit_web_view_session_state_new((data is null) ? null : data.getBytesStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(WebKitWebViewSessionState*) __p);
	}

	alias doref = ref_;
	/**
	 * Atomically increments the reference count of @state by one. This
	 * function is MT-safe and may be called from any thread.
	 *
	 * Returns: The passed in #WebKitWebViewSessionState
	 *
	 * Since: 2.12
	 */
	public WebViewSessionState ref_()
	{
		auto __p = webkit_web_view_session_state_ref(webKitWebViewSessionState);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(WebViewSessionState)(cast(WebKitWebViewSessionState*) __p, true);
	}

	/**
	 * Serializes a #WebKitWebViewSessionState.
	 *
	 * Returns: a #GBytes containing the @state serialized.
	 *
	 * Since: 2.12
	 */
	public Bytes serialize()
	{
		auto __p = webkit_web_view_session_state_serialize(webKitWebViewSessionState);

		if(__p is null)
		{
			return null;
		}

		return new Bytes(cast(GBytes*) __p, true);
	}

	/**
	 * Atomically decrements the reference count of @state by one. If the
	 * reference count drops to 0, all memory allocated by the #WebKitWebViewSessionState is
	 * released. This function is MT-safe and may be called from any thread.
	 *
	 * Since: 2.12
	 */
	public void unref()
	{
		webkit_web_view_session_state_unref(webKitWebViewSessionState);
	}
}
