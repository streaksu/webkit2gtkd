module webkit2webextension.DOMCharacterData;

private import glib.ErrorG;
private import glib.GException;
private import glib.Str;
private import webkit2webextension.DOMNode;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMCharacterData : DOMNode
{
	/** the main Gtk struct */
	protected WebKitDOMCharacterData* webKitDOMCharacterData;

	/** Get the main Gtk struct */
	public WebKitDOMCharacterData* getDOMCharacterDataStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMCharacterData;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMCharacterData;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMCharacterData* webKitDOMCharacterData, bool ownedRef = false)
	{
		this.webKitDOMCharacterData = webKitDOMCharacterData;
		super(cast(WebKitDOMNode*)webKitDOMCharacterData, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_character_data_get_type();
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     data = A #gchar
	 *
	 * Throws: GException on failure.
	 */
	public void appendData(string data)
	{
		GError* err = null;

		webkit_dom_character_data_append_data(webKitDOMCharacterData, Str.toStringz(data), &err);

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
	 *     offset = A #gulong
	 *     length = A #gulong
	 *
	 * Throws: GException on failure.
	 */
	public void deleteData(gulong offset, gulong length)
	{
		GError* err = null;

		webkit_dom_character_data_delete_data(webKitDOMCharacterData, offset, length, &err);

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
	 * Returns: A #gchar
	 */
	public string getData()
	{
		auto retStr = webkit_dom_character_data_get_data(webKitDOMCharacterData);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
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
		return webkit_dom_character_data_get_length(webKitDOMCharacterData);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     offset = A #gulong
	 *     data = A #gchar
	 *
	 * Throws: GException on failure.
	 */
	public void insertData(gulong offset, string data)
	{
		GError* err = null;

		webkit_dom_character_data_insert_data(webKitDOMCharacterData, offset, Str.toStringz(data), &err);

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
	 *     offset = A #gulong
	 *     length = A #gulong
	 *     data = A #gchar
	 *
	 * Throws: GException on failure.
	 */
	public void replaceData(gulong offset, gulong length, string data)
	{
		GError* err = null;

		webkit_dom_character_data_replace_data(webKitDOMCharacterData, offset, length, Str.toStringz(data), &err);

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
	 *     value = A #gchar
	 *
	 * Throws: GException on failure.
	 */
	public void setData(string value)
	{
		GError* err = null;

		webkit_dom_character_data_set_data(webKitDOMCharacterData, Str.toStringz(value), &err);

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
	 *     offset = A #gulong
	 *     length = A #gulong
	 *
	 * Returns: A #gchar
	 *
	 * Throws: GException on failure.
	 */
	public string substringData(gulong offset, gulong length)
	{
		GError* err = null;

		auto retStr = webkit_dom_character_data_substring_data(webKitDOMCharacterData, offset, length, &err);

		if (err !is null)
		{
			throw new GException( new ErrorG(err) );
		}

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}
}
