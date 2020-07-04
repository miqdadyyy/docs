# Documentation

### ButterKnife Download
```
implementation 'com.jakewharton:butterknife:8.8.1'
annotationProcessor 'com.jakewharton:butterknife-compiler:8.8.1'
```

### Laravel 5.6 Error Migration
```
<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Schema;


public function boot()
{
    Schema::defaultStringLength(191);
}
```

### Secret API_KEY or Other on Gradle

> 1. Add /gradle.properties into gitignore file.
> 2. Add line in Gradle.properties file "API_KEY = "CopyYourAPI_KEYhere""
> 3. Add below line in app:build.gradle buildConfigField("String", "API_KEY", API_KEY)
> 4. Use Key using the following statement "BuildConfig.API_KEY" Copy this whereever do you need API_KEY

__Example__ :
gradle.properties
```
API_KEY="TooManySecrets"
```
build.gradle (app)
```
defaultConfig {
    applicationId "com.miqdad.myProjects"
    minSdkVersion 16
    targetSdkVersion 27
    versionCode 1
    versionName "1.0"

    // Please ensure you have a valid API KEY for themoviedb.org↵
       to use this app
    // A valid key will need to be entered
    buildConfigField("String", "API_KEY", API_KEY)
  }
```
Java file
```
private static final String API_KEY = BuildConfig.API_KEY;
```


### RecycleView ItemClick Support on MainActivity
__Code__ :
> [Code](./ItemClickSupport.java)  

__Usage__ :
```
ItemClickSupport.addTo(rvBooks).setOnItemClickListener(new ItemClickSupport.OnItemClickListener() {
            @Override
            public void onItemClicked(RecyclerView recyclerView, int position, View v) {
                // action code here
            }
        });
```

### Laravel User Model Auth
```

use Illuminate\Notifications\Notifiable;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{

use Notifiable;

...

```

### Laravel web.config for Azure
```
<?xml version="1.0" encoding="utf-8"?>  
<configuration>  
  <system.webServer>
    <urlCompression doDynamicCompression="true" doStaticCompression="true" dynamicCompressionBeforeCache="true"/>
    <staticContent>
      <remove fileExtension=".svg" />
      <mimeMap fileExtension=".svg" mimeType="image/svg+xml" />
      <mimeMap fileExtension=".woff" mimeType="application/font-woff" />
      <clientCache httpExpires="Mon, 30 Mar 2020 00:00:00 GMT" cacheControlMode="UseExpires" />
    </staticContent>
<handlers>
      <remove name="OPTIONSVerbHandler" />
    </handlers>
    <rewrite>
      <rules>
        <rule name="Laravel5" stopProcessing="true">
          <match url="^" ignoreCase="false" />
          <conditions logicalGrouping="MatchAll">
            <add input="{REQUEST_FILENAME}" matchType="IsDirectory" negate="true" />
            <add input="{REQUEST_FILENAME}" matchType="IsFile" negate="true" />
          </conditions>
          <action type="Rewrite" url="index.php" appendQueryString="true" />
        </rule>
      </rules>
    </rewrite>
  </system.webServer>
</configuration>
```


### Laravel apache2 config
```
        <Directory /pathtodir>
           Options Indexes FollowSymLinks Includes ExecCGI
           AllowOverride All
           Order allow,deny
           Allow from all
           Require all granted
        </Directory>
```
### Github ignore permission
```
git config core.fileMode false
```
### Curl Recursive
```
wget \
     --recursive \
     --no-clobber \
     --page-requisites \
     --html-extension \
     --convert-links \
     --restrict-file-names=windows \
     --no-parent \
     #url
```

### Nginx Laravel vhost.conf
```

server {
    listen 80;
    index index.php index.html;
    root /var/www/public;

    location / {
        try_files $uri /index.php?$args;
    }

    location ~ \.php$ {
        fastcgi_split_path_info ^(.+\.php)(/.+)$;
        fastcgi_pass app:9000;
        fastcgi_index index.php;
        include fastcgi_params;
        fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;
        fastcgi_param PATH_INFO $fastcgi_path_info;
    }
}
```

### Apache Reverse Proxy
```
        ServerName yourdomain.com
#		Redirect permanent / https://yourdomain.com/
        ProxyPreserveHost On
        ProxyRequests Off
        ProxyPass / http://0.0.0.0:9000/
        ProxyPassReverse / http://0.0.0.0:9000/
```

### Install docker with script
```
curl -fsSL https://get.docker.com -o get-docker.sh && sudo sh get-docker.sh
```

### Install php with deps
```
apt install php php-cli php-dom php-mbstring php-gd php-dom php-mysql php-curl php-zip
```
