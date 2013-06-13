(require 'emacs-pmd)

(setq epmd-java-binary "/home/luke/work/jdk/jdk1.6.0_24/jre/bin/java"
      epmd-pmd-directory "/home/luke/work/tools/pmd-bin-5.0.4/"
      epmd-rulesets '("basic" "braces" "android" "design"
     	              "empty" "codesize" "naming"
     	              "strings" "typeresolution" "unnecessary"
     	              "unusedcode"))
