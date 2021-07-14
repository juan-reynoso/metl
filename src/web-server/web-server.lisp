(in-package #:metl)

(defparameter *server* nil)
(defvar *wwwroot*  (concatenate 'string (namestring (asdf:component-pathname (asdf:find-system :metl))) "wwwroot"))

(defun start-web-server (&key (port 8090))
  "Start the web server"
  (setf *server* (start (make-instance 'easy-acceptor :port port))))

(defun stop-web-server ()
  "Stop the web server"
  (stop *server*))

(defun restart-web-server ()
  "Restart the web server"
  (stop-web-server)
  (start-web-server))
