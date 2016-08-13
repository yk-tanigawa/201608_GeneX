# 201608 GeneX
----------


## notation (sample code)
```
# comment lines start with '#'

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
- `which`
- `pushd`/`popd`
- `cat`
- `less`
- `head`
- `tail`
- `cut`


# [2] How to connect to your server (ssh)

## [2-1] obtain your accunt
- ask your IT admin
- you will have your username & password

## [2-2] connect to your server
- connect to your server
  - If you are asked about footprint stuff, type yes + ENTER

```
$ ssh username@servername.your.university.edu
```

## [2-3] logout from your server
- `CTRL + d`: logout the session

## [2-4] copy your file to  your server
- `scp` command (`ssh` version of `cp`)
  - do not forget to add `:` at the end of the line

```
$ scp your_local_file username@servername.your.university.edu:
```

## [2-5] copy your file from your server
```
$ scp username@servername.your.university.edu:your_remote_file local_file_name
```

# [3] qlogin/qstat/qsub/qdel
## [3-1] qlogin -- submit an interactive login session to Oracle Grid Engine

`$ qlogin`

## [3-2] [advanced] qstat -- show the status of Grid Engine jobs and queues

`$ qstat`

## [3-3] [advanced] qsub -- submit a batch job to Grid Engine

`$ qsub script.sh`

## [3-4] [advanced] qdel -- delete Grid Engine jobs from queues

`$ qdel <JOBID>`

# [4] [advanced] software

- usually, most of the commonly used softwares are already installed to you server by your IT admin.
- You can download and install the software

## [4-1] [advanced] download
- `wget`

## [4-2] [advanced] install
- read `README` file
- in most of the cases, you will follow the three steps

```
./configure --prefix=$HOME
make -j
make install
```

