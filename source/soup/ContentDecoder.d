module soup.ContentDecoder;

private import gobject.ObjectG;
private import soup.SessionFeatureIF;
private import soup.SessionFeatureT;
private import soup.c.functions;
public  import soup.c.types;


/**
 * #SoupContentDecoder handles adding the "Accept-Encoding" header on
 * outgoing messages, and processing the "Content-Encoding" header on
 * incoming ones. Currently it supports the "gzip", "deflate", and "br"
 * content codings.
 * 
 * If you are using a plain #SoupSession (ie, not #SoupSessionAsync or
 * #SoupSessionSync), then a #SoupContentDecoder will automatically be
 * added to the session by default. (You can use
 * %SOUP_SESSION_REMOVE_FEATURE_BY_TYPE at construct time if you don't
 * want this.) If you are using one of the deprecated #SoupSession
 * subclasses, you can add a #SoupContentDecoder to your session with
 * soup_session_add_feature() or soup_session_add_feature_by_type().
 * 
 * If #SoupContentDecoder successfully decodes the Content-Encoding,
 * it will set the %SOUP_MESSAGE_CONTENT_DECODED flag on the message,
 * and the message body and the chunks in the #SoupMessage::got_chunk
 * signals will contain the decoded data; however, the message headers
 * will be unchanged (and so "Content-Encoding" will still be present,
 * "Content-Length" will describe the original encoded length, etc).
 * 
 * If "Content-Encoding" contains any encoding types that
 * #SoupContentDecoder doesn't recognize, then none of the encodings
 * will be decoded (and the %SOUP_MESSAGE_CONTENT_DECODED flag will
 * not be set).
 * 
 * (Note that currently there is no way to (automatically) use
 * Content-Encoding when sending a request body, or to pick specific
 * encoding types to support.)
 *
 * Since: 2.30
 */
public class ContentDecoder : ObjectG, SessionFeatureIF
{
	/** the main Gtk struct */
	protected SoupContentDecoder* soupContentDecoder;

	/** Get the main Gtk struct */
	public SoupContentDecoder* getContentDecoderStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return soupContentDecoder;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)soupContentDecoder;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (SoupContentDecoder* soupContentDecoder, bool ownedRef = false)
	{
		this.soupContentDecoder = soupContentDecoder;
		super(cast(GObject*)soupContentDecoder, ownedRef);
	}

	// add the SessionFeature capabilities
	mixin SessionFeatureT!(SoupContentDecoder);


	/** */
	public static GType getType()
	{
		return soup_content_decoder_get_type();
	}
}
