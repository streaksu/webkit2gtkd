module webkit2webextension.DOMStyleSheetList;

private import gobject.ObjectG;
private import webkit2webextension.DOMObject;
private import webkit2webextension.DOMStyleSheet;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMStyleSheetList : DOMObject
{
	/** the main Gtk struct */
	protected WebKitDOMStyleSheetList* webKitDOMStyleSheetList;

	/** Get the main Gtk struct */
	public WebKitDOMStyleSheetList* getDOMStyleSheetListStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMStyleSheetList;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMStyleSheetList;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMStyleSheetList* webKitDOMStyleSheetList, bool ownedRef = false)
	{
		this.webKitDOMStyleSheetList = webKitDOMStyleSheetList;
		super(cast(WebKitDOMObject*)webKitDOMStyleSheetList, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_style_sheet_list_get_type();
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
		return webkit_dom_style_sheet_list_get_length(webKitDOMStyleSheetList);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     index = A #gulong
	 *
	 * Returns: A #WebKitDOMStyleSheet
	 */
	public DOMStyleSheet item(gulong index)
	{
		auto __p = webkit_dom_style_sheet_list_item(webKitDOMStyleSheetList, index);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMStyleSheet)(cast(WebKitDOMStyleSheet*) __p, true);
	}
}
