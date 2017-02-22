# d
Shorthand for docker run

**USAGE**

```
d [<options for docker run>] <image>[:<tag>][@<entrypoint>] [<args>]
```

*`<options for docker run>`* must start from '-' and not contain white spaces. 
If you want to contain white spaces, quote the options.

*`<entrypoint>`* can overwrite the original entrypoint of the image.
