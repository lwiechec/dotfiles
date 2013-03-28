(require 'javadoc-lookup)
(require 'maven-fetch)

; add local copies of Java API
(javadoc-add-roots "~/work/doc/jdk-6u30-apidocs")

; add other packages using Maven notation: [groupId artifactId version]
;(javadoc-add-artifacts [commons-configuration commons-configuration "1.6" ])

; use w3m to browse
(setq browse-url-browser-function 'w3m-browse-url)
