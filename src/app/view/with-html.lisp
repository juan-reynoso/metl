(in-package #:metl)

(defmacro with-html (title &body body)
  "The basic structure of a web page HTML => HEAD => BODY"
  `(with-yaclml-output-to-string
     (<:html :doctype "html"
	     (<:head
	      (<:meta (@ "charset"
			 "utf-8"))
	      (<:meta :name "viewport"
		      :content "width=device-width, initial-scale=1")
	      (<:link :rel "stylesheet"
		      :type "text/css"
		      :href "https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css")
	      (<:script :type "text/javascript"
			:src "https://code.jquery.com/jquery-3.6.0.min.js")
	      (<:script :type "text/javascript"
			:src "/js/hls.min.js")
	      (<:script :type "text/javascript"
			:src "/js/video-example.js")
	      (<:title (<:as-html ,title)))
	     (<:body
	      ,@body))))
