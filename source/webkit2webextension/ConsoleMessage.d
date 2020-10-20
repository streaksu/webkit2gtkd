module webkit2webextension.ConsoleMessage;

private import glib.Str;
private import gobject.ObjectG;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class ConsoleMessage
{
	/** the main Gtk struct */
	protected WebKitConsoleMessage* webKitConsoleMessage;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public WebKitConsoleMessage* getConsoleMessageStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitConsoleMessage;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)webKitConsoleMessage;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitConsoleMessage* webKitConsoleMessage, bool ownedRef = false)
	{
		this.webKitConsoleMessage = webKitConsoleMessage;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( ownedRef )
			webkit_console_message_free(webKitConsoleMessage);
	}


	/** */
	public static GType getType()
	{
		return webkit_console_message_get_type();
	}

	/**
	 * Make a copy of @console_message.
	 *
	 * Returns: A copy of passed in #WebKitConsoleMessage
	 *
	 * Since: 2.12
	 */
	public ConsoleMessage copy()
	{
		auto __p = webkit_console_message_copy(webKitConsoleMessage);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ConsoleMessage)(cast(WebKitConsoleMessage*) __p, true);
	}

	/**
	 * Free the #WebKitConsoleMessage
	 *
	 * Since: 2.12
	 */
	public void free()
	{
		webkit_console_message_free(webKitConsoleMessage);
		ownedRef = false;
	}

	/**
	 * Gets the log level of a #WebKitConsoleMessage
	 *
	 * Returns: a #WebKitConsoleMessageLevel indicating the log level of @console_message
	 *
	 * Since: 2.12
	 */
	public WebKitConsoleMessageLevel getLevel()
	{
		return webkit_console_message_get_level(webKitConsoleMessage);
	}

	/**
	 * Gets the line number of a #WebKitConsoleMessage
	 *
	 * Returns: the line number of @console_message
	 *
	 * Since: 2.12
	 */
	public uint getLine()
	{
		return webkit_console_message_get_line(webKitConsoleMessage);
	}

	/**
	 * Gets the source of a #WebKitConsoleMessage
	 *
	 * Returns: a #WebKitConsoleMessageSource indicating the source of @console_message
	 *
	 * Since: 2.12
	 */
	public WebKitConsoleMessageSource getSource()
	{
		return webkit_console_message_get_source(webKitConsoleMessage);
	}

	/**
	 * Gets the source identifier of a #WebKitConsoleMessage
	 *
	 * Returns: the source identifier of @console_message
	 *
	 * Since: 2.12
	 */
	public string getSourceId()
	{
		return Str.toString(webkit_console_message_get_source_id(webKitConsoleMessage));
	}

	/**
	 * Gets the text message of a #WebKitConsoleMessage
	 *
	 * Returns: the text message of @console_message
	 *
	 * Since: 2.12
	 */
	public string getText()
	{
		return Str.toString(webkit_console_message_get_text(webKitConsoleMessage));
	}
}
