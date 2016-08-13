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

## [2-6] [advanced] avoid typing password when you use `ssh`, `scp`


### [2-6-0] outline
- create a key and keyhole
  - google "Public-key cryptography" for the details
- transfer your keyhole (public key) to your server
- register the keyhole to the list of keyholes on your server
- make a configuration file to use key file when you connect to your server

### [2-6-1] create a key and keyhole
```
$ cd ~/.ssh
$ ssh-keygen -b 8196
Generating public/private rsa key pair.
Enter file in which to save the key (/Users/yosuke/.ssh/id_rsa): ./keyfile
Enter passphrase (empty for no passphrase): 
Enter same passphrase again: 
Your identification has been saved in ./keyfile.
Your public key has been saved in ./keyfile.pub.
The key fingerprint is:
3b:4d:14:3c:12:0c:86:d5:2c:fb:f6:67:0c:28:85:a1 yosuke@201506ytmlab-2.cshl.edu
The key's randomart image is:
+--[ RSA 8196]----+
|     o+=.o.      |
|    ..o = o.     |
|     . = ...     |
|    E o ..       |
|       oS..      |
|      . ++.      |
|       oo..o     |
|         .. +    |
|           o     |
+-----------------+
```
- do not forget to specify the name of key file.
  - `./keyfile` is just an example
  - you can change to `./yourpreferablekey`
- type enter when you are asked to set passphrase
  - you may add a passphrase to your key if you want to use both key and passphrase

### [2-6-2] transfer your keyhole (public key) to your server
```
$ scp ~/.ssh/keyfile.pub username@servername.your.university.edu:
```

### [2-6-3] register the keyhole to the list of keyholes on your server

- login to your server

```
$ ssh username@servername.your.university.edu
```

- add your keyhole to the list of keyholes

```
$ cat keyfile.pub >> ~/.ssh/authorized_keys
```

- assign proper permission


```
$ chmod 700 ~/.ssh
$ chmod 600 ~/.ssh/authorized_keys
```

- logout from your server
  - `CTRL + d`: logout the session

### [2-6-4] make a configuration file to use key file when you connect to your server

- download `config` file in this page (on the top)
- edit the beginning part of the file

```
Host <<<nickname_of_your_server>>>
  User <<<username>>>
  Port 22
  Hostname <<<servername.your.university.edu>>>
  IdentityFile ~/.ssh/<<server>>
  IdentitiesOnly yes
```

- place it to `~/.ssh/config`


# [3] qlogin/qstat/qsub/qdel
## [3-1] qlogin -- submit an interactive login session to Oracle Grid Engine

`$ qlogin`

## [3-2] [advanced] qstat -- show the status of Grid Engine jobs and queues

`$ qstat`

## [3-3] [advanced] qsub -- submit a batch job to Grid Engine

`$ qsub script.sh`

- a link to a sample scripts can be found in this page (on the top)



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

