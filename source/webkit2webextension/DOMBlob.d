module webkit2webextension.DOMBlob;

private import webkit2webextension.DOMObject;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMBlob : DOMObject
{
	/** the main Gtk struct */
	protected WebKitDOMBlob* webKitDOMBlob;

	/** Get the main Gtk struct */
	public WebKitDOMBlob* getDOMBlobStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMBlob;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMBlob;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMBlob* webKitDOMBlob, bool ownedRef = false)
	{
		this.webKitDOMBlob = webKitDOMBlob;
		super(cast(WebKitDOMObject*)webKitDOMBlob, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_blob_get_type();
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #guint64
	 */
	public ulong getSize()
	{
		return webkit_dom_blob_get_size(webKitDOMBlob);
	}
}
