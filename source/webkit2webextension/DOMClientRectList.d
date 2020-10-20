module webkit2webextension.DOMClientRectList;

private import gobject.ObjectG;
private import webkit2webextension.DOMClientRect;
private import webkit2webextension.DOMObject;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMClientRectList : DOMObject
{
	/** the main Gtk struct */
	protected WebKitDOMClientRectList* webKitDOMClientRectList;

	/** Get the main Gtk struct */
	public WebKitDOMClientRectList* getDOMClientRectListStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMClientRectList;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMClientRectList;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMClientRectList* webKitDOMClientRectList, bool ownedRef = false)
	{
		this.webKitDOMClientRectList = webKitDOMClientRectList;
		super(cast(WebKitDOMObject*)webKitDOMClientRectList, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_client_rect_list_get_type();
	}

	/**
	 * Returns the number of #WebKitDOMClientRect objects that @self contains.
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gulong
	 *
	 * Since: 2.18
	 */
	public gulong getLength()
	{
		return webkit_dom_client_rect_list_get_length(webKitDOMClientRectList);
	}

	/**
	 * Returns the #WebKitDOMClientRect object that @self contains at @index.
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     index = A #gulong
	 *
	 * Returns: A #WebKitDOMClientRect
	 *
	 * Since: 2.18
	 */
	public DOMClientRect item(gulong index)
	{
		auto __p = webkit_dom_client_rect_list_item(webKitDOMClientRectList, index);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMClientRect)(cast(WebKitDOMClientRect*) __p, true);
	}
}
