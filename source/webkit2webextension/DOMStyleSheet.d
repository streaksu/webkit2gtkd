module webkit2webextension.DOMStyleSheet;

private import glib.Str;
private import gobject.ObjectG;
private import webkit2webextension.DOMMediaList;
private import webkit2webextension.DOMNode;
private import webkit2webextension.DOMObject;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMStyleSheet : DOMObject
{
	/** the main Gtk struct */
	protected WebKitDOMStyleSheet* webKitDOMStyleSheet;

	/** Get the main Gtk struct */
	public WebKitDOMStyleSheet* getDOMStyleSheetStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMStyleSheet;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMStyleSheet;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMStyleSheet* webKitDOMStyleSheet, bool ownedRef = false)
	{
		this.webKitDOMStyleSheet = webKitDOMStyleSheet;
		super(cast(WebKitDOMObject*)webKitDOMStyleSheet, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_style_sheet_get_type();
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 */
	public string getContentType()
	{
		auto retStr = webkit_dom_style_sheet_get_content_type(webKitDOMStyleSheet);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gboolean
	 */
	public bool getDisabled()
	{
		return webkit_dom_style_sheet_get_disabled(webKitDOMStyleSheet) != 0;
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 */
	public string getHref()
	{
		auto retStr = webkit_dom_style_sheet_get_href(webKitDOMStyleSheet);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #WebKitDOMMediaList
	 */
	public DOMMediaList getMedia()
	{
		auto __p = webkit_dom_style_sheet_get_media(webKitDOMStyleSheet);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMMediaList)(cast(WebKitDOMMediaList*) __p, true);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #WebKitDOMNode
	 */
	public DOMNode getOwnerNode()
	{
		auto __p = webkit_dom_style_sheet_get_owner_node(webKitDOMStyleSheet);

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
	 * Returns: A #WebKitDOMStyleSheet
	 */
	public DOMStyleSheet getParentStyleSheet()
	{
		auto __p = webkit_dom_style_sheet_get_parent_style_sheet(webKitDOMStyleSheet);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMStyleSheet)(cast(WebKitDOMStyleSheet*) __p, true);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 */
	public string getTitle()
	{
		auto retStr = webkit_dom_style_sheet_get_title(webKitDOMStyleSheet);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gboolean
	 */
	public void setDisabled(bool value)
	{
		webkit_dom_style_sheet_set_disabled(webKitDOMStyleSheet, value);
	}
}
