(in-package #:metl)

(setq *dispatch-table*
      (list
       (create-regex-dispatcher "^/$" 'index)
       (create-prefix-dispatcher  "/index.html" 'index)
       (create-prefix-dispatcher  "/chunk" 'chunk-of-code)
       (create-prefix-dispatcher  "/ajax-example.html" 'ajax-example)))
