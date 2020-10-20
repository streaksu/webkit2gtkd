module webkit2webextension.DOMFileList;

private import gobject.ObjectG;
private import webkit2webextension.DOMFile;
private import webkit2webextension.DOMObject;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMFileList : DOMObject
{
	/** the main Gtk struct */
	protected WebKitDOMFileList* webKitDOMFileList;

	/** Get the main Gtk struct */
	public WebKitDOMFileList* getDOMFileListStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMFileList;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMFileList;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMFileList* webKitDOMFileList, bool ownedRef = false)
	{
		this.webKitDOMFileList = webKitDOMFileList;
		super(cast(WebKitDOMObject*)webKitDOMFileList, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_file_list_get_type();
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
		return webkit_dom_file_list_get_length(webKitDOMFileList);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     index = A #gulong
	 *
	 * Returns: A #WebKitDOMFile
	 */
	public DOMFile item(gulong index)
	{
		auto __p = webkit_dom_file_list_item(webKitDOMFileList, index);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMFile)(cast(WebKitDOMFile*) __p, true);
	}
}
