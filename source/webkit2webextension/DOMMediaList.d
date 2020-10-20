module webkit2webextension.DOMMediaList;

private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import webkit2webextension.DOMObject;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMMediaList : DOMObject
{
	/** the main Gtk struct */
	protected WebKitDOMMediaList* webKitDOMMediaList;

	/** Get the main Gtk struct */
	public WebKitDOMMediaList* getDOMMediaListStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMMediaList;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMMediaList;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMMediaList* webKitDOMMediaList, bool ownedRef = false)
	{
		this.webKitDOMMediaList = webKitDOMMediaList;
		super(cast(WebKitDOMObject*)webKitDOMMediaList, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_media_list_get_type();
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     newMedium = A #gchar
	 *
	 * Throws: GException on failure.
	 */
	public void appendMedium(string newMedium)
	{
		GError* err = null;

		webkit_dom_media_list_append_medium(webKitDOMMediaList, Str.toStringz(newMedium), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     oldMedium = A #gchar
	 *
	 * Throws: GException on failure.
	 */
	public void deleteMedium(string oldMedium)
	{
		GError* err = null;

		webkit_dom_media_list_delete_medium(webKitDOMMediaList, Str.toStringz(oldMedium), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
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
		return webkit_dom_media_list_get_length(webKitDOMMediaList);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 */
	public string getMediaText()
	{
		auto retStr = webkit_dom_media_list_get_media_text(webKitDOMMediaList);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     index = A #gulong
	 *
	 * Returns: A #gchar
	 */
	public string item(gulong index)
	{
		auto retStr = webkit_dom_media_list_item(webKitDOMMediaList, index);

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
	 *
	 * Throws: GException on failure.
	 */
	public void setMediaText(string value)
	{
		GError* err = null;

		webkit_dom_media_list_set_media_text(webKitDOMMediaList, Str.toStringz(value), &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}
	}
}
