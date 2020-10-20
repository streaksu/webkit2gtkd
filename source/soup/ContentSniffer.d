module soup.ContentSniffer;

private import glib.ConstructionException;
private import glib.HashTable;
private import glib.Str;
private import gobject.ObjectG;
private import soup.Buffer;
private import soup.Message;
private import soup.SessionFeatureIF;
private import soup.SessionFeatureT;
private import soup.c.functions;
public  import soup.c.types;


/**
 * A #SoupContentSniffer tries to detect the actual content type of
 * the files that are being downloaded by looking at some of the data
 * before the #SoupMessage emits its #SoupMessage::got-headers signal.
 * #SoupContentSniffer implements #SoupSessionFeature, so you can add
 * content sniffing to a session with soup_session_add_feature() or
 * soup_session_add_feature_by_type().
 *
 * Since: 2.28
 */
public class ContentSniffer : ObjectG, SessionFeatureIF
{
	/** the main Gtk struct */
	protected SoupContentSniffer* soupContentSniffer;

	/** Get the main Gtk struct */
	public SoupContentSniffer* getContentSnifferStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return soupContentSniffer;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)soupContentSniffer;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (SoupContentSniffer* soupContentSniffer, bool ownedRef = false)
	{
		this.soupContentSniffer = soupContentSniffer;
		super(cast(GObject*)soupContentSniffer, ownedRef);
	}

	// add the SessionFeature capabilities
	mixin SessionFeatureT!(SoupContentSniffer);


	/** */
	public static GType getType()
	{
		return soup_content_sniffer_get_type();
	}

	/**
	 * Creates a new #SoupContentSniffer.
	 *
	 * Returns: a new #SoupContentSniffer
	 *
	 * Since: 2.28
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = soup_content_sniffer_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(SoupContentSniffer*) __p, true);
	}

	/**
	 * Gets the number of bytes @sniffer needs in order to properly sniff
	 * a buffer.
	 *
	 * Returns: the number of bytes to sniff
	 *
	 * Since: 2.28
	 */
	public size_t getBufferSize()
	{
		return soup_content_sniffer_get_buffer_size(soupContentSniffer);
	}

	/**
	 * Sniffs @buffer to determine its Content-Type. The result may also
	 * be influenced by the Content-Type declared in @msg's response
	 * headers.
	 *
	 * Params:
	 *     msg = the message to sniff
	 *     buffer = a buffer containing the start of @msg's response body
	 *     params = return
	 *         location for Content-Type parameters (eg, "charset"), or %NULL
	 *
	 * Returns: the sniffed Content-Type of @buffer; this will never be %NULL,
	 *     but may be "application/octet-stream".
	 *
	 * Since: 2.28
	 */
	public string sniff(Message msg, Buffer buffer, out HashTable params)
	{
		GHashTable* outparams = null;

		auto retStr = soup_content_sniffer_sniff(soupContentSniffer, (msg is null) ? null : msg.getMessageStruct(), (buffer is null) ? null : buffer.getBufferStruct(), &outparams);

		params = new HashTable(outparams);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}
}
