module webkit2webextension.DOMText;

private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import gobject.ObjectG;
private import webkit2webextension.DOMCharacterData;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMText : DOMCharacterData
{
	/** the main Gtk struct */
	protected WebKitDOMText* webKitDOMText;

	/** Get the main Gtk struct */
	public WebKitDOMText* getDOMTextStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMText;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMText;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMText* webKitDOMText, bool ownedRef = false)
	{
		this.webKitDOMText = webKitDOMText;
		super(cast(WebKitDOMCharacterData*)webKitDOMText, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_text_get_type();
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 */
	public string getWholeText()
	{
		auto retStr = webkit_dom_text_get_whole_text(webKitDOMText);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 * Params:
	 *     content = A #gchar
	 * Returns: A #WebKitDOMText
	 *
	 * Throws: GException on failure.
	 */
	public DOMText replaceWholeText(string content)
	{
		GError* err = null;

		auto __p = webkit_dom_text_replace_whole_text(webKitDOMText, Str.toStringz(content), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMText)(cast(WebKitDOMText*) __p);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     offset = A #gulong
	 *
	 * Returns: A #WebKitDOMText
	 *
	 * Throws: GException on failure.
	 */
	public DOMText splitText(gulong offset)
	{
		GError* err = null;

		auto __p = webkit_dom_text_split_text(webKitDOMText, offset, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMText)(cast(WebKitDOMText*) __p);
	}
}
