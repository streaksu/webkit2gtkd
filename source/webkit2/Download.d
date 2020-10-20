module webkit2.Download;

private import glib.ErrorG;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import std.algorithm;
private import webkit2.URIRequest;
private import webkit2.URIResponse;
private import webkit2.WebView;
private import webkit2.c.functions;
public  import webkit2.c.types;


/**
 * #WebKitDownload carries information about a download request and
 * response, including a #WebKitURIRequest and a #WebKitURIResponse
 * objects. The application may use this object to control the
 * download process, or to simply figure out what is to be downloaded,
 * and handle the download process itself.
 */
public class Download : ObjectG
{
	/** the main Gtk struct */
	protected WebKitDownload* webKitDownload;

	/** Get the main Gtk struct */
	public WebKitDownload* getDownloadStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDownload;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDownload;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDownload* webKitDownload, bool ownedRef = false)
	{
		this.webKitDownload = webKitDownload;
		super(cast(GObject*)webKitDownload, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_download_get_type();
	}

	/**
	 * Cancels the download. When the ongoing download
	 * operation is effectively cancelled the signal
	 * #WebKitDownload::failed is emitted with
	 * %WEBKIT_DOWNLOAD_ERROR_CANCELLED_BY_USER error.
	 */
	public void cancel()
	{
		webkit_download_cancel(webKitDownload);
	}

	/**
	 * Returns the current value of the #WebKitDownload:allow-overwrite property,
	 * which determines whether the download will overwrite an existing file on
	 * disk, or if it will fail if the destination already exists.
	 *
	 * Returns: the current value of the #WebKitDownload:allow-overwrite property
	 *
	 * Since: 2.6
	 */
	public bool getAllowOverwrite()
	{
		return webkit_download_get_allow_overwrite(webKitDownload) != 0;
	}

	/**
	 * Obtains the URI to which the downloaded file will be written. You
	 * can connect to #WebKitDownload::created-destination to make
	 * sure this method returns a valid destination.
	 *
	 * Returns: the destination URI or %NULL
	 */
	public string getDestination()
	{
		return Str.toString(webkit_download_get_destination(webKitDownload));
	}

	/**
	 * Gets the elapsed time in seconds, including any fractional part.
	 * If the download finished, had an error or was cancelled this is
	 * the time between its start and the event.
	 *
	 * Returns: seconds since the download was started
	 */
	public double getElapsedTime()
	{
		return webkit_download_get_elapsed_time(webKitDownload);
	}

	/**
	 * Gets the value of the #WebKitDownload:estimated-progress property.
	 * You can monitor the estimated progress of the download operation by
	 * connecting to the notify::estimated-progress signal of @download.
	 *
	 * Returns: an estimate of the of the percent complete for a download
	 *     as a range from 0.0 to 1.0.
	 */
	public double getEstimatedProgress()
	{
		return webkit_download_get_estimated_progress(webKitDownload);
	}

	/**
	 * Gets the length of the data already downloaded for @download
	 * in bytes.
	 *
	 * Returns: the amount of bytes already downloaded.
	 */
	public ulong getReceivedDataLength()
	{
		return webkit_download_get_received_data_length(webKitDownload);
	}

	/**
	 * Retrieves the #WebKitURIRequest object that backs the download
	 * process.
	 *
	 * Returns: the #WebKitURIRequest of @download
	 */
	public URIRequest getRequest()
	{
		auto __p = webkit_download_get_request(webKitDownload);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(URIRequest)(cast(WebKitURIRequest*) __p);
	}

	/**
	 * Retrieves the #WebKitURIResponse object that backs the download
	 * process. This method returns %NULL if called before the response
	 * is received from the server. You can connect to notify::response
	 * signal to be notified when the response is received.
	 *
	 * Returns: the #WebKitURIResponse, or %NULL if
	 *     the response hasn't been received yet.
	 */
	public URIResponse getResponse()
	{
		auto __p = webkit_download_get_response(webKitDownload);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(URIResponse)(cast(WebKitURIResponse*) __p);
	}

	/**
	 * Get the #WebKitWebView that initiated the download.
	 *
	 * Returns: the #WebKitWebView that initiated @download,
	 *     or %NULL if @download was not initiated by a #WebKitWebView.
	 */
	public WebView getWebView()
	{
		auto __p = webkit_download_get_web_view(webKitDownload);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(WebView)(cast(WebKitWebView*) __p);
	}

	/**
	 * Sets the #WebKitDownload:allow-overwrite property, which determines whether
	 * the download may overwrite an existing file on disk, or if it will fail if
	 * the destination already exists.
	 *
	 * Params:
	 *     allowed = the new value for the #WebKitDownload:allow-overwrite property
	 *
	 * Since: 2.6
	 */
	public void setAllowOverwrite(bool allowed)
	{
		webkit_download_set_allow_overwrite(webKitDownload, allowed);
	}

	/**
	 * Sets the URI to which the downloaded file will be written.
	 * This method should be called before the download transfer
	 * starts or it will not have any effect on the ongoing download
	 * operation. To set the destination using the filename suggested
	 * by the server connect to #WebKitDownload::decide-destination
	 * signal and call webkit_download_set_destination(). If you want to
	 * set a fixed destination URI that doesn't depend on the suggested
	 * filename you can connect to notify::response signal and call
	 * webkit_download_set_destination().
	 * If #WebKitDownload::decide-destination signal is not handled
	 * and destination URI is not set when the download transfer starts,
	 * the file will be saved with the filename suggested by the server in
	 * %G_USER_DIRECTORY_DOWNLOAD directory.
	 *
	 * Params:
	 *     uri = the destination URI
	 */
	public void setDestination(string uri)
	{
		webkit_download_set_destination(webKitDownload, Str.toStringz(uri));
	}

	/**
	 * This signal is emitted after #WebKitDownload::decide-destination and before
	 * #WebKitDownload::received-data to notify that destination file has been
	 * created successfully at @destination.
	 *
	 * Params:
	 *     destination = the destination URI
	 */
	gulong addOnCreatedDestination(void delegate(string, Download) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "created-destination", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * This signal is emitted after response is received to
	 * decide a destination URI for the download. If this signal is not
	 * handled the file will be downloaded to %G_USER_DIRECTORY_DOWNLOAD
	 * directory using @suggested_filename.
	 *
	 * Params:
	 *     suggestedFilename = the filename suggested for the download
	 *
	 * Returns: %TRUE to stop other handlers from being invoked for the event.
	 *     %FALSE to propagate the event further.
	 */
	gulong addOnDecideDestination(bool delegate(string, Download) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "decide-destination", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * This signal is emitted when an error occurs during the download
	 * operation. The given @error, of the domain %WEBKIT_DOWNLOAD_ERROR,
	 * contains further details of the failure. If the download is cancelled
	 * with webkit_download_cancel(), this signal is emitted with error
	 * %WEBKIT_DOWNLOAD_ERROR_CANCELLED_BY_USER. The download operation finishes
	 * after an error and #WebKitDownload::finished signal is emitted after this one.
	 *
	 * Params:
	 *     error = the #GError that was triggered
	 */
	gulong addOnFailed(void delegate(ErrorG, Download) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "failed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * This signal is emitted when download finishes successfully or due to an error.
	 * In case of errors #WebKitDownload::failed signal is emitted before this one.
	 */
	gulong addOnFinished(void delegate(Download) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "finished", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * This signal is emitted after response is received,
	 * every time new data has been written to the destination. It's
	 * useful to know the progress of the download operation.
	 *
	 * Params:
	 *     dataLength = the length of data received in bytes
	 */
	gulong addOnReceivedData(void delegate(ulong, Download) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "received-data", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
