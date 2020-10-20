module webkit2.WebViewBase;

private import gtk.BuildableIF;
private import gtk.BuildableT;
private import gtk.Container;
private import webkit2.c.functions;
public  import webkit2.c.types;


/** */
public class WebViewBase : Container
{
	/** the main Gtk struct */
	protected WebKitWebViewBase* webKitWebViewBase;

	/** Get the main Gtk struct */
	public WebKitWebViewBase* getWebViewBaseStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitWebViewBase;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitWebViewBase;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitWebViewBase* webKitWebViewBase, bool ownedRef = false)
	{
		this.webKitWebViewBase = webKitWebViewBase;
		super(cast(GtkContainer*)webKitWebViewBase, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_web_view_base_get_type();
	}
}
