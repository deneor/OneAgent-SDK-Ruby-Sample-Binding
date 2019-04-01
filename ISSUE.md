# LoadError

How to reproduce:
* clone this repo
* `git submodules init && git submodules update`
* `docker build -t oneagent_sdk .``
* `docker run --rm -it oneagent_sdk`
* `require_relative 'oneagentsdk'`

```
irb(main):001:0> require_relative 'oneagentsdk'
Traceback (most recent call last):
        8: from /usr/local/bin/irb:11:in `<main>'
        7: from (irb):1
        6: from (irb):1:in `require_relative'
        5: from /oneagentsdk.rb:25:in `<top (required)>'
        4: from /oneagentsdk.rb:29:in `<module:OneAgentSdk>'
        3: from /usr/local/bundle/gems/ffi-1.10.0/lib/ffi/library.rb:99:in `ffi_lib'
        2: from /usr/local/bundle/gems/ffi-1.10.0/lib/ffi/library.rb:99:in `map'
        1: from /usr/local/bundle/gems/ffi-1.10.0/lib/ffi/library.rb:145:in `block in ffi_lib'
LoadError (Could not open library './OneAgent-SDK-for-C/lib/linux-x86_64/libonesdk_shared.so': Error relocating ./OneAgent-SDK-for-C/lib/linux-x86_64/libonesdk_shared.so: __vsnprintf_chk: symbol not found)
```
