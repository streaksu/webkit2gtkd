module webkit2webextension.DOMCSSValue;

private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import webkit2webextension.DOMObject;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMCSSValue : DOMObject
{
	/** the main Gtk struct */
	protected WebKitDOMCSSValue* webKitDOMCSSValue;

	/** Get the main Gtk struct */
	public WebKitDOMCSSValue* getDOMCSSValueStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMCSSValue;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMCSSValue;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMCSSValue* webKitDOMCSSValue, bool ownedRef = false)
	{
		this.webKitDOMCSSValue = webKitDOMCSSValue;
		super(cast(WebKitDOMObject*)webKitDOMCSSValue, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_css_value_get_type();
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 */
	public string getCssText()
	{
		auto retStr = webkit_dom_css_value_get_css_text(webKitDOMCSSValue);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gushort
	 */
	public ushort getCssValueType()
	{
		return webkit_dom_css_value_get_css_value_type(webKitDOMCSSValue);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 *
	 * Throws: GException on failure.
	 */
	public void setCssText(string value)
	{
		GError* err = null;

		webkit_dom_css_value_set_css_text(webKitDOMCSSValue, Str.toStringz(value), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
	}
}
