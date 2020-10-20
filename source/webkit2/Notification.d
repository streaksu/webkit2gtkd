module webkit2.Notification;

private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import std.algorithm;
private import webkit2.c.functions;
public  import webkit2.c.types;


/** */
public class Notification : ObjectG
{
	/** the main Gtk struct */
	protected WebKitNotification* webKitNotification;

	/** Get the main Gtk struct */
	public WebKitNotification* getNotificationStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitNotification;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitNotification;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitNotification* webKitNotification, bool ownedRef = false)
	{
		this.webKitNotification = webKitNotification;
		super(cast(GObject*)webKitNotification, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_notification_get_type();
	}

	/**
	 * Tells WebKit the notification has been clicked. This will emit the
	 * #WebKitNotification::clicked signal.
	 *
	 * Since: 2.12
	 */
	public void clicked()
	{
		webkit_notification_clicked(webKitNotification);
	}

	/**
	 * Closes the notification.
	 *
	 * Since: 2.8
	 */
	public void close()
	{
		webkit_notification_close(webKitNotification);
	}

	/**
	 * Obtains the body for the notification.
	 *
	 * Returns: the body for the notification
	 *
	 * Since: 2.8
	 */
	public string getBody()
	{
		return Str.toString(webkit_notification_get_body(webKitNotification));
	}

	/**
	 * Obtains the unique id for the notification.
	 *
	 * Returns: the unique id for the notification
	 *
	 * Since: 2.8
	 */
	public ulong getId()
	{
		return webkit_notification_get_id(webKitNotification);
	}

	/**
	 * Obtains the tag identifier for the notification.
	 *
	 * Returns: the tag for the notification
	 *
	 * Since: 2.16
	 */
	public string getTag()
	{
		return Str.toString(webkit_notification_get_tag(webKitNotification));
	}

	/**
	 * Obtains the title for the notification.
	 *
	 * Returns: the title for the notification
	 *
	 * Since: 2.8
	 */
	public string getTitle()
	{
		return Str.toString(webkit_notification_get_title(webKitNotification));
	}

	/**
	 * Emitted when a notification has been clicked. See webkit_notification_clicked().
	 *
	 * Since: 2.12
	 */
	gulong addOnClicked(void delegate(Notification) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "clicked", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when a notification has been withdrawn.
	 *
	 * The default handler will close the notification using libnotify, if built with
	 * support for it.
	 *
	 * Since: 2.8
	 */
	gulong addOnClosed(void delegate(Notification) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "closed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
