1. check file exist
```sh
config_file="/app/config/Config.json"
version_file="/app/config/Config.version"

if [ -e "$config_file" -a -e "$version_file" ] ;then
    echo "$config_file found."
    echo "$version_file found."
fi
```

2. read file and compare string
```sh
default_version=`cat $default_version_file`
version=`cat $version_file`
if [ "$default_version" != "$version" ] ;then
    echo "Updating $config_file and $version_file..."
else
    echo "$config_file and $version_file are latest"
fi
```