# 201608 GeneX
----------


## notation (sample code)
```
# comment line starts with '#'

# line starts with '$' is a command line you should enter
$ cd
```

## question / doubts ?
- google it
- have nice friends



# [1] Unix

## [1-1] relative path / absolute path

- relative path = location relative to your working directory
- absolute path = location from the root directory, `/`
- `~/`: home directory
- `/`: root directory
-  note: home directory and root directory are different

## [1-2] useful shortcut keys
- `CTRL + c`: stop running command
- `CTRL + d`: logout the session
- `CTRL + a`: move your cursor to the beginnig of the line
- `CTRL + e`: move your cursor to the end of the line
- `CTRL + k`: cut
- `CTRL + y`: paste
- `CTRL + r`: search from your history


## [1-3] basic commands

### `ls` -- list directory contents

- list the content in your current directory

```
$ ls
```

- list all the files include hidden files

```
$ ls -a
```

### `man` -- format and display the on-line manual pages
- check `ls` command, for example

```
$ man ls
```

### `pwd` -- return working directory name

```
$ pwd
```

### `mkdir` -- make directories

- create a new directory, `geneX`

```
$ mkdir geneX
```


### `cd` -- change the working directory

- move to a differnt directory, `geneX`

```
$ cd geneX
```

- check if you successfully changed your working directory

```
$ pwd
```


### `rm` -- remove file / directory

- remove a file

```
$ rm file
```

- to remove a directory with contents, add `-r` option

```
$ rm -r geneX
```

## [1-4] [advanced] `$PATH`
- `$echo $PATH`
- `export PATH=/some-path/bin:$PATH`
- `~/.bash_rc`, `~/.bash_profile`
-  `source`

## [1-5] [advanced] commands good to know
- `history`
- `pushd`/`popd`
- `cat`
- `less`
- `cut`


# [2] How to connect to your server (ssh)

# [3] qstat/qsub/qdel

# [4] software

