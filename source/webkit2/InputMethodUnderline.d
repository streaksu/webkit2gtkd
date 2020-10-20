module webkit2.InputMethodUnderline;

private import gdk.RGBA;
private import glib.ConstructionException;
private import gobject.ObjectG;
private import webkit2.c.functions;
public  import webkit2.c.types;


/** */
public class InputMethodUnderline
{
	/** the main Gtk struct */
	protected WebKitInputMethodUnderline* webKitInputMethodUnderline;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public WebKitInputMethodUnderline* getInputMethodUnderlineStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitInputMethodUnderline;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)webKitInputMethodUnderline;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitInputMethodUnderline* webKitInputMethodUnderline, bool ownedRef = false)
	{
		this.webKitInputMethodUnderline = webKitInputMethodUnderline;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( ownedRef )
			webkit_input_method_underline_free(webKitInputMethodUnderline);
	}


	/** */
	public static GType getType()
	{
		return webkit_input_method_underline_get_type();
	}

	/**
	 * Create a new #WebKitInputMethodUnderline for the given range in preedit string
	 *
	 * Params:
	 *     startOffset = the start offset in preedit string
	 *     endOffset = the end offset in preedit string
	 *
	 * Returns: A newly created #WebKitInputMethodUnderline
	 *
	 * Since: 2.28
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(uint startOffset, uint endOffset)
	{
		auto __p = webkit_input_method_underline_new(startOffset, endOffset);

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(WebKitInputMethodUnderline*) __p);
	}

	/**
	 * Make a copy of the #WebKitInputMethodUnderline.
	 *
	 * Returns: A copy of passed in #WebKitInputMethodUnderline
	 *
	 * Since: 2.28
	 */
	public InputMethodUnderline copy()
	{
		auto __p = webkit_input_method_underline_copy(webKitInputMethodUnderline);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(InputMethodUnderline)(cast(WebKitInputMethodUnderline*) __p, true);
	}

	/**
	 * Free the #WebKitInputMethodUnderline.
	 *
	 * Since: 2.28
	 */
	public void free()
	{
		webkit_input_method_underline_free(webKitInputMethodUnderline);
		ownedRef = false;
	}

	/**
	 * Set the color of the underline. If @rgba is %NULL the foreground text color will be used
	 * for the underline too.
	 *
	 * Params:
	 *     rgba = a #GdkRGBA or %NULL
	 *
	 * Since: 2.28
	 */
	public void setColor(RGBA rgba)
	{
		webkit_input_method_underline_set_color(webKitInputMethodUnderline, (rgba is null) ? null : rgba.getRGBAStruct());
	}
}
