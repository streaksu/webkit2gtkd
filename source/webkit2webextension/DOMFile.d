module webkit2webextension.DOMFile;

private import glib.Str;
private import webkit2webextension.DOMBlob;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMFile : DOMBlob
{
	/** the main Gtk struct */
	protected WebKitDOMFile* webKitDOMFile;

	/** Get the main Gtk struct */
	public WebKitDOMFile* getDOMFileStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMFile;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMFile;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMFile* webKitDOMFile, bool ownedRef = false)
	{
		this.webKitDOMFile = webKitDOMFile;
		super(cast(WebKitDOMBlob*)webKitDOMFile, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_file_get_type();
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
		auto retStr = webkit_dom_file_get_name(webKitDOMFile);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}
}
