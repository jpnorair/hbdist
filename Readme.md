# HB Software Distribution

A git repository with submodules, that encapsulates all the open-source HB software into a single, parent repository.  The individual repositories encapsulated in hbdist are shown below:

* [_hbsys](https://github.com/jpnorair/_hbsys)
* [argtable](https://github.com/jpnorair/argtable)
* [bintex](https://github.com/jpnorair/bintex)
* [birdmon](https://github.com/jpnorair/birdmon)
* [ccronexpr](https://github.com/jpnorair/ccronexpr)
* [cJSON](https://github.com/jpnorair/cjson)
* [clithread](https://github.com/jpnorair/clithread)
* [cmdtab](https://github.com/jpnorair/cmdtab)
* [hbutils](https://github.com/jpnorair/hbutils)
* [libjudy](https://github.com/jpnorair/libjudy)
* [libotfs](https://github.com/jpnorair/libotfs)
* [OTEAX](https://github.com/jpnorair/oteax)
* [otdb](https://github.com/jpnorair/otdb)
* [otter](https://github.com/jpnorair/otter)
* [ottercat](https://github.com/jpnorair/ottercat)
* [otvar](https://github.com/jpnorair/otvar)
* [wfedd](https://github.com/jpnorair/wfedd)

## Building & Installing

HB software uses the [HB build system](https://github.com/jpnorair/_hbsys).
It uses only Makefiles and is very simple.  To customize a build, edit the makefile!

### Building

You can build all the HB software with a "make all" operation.  This will build each software product and package it into the `_hbsys` directory.

```
$ make all
```

### Installing

There are a few make rules to install.  You can add more, or alter the existing rules, to suit your purposes.

```$ make usr_install```

Installs into `/usr/local/` directories.

```$ make install```

Installs into `/opt/` directories.

```$ make uninstall```

Removes everything that was installed into any/all of the available install directories.

