module webkit2webextension.UserMessage;

private import gio.UnixFDList;
private import glib.ConstructionException;
private import glib.Str;
private import glib.Variant;
private import gobject.ObjectG;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/**
 * A WebKitUserMessage is a message that can be used for the communication between the UI process
 * and web extensions. A WebKitUserMessage always has a name, and it can also include parameters and
 * UNIX file descriptors. Messages can be sent from a #WebKitWebContext to all #WebKitWebExtension<!-- -->s,
 * from a #WebKitWebExtension to its corresponding #WebKitWebContext, and from a #WebKitWebView to its
 * corresponding #WebKitWebPage (and vice versa). One to one messages can be replied to directly with
 * webkit_user_message_send_reply().
 *
 * Since: 2.28
 */
public class UserMessage : ObjectG
{
	/** the main Gtk struct */
	protected WebKitUserMessage* webKitUserMessage;

	/** Get the main Gtk struct */
	public WebKitUserMessage* getUserMessageStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitUserMessage;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitUserMessage;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitUserMessage* webKitUserMessage, bool ownedRef = false)
	{
		this.webKitUserMessage = webKitUserMessage;
		super(cast(GObject*)webKitUserMessage, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_user_message_get_type();
	}

	/**
	 * Create a new #WebKitUserMessage with @name.
	 *
	 * Params:
	 *     name = the message name
	 *     parameters = the message parameters as a #GVariant, or %NULL
	 *
	 * Returns: the newly created #WebKitUserMessage object.
	 *
	 * Since: 2.28
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string name, Variant parameters)
	{
		auto __p = webkit_user_message_new(Str.toStringz(name), (parameters is null) ? null : parameters.getVariantStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(WebKitUserMessage*) __p);
	}

	/**
	 * Create a new #WebKitUserMessage including also a list of UNIX file descriptors to be sent.
	 *
	 * Params:
	 *     name = the message name
	 *     parameters = the message parameters as a #GVariant
	 *     fdList = the message file descriptors
	 *
	 * Returns: the newly created #WebKitUserMessage object.
	 *
	 * Since: 2.28
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this(string name, Variant parameters, UnixFDList fdList)
	{
		auto __p = webkit_user_message_new_with_fd_list(Str.toStringz(name), (parameters is null) ? null : parameters.getVariantStruct(), (fdList is null) ? null : fdList.getUnixFDListStruct());

		if(__p is null)
		{
			throw new ConstructionException("null returned by new_with_fd_list");
		}

		this(cast(WebKitUserMessage*) __p);
	}

	/** */
	public static GQuark errorQuark()
	{
		return webkit_user_message_error_quark();
	}

	/**
	 * Get the @message list of file descritpor
	 *
	 * Returns: the message list of file descriptors
	 *
	 * Since: 2.28
	 */
	public UnixFDList getFdList()
	{
		auto __p = webkit_user_message_get_fd_list(webKitUserMessage);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(UnixFDList)(cast(GUnixFDList*) __p);
	}

	/**
	 * Get the @message name
	 *
	 * Returns: the message name
	 *
	 * Since: 2.28
	 */
	public string getName()
	{
		return Str.toString(webkit_user_message_get_name(webKitUserMessage));
	}

	/**
	 * Get the @message parameters
	 *
	 * Returns: the message parameters
	 *
	 * Since: 2.28
	 */
	public Variant getParameters()
	{
		auto __p = webkit_user_message_get_parameters(webKitUserMessage);

		if(__p is null)
		{
			return null;
		}

		return new Variant(cast(GVariant*) __p);
	}

	/**
	 * Send a reply to @message. If @reply is floating, it's consumed.
	 * You can only send a reply to a #WebKitUserMessage that has been
	 * received.
	 *
	 * Params:
	 *     reply = a #WebKitUserMessage to send as reply
	 *
	 * Since: 2.28
	 */
	public void sendReply(UserMessage reply)
	{
		webkit_user_message_send_reply(webKitUserMessage, (reply is null) ? null : reply.getUserMessageStruct());
	}
}
