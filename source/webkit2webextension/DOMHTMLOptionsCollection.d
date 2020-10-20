module webkit2webextension.DOMHTMLOptionsCollection;

private import glib.Str;
private import gobject.ObjectG;
private import webkit2webextension.DOMHTMLCollection;
private import webkit2webextension.DOMNode;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMHTMLOptionsCollection : DOMHTMLCollection
{
	/** the main Gtk struct */
	protected WebKitDOMHTMLOptionsCollection* webKitDOMHTMLOptionsCollection;

	/** Get the main Gtk struct */
	public WebKitDOMHTMLOptionsCollection* getDOMHTMLOptionsCollectionStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMHTMLOptionsCollection;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMHTMLOptionsCollection;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMHTMLOptionsCollection* webKitDOMHTMLOptionsCollection, bool ownedRef = false)
	{
		this.webKitDOMHTMLOptionsCollection = webKitDOMHTMLOptionsCollection;
		super(cast(WebKitDOMHTMLCollection*)webKitDOMHTMLOptionsCollection, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_html_options_collection_get_type();
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gulong
	 */
	public override gulong getLength()
	{
		return webkit_dom_html_options_collection_get_length(webKitDOMHTMLOptionsCollection);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #glong
	 */
	public glong getSelectedIndex()
	{
		return webkit_dom_html_options_collection_get_selected_index(webKitDOMHTMLOptionsCollection);
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
	public override DOMNode namedItem(string name)
	{
		auto __p = webkit_dom_html_options_collection_named_item(webKitDOMHTMLOptionsCollection, Str.toStringz(name));

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
	 *     value = A #glong
	 */
	public void setSelectedIndex(glong value)
	{
		webkit_dom_html_options_collection_set_selected_index(webKitDOMHTMLOptionsCollection, value);
	}
}
