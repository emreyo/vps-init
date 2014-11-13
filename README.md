vps-init
========

vps initial install script written in bash

**usage:**

If you have curl: 

    bash <(curl https://raw.githubusercontent.com/emreyo/vps-init/master/vpsi.sh)

or, if you don't have cURL installed,

    wget https://raw.githubusercontent.com/emreyo/vps-init/master/vpsi.sh
    bash vpsi.sh # got sudo?

Also, if you're not the root, append `sudo` before executing the script. Or, run `sudo su`. However, be extra careful when you're root. 

As always, 

**Don't forget to check the contents of the script before executing it!**

* updates apt repos

* installs 

  * backup crons
  * vim
  * git
  * apache2
  * mysql
  * php
  * some php mods
  * composer
  * curl (maybe not the best idea... maybe you didn't download the script, or you used wget. i don't know. )

you can just get the file at url https://raw.githubusercontent.com/emreyo/vps-init/master/vpsi.sh with curl and execute

**todo:**

* ~~backup crons~~
