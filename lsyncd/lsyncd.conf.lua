settings {
   logfile = "/var/log/lsyncd/lsyncd.log",
   statusFile = "/var/log/lsyncd/lsyncd-status.log"
}

sync {
   default.rsyncssh,
   source = "/data/projects/n1-webapp",
   host = "n1.ru.sms.d",
   targetdir = "/data/projects/n1-webapp",
   exclude = {"node_modules"},
   delay = 0,
   rsync = {
       archive = false,
       compress = false,
       whole_file = false
   }
}

sync {
   default.rsyncssh,
   source = "/data/projects/n1-webapp/node_modules/ngs/",
   host = "n1.ru.sms.d",
   targetdir = "/data/projects/n1-webapp/node_modules/ngs/",
   exclude = {"node_modules"},
   delay = 0,
   rsync = {
       archive = false,
       compress = false,
       whole_file = false
   }
}
