module soup.WebsocketExtensionDeflate;

private import soup.WebsocketExtension;
private import soup.c.functions;
public  import soup.c.types;


/** */
public class WebsocketExtensionDeflate : WebsocketExtension
{
	/** the main Gtk struct */
	protected SoupWebsocketExtensionDeflate* soupWebsocketExtensionDeflate;

	/** Get the main Gtk struct */
	public SoupWebsocketExtensionDeflate* getWebsocketExtensionDeflateStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return soupWebsocketExtensionDeflate;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)soupWebsocketExtensionDeflate;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (SoupWebsocketExtensionDeflate* soupWebsocketExtensionDeflate, bool ownedRef = false)
	{
		this.soupWebsocketExtensionDeflate = soupWebsocketExtensionDeflate;
		super(cast(SoupWebsocketExtension*)soupWebsocketExtensionDeflate, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return soup_websocket_extension_deflate_get_type();
	}
}
