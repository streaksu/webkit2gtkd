module soup.MessageBody;

private import glib.ConstructionException;
private import glib.MemorySlice;
private import glib.Str;
private import gobject.ObjectG;
private import soup.Buffer;
private import soup.c.functions;
public  import soup.c.types;


/**
 * #SoupMessageBody represents the request or response body of a
 * #SoupMessage.
 * 
 * In addition to #SoupMessageBody, libsoup also defines a "smaller"
 * data buffer type, #SoupBuffer, which is primarily used as a
 * component of #SoupMessageBody. In particular, when using chunked
 * encoding to transmit or receive a message, each chunk is
 * represented as a #SoupBuffer.
 */
public final class MessageBody
{
	/** the main Gtk struct */
	protected SoupMessageBody* soupMessageBody;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public SoupMessageBody* getMessageBodyStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return soupMessageBody;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)soupMessageBody;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (SoupMessageBody* soupMessageBody, bool ownedRef = false)
	{
		this.soupMessageBody = soupMessageBody;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( ownedRef )
			soup_message_body_free(soupMessageBody);
	}


	/**
	 * the data
	 */
	public @property string data()
	{
		return Str.toString(soupMessageBody.data);
	}

	/** Ditto */
	public @property void data(string value)
	{
		soupMessageBody.data = Str.toStringz(value);
	}

	/**
	 * length of @data
	 */
	public @property long length()
	{
		return soupMessageBody.length;
	}

	/** Ditto */
	public @property void length(long value)
	{
		soupMessageBody.length = value;
	}

	/** */
	public static GType getType()
	{
		return soup_message_body_get_type();
	}

	/**
	 * Creates a new #SoupMessageBody. #SoupMessage uses this internally; you
	 * will not normally need to call it yourself.
	 *
	 * Returns: a new #SoupMessageBody.
	 *
	 * Throws: ConstructionException GTK+ fails to create the object.
	 */
	public this()
	{
		auto __p = soup_message_body_new();

		if(__p is null)
		{
			throw new ConstructionException("null returned by new");
		}

		this(cast(SoupMessageBody*) __p);
	}

	/**
	 * Appends @length bytes from @data to @body according to @use.
	 *
	 * Params:
	 *     use = how to use @data
	 *     data = data to append
	 */
	public void append(SoupMemoryUse use, ubyte[] data)
	{
		soup_message_body_append(soupMessageBody, use, data.ptr, cast(size_t)data.length);
	}

	/**
	 * Appends the data from @buffer to @body. (#SoupMessageBody uses
	 * #SoupBuffers internally, so this is normally a constant-time
	 * operation that doesn't actually require copying the data in
	 * @buffer.)
	 *
	 * Params:
	 *     buffer = a #SoupBuffer
	 */
	public void appendBuffer(Buffer buffer)
	{
		soup_message_body_append_buffer(soupMessageBody, (buffer is null) ? null : buffer.getBufferStruct());
	}

	/**
	 * Appends @length bytes from @data to @body.
	 *
	 * This function is exactly equivalent to soup_message_body_append()
	 * with %SOUP_MEMORY_TAKE as second argument; it exists mainly for
	 * convenience and simplifying language bindings.
	 *
	 * Params:
	 *     data = data to append
	 *
	 * Since: 2.32
	 */
	public void appendTake(char[] data)
	{
		soup_message_body_append_take(soupMessageBody, data.ptr, cast(size_t)data.length);
	}

	/**
	 * Tags @body as being complete; Call this when using chunked encoding
	 * after you have appended the last chunk.
	 */
	public void complete()
	{
		soup_message_body_complete(soupMessageBody);
	}

	/**
	 * Fills in @body's data field with a buffer containing all of the
	 * data in @body (plus an additional '\0' byte not counted by @body's
	 * length field).
	 *
	 * Returns: a #SoupBuffer containing the same data as @body.
	 *     (You must free this buffer if you do not want it.)
	 */
	public Buffer flatten()
	{
		auto __p = soup_message_body_flatten(soupMessageBody);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Buffer)(cast(SoupBuffer*) __p, true);
	}

	/**
	 * Frees @body. You will not normally need to use this, as
	 * #SoupMessage frees its associated message bodies automatically.
	 */
	public void free()
	{
		soup_message_body_free(soupMessageBody);
		ownedRef = false;
	}

	/**
	 * Gets the accumulate flag on @body; see
	 * soup_message_body_set_accumulate() for details.
	 *
	 * Returns: the accumulate flag for @body.
	 *
	 * Since: 2.24
	 */
	public bool getAccumulate()
	{
		return soup_message_body_get_accumulate(soupMessageBody) != 0;
	}

	/**
	 * Gets a #SoupBuffer containing data from @body starting at @offset.
	 * The size of the returned chunk is unspecified. You can iterate
	 * through the entire body by first calling
	 * soup_message_body_get_chunk() with an offset of 0, and then on each
	 * successive call, increment the offset by the length of the
	 * previously-returned chunk.
	 *
	 * If @offset is greater than or equal to the total length of @body,
	 * then the return value depends on whether or not
	 * soup_message_body_complete() has been called or not; if it has,
	 * then soup_message_body_get_chunk() will return a 0-length chunk
	 * (indicating the end of @body). If it has not, then
	 * soup_message_body_get_chunk() will return %NULL (indicating that
	 * @body may still potentially have more data, but that data is not
	 * currently available).
	 *
	 * Params:
	 *     offset = an offset
	 *
	 * Returns: a #SoupBuffer, or %NULL.
	 */
	public Buffer getChunk(long offset)
	{
		auto __p = soup_message_body_get_chunk(soupMessageBody, offset);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(Buffer)(cast(SoupBuffer*) __p, true);
	}

	/**
	 * Handles the #SoupMessageBody part of receiving a chunk of data from
	 * the network. Normally this means appending @chunk to @body, exactly
	 * as with soup_message_body_append_buffer(), but if you have set
	 * @body's accumulate flag to %FALSE, then that will not happen.
	 *
	 * This is a low-level method which you should not normally need to
	 * use.
	 *
	 * Params:
	 *     chunk = a #SoupBuffer received from the network
	 *
	 * Since: 2.24
	 */
	public void gotChunk(Buffer chunk)
	{
		soup_message_body_got_chunk(soupMessageBody, (chunk is null) ? null : chunk.getBufferStruct());
	}

	/**
	 * Sets or clears the accumulate flag on @body. (The default value is
	 * %TRUE.) If set to %FALSE, @body's %data field will not be filled in
	 * after the body is fully sent/received, and the chunks that make up
	 * @body may be discarded when they are no longer needed.
	 *
	 * In particular, if you set this flag to %FALSE on an "incoming"
	 * message body (that is, the #SoupMessage:response_body of a
	 * client-side message, or #SoupMessage:request_body of a server-side
	 * message), this will cause each chunk of the body to be discarded
	 * after its corresponding #SoupMessage::got_chunk signal is emitted.
	 * (This is equivalent to setting the deprecated
	 * %SOUP_MESSAGE_OVERWRITE_CHUNKS flag on the message.)
	 *
	 * If you set this flag to %FALSE on the #SoupMessage:response_body of
	 * a server-side message, it will cause each chunk of the body to be
	 * discarded after its corresponding #SoupMessage::wrote_chunk signal
	 * is emitted.
	 *
	 * If you set the flag to %FALSE on the #SoupMessage:request_body of a
	 * client-side message, it will block the accumulation of chunks into
	 * @body's %data field, but it will not normally cause the chunks to
	 * be discarded after being written like in the server-side
	 * #SoupMessage:response_body case, because the request body needs to
	 * be kept around in case the request needs to be sent a second time
	 * due to redirection or authentication. However, if you set the
	 * %SOUP_MESSAGE_CAN_REBUILD flag on the message, then the chunks will
	 * be discarded, and you will be responsible for recreating the
	 * request body after the #SoupMessage::restarted signal is emitted.
	 *
	 * Params:
	 *     accumulate = whether or not to accumulate body chunks in @body
	 *
	 * Since: 2.24
	 */
	public void setAccumulate(bool accumulate)
	{
		soup_message_body_set_accumulate(soupMessageBody, accumulate);
	}

	/**
	 * Deletes all of the data in @body.
	 */
	public void truncate()
	{
		soup_message_body_truncate(soupMessageBody);
	}

	/**
	 * Handles the #SoupMessageBody part of writing a chunk of data to the
	 * network. Normally this is a no-op, but if you have set @body's
	 * accumulate flag to %FALSE, then this will cause @chunk to be
	 * discarded to free up memory.
	 *
	 * This is a low-level method which you should not need to use, and
	 * there are further restrictions on its proper use which are not
	 * documented here.
	 *
	 * Params:
	 *     chunk = a #SoupBuffer returned from soup_message_body_get_chunk()
	 *
	 * Since: 2.24
	 */
	public void wroteChunk(Buffer chunk)
	{
		soup_message_body_wrote_chunk(soupMessageBody, (chunk is null) ? null : chunk.getBufferStruct());
	}
}
