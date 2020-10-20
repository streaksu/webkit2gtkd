module webkit2webextension.DOMHTMLMapElement;

private import glib.Str;
private import gobject.ObjectG;
private import webkit2webextension.DOMHTMLCollection;
private import webkit2webextension.DOMHTMLElement;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMHTMLMapElement : DOMHTMLElement
{
	/** the main Gtk struct */
	protected WebKitDOMHTMLMapElement* webKitDOMHTMLMapElement;

	/** Get the main Gtk struct */
	public WebKitDOMHTMLMapElement* getDOMHTMLMapElementStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMHTMLMapElement;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMHTMLMapElement;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMHTMLMapElement* webKitDOMHTMLMapElement, bool ownedRef = false)
	{
		this.webKitDOMHTMLMapElement = webKitDOMHTMLMapElement;
		super(cast(WebKitDOMHTMLElement*)webKitDOMHTMLMapElement, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_html_map_element_get_type();
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #WebKitDOMHTMLCollection
	 */
	public DOMHTMLCollection getAreas()
	{
		auto __p = webkit_dom_html_map_element_get_areas(webKitDOMHTMLMapElement);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMHTMLCollection)(cast(WebKitDOMHTMLCollection*) __p, true);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 */
	public string getName()
	{
		auto retStr = webkit_dom_html_map_element_get_name(webKitDOMHTMLMapElement);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setName(string value)
	{
		webkit_dom_html_map_element_set_name(webKitDOMHTMLMapElement, Str.toStringz(value));
	}
}
