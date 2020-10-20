module webkit2.BackForwardListItem;

private import glib.Str;
private import gobject.ObjectG;
private import webkit2.c.functions;
public  import webkit2.c.types;


/**
 * A history item is part of the #WebKitBackForwardList and consists
 * out of a title and a URI.
 */
public class BackForwardListItem : ObjectG
{
	/** the main Gtk struct */
	protected WebKitBackForwardListItem* webKitBackForwardListItem;

	/** Get the main Gtk struct */
	public WebKitBackForwardListItem* getBackForwardListItemStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitBackForwardListItem;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitBackForwardListItem;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitBackForwardListItem* webKitBackForwardListItem, bool ownedRef = false)
	{
		this.webKitBackForwardListItem = webKitBackForwardListItem;
		super(cast(GObject*)webKitBackForwardListItem, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_back_forward_list_item_get_type();
	}

	/**
	 * See also webkit_back_forward_list_item_get_uri().
	 *
	 * Returns: the original URI of @list_item or %NULL
	 *     when the original URI is empty.
	 */
	public string getOriginalUri()
	{
		return Str.toString(webkit_back_forward_list_item_get_original_uri(webKitBackForwardListItem));
	}

	/**
	 * Returns: the page title of @list_item or %NULL
	 *     when the title is empty.
	 */
	public string getTitle()
	{
		return Str.toString(webkit_back_forward_list_item_get_title(webKitBackForwardListItem));
	}

	/**
	 * This URI may differ from the original URI if the page was,
	 * for example, redirected to a new location.
	 * See also webkit_back_forward_list_item_get_original_uri().
	 *
	 * Returns: the URI of @list_item or %NULL
	 *     when the URI is empty.
	 */
	public string getUri()
	{
		return Str.toString(webkit_back_forward_list_item_get_uri(webKitBackForwardListItem));
	}
}
