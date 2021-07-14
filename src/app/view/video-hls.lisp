(in-package #:metl)

(defun video-hls ()
  "Video HLS example."
  (with-html "index"
    (<:div :class "container pt-5 d-flex flex-column"
	   (<:div :class "row"
		  (<:div :class "col-12 col-md-6"
			 (<:div :class "card shadow"
				(<:div :class "card-header"
				       "Video file")
				(<:video :controls ""
					 :src "/video/big_buck_bunny.mp4")))
		  (<:div :class "col-12 col-md-6"
			 (<:div :class "card shadow"
				(<:div :class "card-header"
				       "Video HLS")
				(<:video :controls ""
					 :id "video-hls")))))
    (<:script :type "text/javascript"
	      (<:as-is "liveStreamingExample();"))))
