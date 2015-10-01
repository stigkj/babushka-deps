# Babushka deps

I use [Babushka](http://babushka.me) to automate the setup of my OS X machine.

## Initialize a new machine

When starting from scratch on a new machine with only OS X installed, run this:

```
sh -c "`curl https://raw.githubusercontent.com/stigkj/babushka-deps/master/init.sh`"
```

## Update an existing machine

To update an existing machine with changes in this repo, run this:

```
babushka stigkj:main
```
