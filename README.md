# d
Shorthand for docker run

**INSTALL**

```
curl -o /usr/local/bin/d https://raw.githubusercontent.com/genki/d/master/d
chmod +x /usr/local/bin/d
```

**USAGE**

```
d [<options for docker run>] <image>[:<tag>][@<entrypoint>] [<args>]
```

*`<options for docker run>`* must start from '-' and not contain white spaces. 
If you want to contain white spaces, quote the options.

*`<entrypoint>`* can overwrite the original entrypoint of the image.

**EXAMPLES**

* Start irb

```
d ruby:alpine@irb
```

* Check the current stable version of golang.
```
d golang:alpine@go version
```

* Start web server locally at port 8000 to publish contents of current directory
```
d -p8000:8000 ruby:alpine -rwebrick -e 'WEBrick::HTTPServer.new(:DocumentRoot => "./", :Port => 8000).start'
```
