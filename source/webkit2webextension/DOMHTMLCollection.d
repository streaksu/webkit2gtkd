module webkit2webextension.DOMHTMLCollection;

private import glib.Str;
private import gobject.ObjectG;
private import webkit2webextension.DOMNode;
private import webkit2webextension.DOMObject;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMHTMLCollection : DOMObject
{
	/** the main Gtk struct */
	protected WebKitDOMHTMLCollection* webKitDOMHTMLCollection;

	/** Get the main Gtk struct */
	public WebKitDOMHTMLCollection* getDOMHTMLCollectionStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMHTMLCollection;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMHTMLCollection;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMHTMLCollection* webKitDOMHTMLCollection, bool ownedRef = false)
	{
		this.webKitDOMHTMLCollection = webKitDOMHTMLCollection;
		super(cast(WebKitDOMObject*)webKitDOMHTMLCollection, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_html_collection_get_type();
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gulong
	 */
	public gulong getLength()
	{
		return webkit_dom_html_collection_get_length(webKitDOMHTMLCollection);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     index = A #gulong
	 *
	 * Returns: A #WebKitDOMNode
	 */
	public DOMNode item(gulong index)
	{
		auto __p = webkit_dom_html_collection_item(webKitDOMHTMLCollection, index);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMNode)(cast(WebKitDOMNode*) __p);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     name = A #gchar
	 *
	 * Returns: A #WebKitDOMNode
	 */
	public DOMNode namedItem(string name)
	{
		auto __p = webkit_dom_html_collection_named_item(webKitDOMHTMLCollection, Str.toStringz(name));

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMNode)(cast(WebKitDOMNode*) __p);
	}
}
