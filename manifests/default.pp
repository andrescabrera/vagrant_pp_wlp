 class { "wlp::install_java":
 }

 class { "wlp":
      appNames => ['sample.war',],
      puppetFileRoot => "/vagrant",
      serverBinaryName => "wlp-developers-runtime-8.5.5.3.jar",
	  extendedBinaryName => "wlp-developers-extended-8.5.5.3.jar", 
      standalone => true,
      acceptLicense => true,
	  serverName => "liberty1",
 }
 
 notify { 'my_message':
  message => hiera('my_message'),
}