    1  sudo whoami
    2  cd ~
    3  git clone https://github.com
    4  git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
    5  ./UTN-FRA_SO_Examenes/202406/script_Precondicion.sh
    6  source ~/.bashrc && history -a
    7  mkdir -p ~/RTA_Examen_$(date +%Y%m%d)
    8  ls -l
    9  sudo fdisk -l
   10  sudo pvcreate /dev/sdd
   11  sudo fdisk /dev/sdd
   12  sudo fdisk /dev/sdc
   13  sudo pvcreate /dev/sdd1 /dev/sdc1
   14  sudo vgcreate vg_datos /dev/sdd1
   15  sudo vgcreate vg_temp /dev/sdc1
   16  sudo vgs
   17  sudo lvcreate -L 5M vg_datos -n lv_docker
   18  Bringing machine 'default' up with 'virtualbox' provider...
   19  ==> default: Cloning VM...
   20  ==> default: Matching MAC address for NAT networking...
   21  ==> default: Checking if box 'ubuntu/jammy64' version '20241002.0.0' is up to date...
   22  ==> default: Setting the name of the VM: isaiasangell
   23  ==> default: Clearing any previously set network interfaces...
   24  ==> default: Preparing network interfaces based on configuration...
   25  ==> default: Forwarding ports...
   26  ==> default: Configuring storage mediums...
   27  ==> default: Running 'pre-boot' VM customizations...
   28  ==> default: Booting VM...
   29  ==> default: Waiting for machine to boot. This may take a few minutes...
   30  sudo install -m 0755 -d /etc/apt/keyrsudo apt install ca-certificates curl
   31  Selecting previously unselected package docker-compose-plugin.
   32  Preparing to unpack .../6-docker-compose-plugin_5.2.0-1~ubuntu.22.04~jammy_amd64.deb ...
   33  Unpacking docker-compose-plugin (5.2.0-1~ubuntu.22.04~jammy) ...
   34  Setting up docker-buildx-plugin (0.35.0-1~ubuntu.22.04~jammy) ...
   35  Setting up containerd.io (2.2.5-1~ubuntu.22.04~jammy) ...
   36  Created symlink /etc/systemd/system/multi-user.target.wants/containerd.service → /lib/systemd/system/containerd.service.
   37  Setting up docker-compose-plugin (5.2.0-1~ubuntu.22.04~jammy) ...
   38  Setting up docker-ce-cli (5:29.6.0-1~ubuntu.22.04~jammy) ...
   39  Setting up pigz (2.6-1) ...
   40  Setting up docker-ce-rootless-extras (5:29.6.0-1~ubuntu.22.04~jammy) ...
   41  Setting up docker-ce (5:29.6.0-1~ubuntu.22.04~jammy) ...
   42  Created symlink /etc/systemd/system/multi-user.target.wants/docker.service → /lib/systemd/system/docker.service.
   43  Created symlink /etc/systemd/system/sockets.target.wants/docker.socket → /lib/systemd/system/docker.socket.
   44  Processing triggers for man-db (2.10.2-1) ...
   45  Scanning processes...
   46  Scanning linux images...
   47  Running kernel seems to be up-to-date.
   48  No services need to be restarted.
   49  No containers need to be restarted.
   50  No user sessions are running outdated binaries.
   51  No VM guests are running outdated hypervisor (qemu) binaries on this host.
   52  vagrant@isaiasangell:~$ sudo docker run hello-world
   53  Unable to find image 'hello-world:latest' locally
   54  latest: Pulling from library/hello-world
   55  4f55086f7dd0: Pull complete
   56  d5e71e642bf5: Download complete
   57  Digest: sha256:96498ffd522e70807ab6384a5c0485a79b9c7c08ca79ba08623edcad1054e62d
   58  Status: Downloaded newer image for hello-world:latest
   59  Hello from Docker!
   60  This message shows that your installation appears to be working correctly.
   61  To generate this message, Docker took the following steps:
   62  To try something more ambitious, you can run an Ubuntu container with:
   63  Share images, automate workflows, and more with a free Docker ID:
   64  For more examples and ideas, visit:
   65  vagrant@isaiasangell:~$
   66  vagrant@isaiasangell:~$ git clone https://github.com
   67  Cloning into 'github.com'...
   68  fatal: repository 'https://github.com/' not found
   69  vagrant@isaiasangell:~$ git --version
   70  git version 2.34.1
   71  vagrant@isaiasangell:~$ git clone https://github.com
   72  Cloning into 'github.com'...
   73  fatal: repository 'https://github.com/' not found
   74  vagrant@isaiasangell:~$ git clone https://github.com
   75  Cloning into 'github.com'...
   76  fatal: repository 'https://github.com/' not found
   77  vagrant@isaiasangell:~$ git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
   78  Cloning into 'UTN-FRA_SO_Examenes'...
   79  remote: Enumerating objects: 844, done.
   80  remote: Counting objects: 100% (71/71), done.
   81  remote: Compressing objects: 100% (54/54), done.
   82  remote: Total 844 (delta 28), reused 51 (delta 14), pack-reused 773 (from 1)
   83  Receiving objects: 100% (844/844), 2.07 MiB | 2.38 MiB/s, done.
   84  Resolving deltas: 100% (348/348), done.
   85  vagrant@isaiasangell:~$ ./UTN-FRA_SO_Examenes/202406/script_Precondicion.sh
   86  chmod: changing permissions of '/home/vagrant/.bash_history': Operation not permitted
   87  Por favor ejecute: source  ~/.bashrc  && history -a
   88  vagrant@isaiasangell:~$ source ~/.bashrc && history -a
   89  vagrant@isaiasangell:~$
   90  vagrant@isaiasangell:~$ mkdir -p ~/RTA_Examen_$(date +%Y%m%d)
   91  vagrant@isaiasangell:~$ sudo useradd -m -s /bin/bash angel
   92  vagrant@isaiasangell:~$ sudo passwd angel
   93  New password:
   94  Retype new password:
   95  passwd: password updated successfully
   96  vagrant@isaiasangell:~$ cd /etc/sudoers.d
   97  -bash: cd: /etc/sudoers.d: Permission denied
   98  vagrant@isaiasangell:~$
   99  vagrant@isaiasangell:~$ cat /etc/passwd angel
  100  root:x:0:0:root:/root:/bin/bash
  101  daemon:x:1:1:daemon:/usr/sbin:/usr/sbin/nologin
  102  bin:x:2:2:bin:/bin:/usr/sbin/nologin
  103  sys:x:3:3:sys:/dev:/usr/sbin/nologin
  104  sync:x:4:65534:sync:/bin:/bin/sync
  105  games:x:5:60:games:/usr/games:/usr/sbin/nologin
  106  man:x:6:12:man:/var/cache/man:/usr/sbin/nologin
  107  lp:x:7:7:lp:/var/spool/lpd:/usr/sbin/nologin
  108  mail:x:8:8:mail:/var/mail:/usr/sbin/nologin
  109  news:x:9:9:news:/var/spool/news:/usr/sbin/nologin
  110  uucp:x:10:10:uucp:/var/spool/uucp:/usr/sbin/nologin
  111  proxy:x:13:13:proxy:/bin:/usr/sbin/nologin
  112  www-data:x:33:33:www-data:/var/www:/usr/sbin/nologin
  113  backup:x:34:34:backup:/var/backups:/usr/sbin/nologin
  114  list:x:38:38:Mailing List Manager:/var/list:/usr/sbin/nologin
  115  irc:x:39:39:ircd:/run/ircd:/usr/sbin/nologin
  116  gnats:x:41:41:Gnats Bug-Reporting System (admin):/var/lib/gnats:/usr/sbin/nologin
  117  nobody:x:65534:65534:nobody:/nonexistent:/usr/sbin/nologin
  118  systemd-network:x:100:102:systemd Network Management,,,:/run/systemd:/usr/sbin/nologin
  119  systemd-resolve:x:101:103:systemd Resolver,,,:/run/systemd:/usr/sbin/nologin
  120  messagebus:x:102:105::/nonexistent:/usr/sbin/nologin
  121  systemd-timesync:x:103:106:systemd Time Synchronization,,,:/run/systemd:/usr/sbin/nologin
  122  syslog:x:104:111::/home/syslog:/usr/sbin/nologin
  123  _apt:x:105:65534::/nonexistent:/usr/sbin/nologin
  124  tss:x:106:112:TPM software stack,,,:/var/lib/tpm:/bin/false
  125  uuidd:x:107:113::/run/uuidd:/usr/sbin/nologin
  126  tcpdump:x:108:114::/nonexistent:/usr/sbin/nologin
  127  sshd:x:109:65534::/run/sshd:/usr/sbin/nologin
  128  pollinate:x:110:1::/var/cache/pollinate:/bin/false
  129  landscape:x:111:116::/var/lib/landscape:/usr/sbin/nologin
  130  fwupd-refresh:x:112:117:fwupd-refresh user,,,:/run/systemd:/usr/sbin/nologin
  131  vagrant:x:1000:1000:,,,:/home/vagrant:/bin/bash
  132  ubuntu:x:1001:1001:Ubuntu:/home/ubuntu:/bin/bash
  133  lxd:x:999:100::/var/snap/lxd/common/lxd:/bin/false
  134  angel:x:1002:1002::/home/angel:/bin/bash
  135  cat: angel: No such file or directory
  136  vagrant@isaiasangell:~$ sudo su
  137  root@isaiasangell:/home/vagrant# cd /etc/sudoers.d
  138  root@isaiasangell:/etc/sudoers.d# cat <<FIN > angel
  139  > angel ALL=(ALL) NOPASSWD:ALL
  140  > FIN
  141  root@isaiasangell:/etc/sudoers.d# chmod 440 angel
  142  root@isaiasangell:/etc/sudoers.d# exit
  143  exit
  144  vagrant@isaiasangell:~$ su -angel
  145  su: invalid option -- 'a'
  146  Try 'su --help' for more information.
  147  vagrant@isaiasangell:~$ su - angel
  148  Password:
  149  angel@isaiasangell:~$ sudo whoami
  150  root
  151  angel@isaiasangell:~$ cd ~
  152  angel@isaiasangell:~$ git clone https://github.com
  153  Cloning into 'github.com'...
  154  fatal: repository 'https://github.com/' not found
  155  angel@isaiasangell:~$
  156  angel@isaiasangell:~$
  157  angel@isaiasangell:~$
  158  angel@isaiasangell:~$ git clone https://github.com
  159  Cloning into 'github.com'...
  160  fatal: repository 'https://github.com/' not found
  161  angel@isaiasangell:~$ git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
  162  Cloning into 'UTN-FRA_SO_Examenes'...
  163  remote: Enumerating objects: 844, done.
  164  remote: Counting objects: 100% (71/71), done.
  165  remote: Compressing objects: 100% (54/54), done.
  166  remote: Total 844 (delta 28), reused 51 (delta 14), pack-reused 773 (from 1)
  167  Receiving objects: 100% (844/844), 2.07 MiB | 2.08 MiB/s, done.
  168  Resolving deltas: 100% (348/348), done.
  169  angel@isaiasangell:~$
  170  angel@isaiasangell:~$
  171  angel@isaiasangell:~$ ./UTN-FRA_SO_Examenes/202406/script_Precondicion.sh
  172  Por favor ejecute: source  ~/.bashrc  && history -a
  173  angel@isaiasangell:~$ source ~/.bashrc && history -a
  174  angel@isaiasangell:~$
  175  angel@isaiasangell:~$ mkdir -p ~/RTA_Examen_$(date +%Y%m%d)
  176  angel@isaiasangell:~$ ls -l
  177  total 8
  178  drwxrwxr-x  2 angel angel 4096 Jun 25 03:49 RTA_Examen_20260625
  179  drwxrwxr-x 16 angel angel 4096 Jun 25 03:48 UTN-FRA_SO_Examenes
  180  angel@isaiasangell:~$ sudo fdisk -l
  181  Disk /dev/loop0: 63.77 MiB, 66871296 bytes, 130608 sectors
  182  Units: sectors of 1 * 512 = 512 bytes
  183  Sector size (logical/physical): 512 bytes / 512 bytes
  184  I/O size (minimum/optimal): 512 bytes / 512 bytes
  185  Disk /dev/loop1: 91.66 MiB, 96116736 bytes, 187728 sectors
  186  Units: sectors of 1 * 512 = 512 bytes
  187  Sector size (logical/physical): 512 bytes / 512 bytes
  188  I/O size (minimum/optimal): 512 bytes / 512 bytes
  189  Disk /dev/loop2: 48.37 MiB, 50716672 bytes, 99056 sectors
  190  Units: sectors of 1 * 512 = 512 bytes
  191  Sector size (logical/physical): 512 bytes / 512 bytes
  192  I/O size (minimum/optimal): 512 bytes / 512 bytes
  193  Disk /dev/sda: 40 GiB, 42949672960 bytes, 83886080 sectors
  194  Disk model: HARDDISK
  195  Units: sectors of 1 * 512 = 512 bytes
  196  Sector size (logical/physical): 512 bytes / 512 bytes
  197  I/O size (minimum/optimal): 512 bytes / 512 bytes
  198  Disklabel type: dos
  199  Disk identifier: 0x4d84c7f4
  200  Device     Boot Start      End  Sectors Size Id Type
  201  /dev/sda1  *     2048 83886046 83883999  40G 83 Linux
  202  Disk /dev/sdc: 1 GiB, 1073741824 bytes, 2097152 sectors
  203  Disk model: HARDDISK
  204  Units: sectors of 1 * 512 = 512 bytes
  205  Sector size (logical/physical): 512 bytes / 512 bytes
  206  I/O size (minimum/optimal): 512 bytes / 512 bytes
  207  Disk /dev/sdb: 10 MiB, 10485760 bytes, 20480 sectors
  208  Disk model: HARDDISK
  209  Units: sectors of 1 * 512 = 512 bytes
  210  Sector size (logical/physical): 512 bytes / 512 bytes
  211  I/O size (minimum/optimal): 512 bytes / 512 bytes
  212  Disk /dev/sdd: 2 GiB, 2147483648 bytes, 4194304 sectors
  213  Disk model: HARDDISK
  214  Units: sectors of 1 * 512 = 512 bytes
  215  Sector size (logical/physical): 512 bytes / 512 bytes
  216  I/O size (minimum/optimal): 512 bytes / 512 bytes
  217  angel@isaiasangell:~$ sudo pvcreate /dev/sdd
  218    Physical volume "/dev/sdd" successfully created.
  219  angel@isaiasangell:~$ sudo fdisk /dev/sdd
  220  Welcome to fdisk (util-linux 2.37.2).
  221  Changes will remain in memory only, until you decide to write them.
  222  Be careful before using the write command.
  223  The device contains 'LVM2_member' signature and it will be removed by a write command. See fdisk(8) man page and --wipe option for more details.
  224  Device does not contain a recognized partition table.
  225  Created a new DOS disklabel with disk identifier 0x88b83560.
  226  Command (m for help): n
  227  Partition type
  228     p   primary (0 primary, 0 extended, 4 free)
  229     e   extended (container for logical partitions)
  230  Select (default p): p
  231  Partition number (1-4, default 1): 1
  232  First sector (2048-4194303, default 2048):
  233  Last sector, +/-sectors or +/-size{K,M,G,T,P} (2048-4194303, default 4194303):
  234  Created a new partition 1 of type 'Linux' and of size 2 GiB.
  235  Command (m for help): t
  236  Selected partition 1
  237  Hex code or alias (type L to list all): 8e
  238  Changed type of partition 'Linux' to 'Linux LVM'.
  239  Command (m for help): w
  240  The partition table has been altered.
  241  Calling ioctl() to re-read partition table.
  242  Syncing disks.
  243  angel@isaiasangell:~$ sudo fdisk /dev/sdc
  244  Welcome to fdisk (util-linux 2.37.2).
  245  Changes will remain in memory only, until you decide to write them.
  246  Be careful before using the write command.
  247  Device does not contain a recognized partition table.
  248  Created a new DOS disklabel with disk identifier 0x92ca6742.
  249  Command (m for help): n
  250  Partition type
  251     p   primary (0 primary, 0 extended, 4 free)
  252     e   extended (container for logical partitions)
  253  Select (default p): p
  254  Partition number (1-4, default 1): 1
  255  First sector (2048-2097151, default 2048):
  256  Last sector, +/-sectors or +/-size{K,M,G,T,P} (2048-2097151, default 2097151):
  257  Created a new partition 1 of type 'Linux' and of size 1023 MiB.
  258  Command (m for help): t
  259  Selected partition 1
  260  Hex code or alias (type L to list all): 8e
  261  Changed type of partition 'Linux' to 'Linux LVM'.
  262  Command (m for help): w
  263  The partition table has been altered.
  264  Calling ioctl() to re-read partition table.
  265  Syncing disks.
  266  angel@isaiasangell:~$ sudo pvcreate /dev/sdd1 /dev/sdc1
  267    Physical volume "/dev/sdd1" successfully created.
  268    Physical volume "/dev/sdc1" successfully created.
  269  angel@isaiasangell:~$ sudo vgcreate vg_datos /dev/sdd1
  270    Volume group "vg_datos" successfully created
  271  angel@isaiasangell:~$ sudo vgcreate vg_temp /dev/sdc1
  272    Volume group "vg_temp" successfully created
  273  angel@isaiasangell:~$ sudo vgs
  274    VG       #PV #LV #SN Attr   VSize    VFree
  275    vg_datos   1   0   0 wz--n-   <2.00g   <2.00g
  276    vg_temp    1   0   0 wz--n- 1020.00m 1020.00m
  277  angel@isaiasangell:~$ sudo lvcreate -L 5M vg_datos -n lv_docker
  278    Rounding up size to full physical extent 8.00 MiB
  279    Logical volume "lv_docker" created.
  280  angel@isaiasangell:~$
  281  clear
  282  sudo lvcreate -L 1.5G vg_datos -n lv_workareas
  283  q
  284  clear
  285  sudo lvs
  286  clear
  287  sudo lvcreate -L 1.5G vg_datos -n lv_workareas
  288  sudo lvcreate -L 512M vg_temp -n lv_swap
  289  sudo lvs
  290  sudo mkdir -p /work
  291  sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker/
  292  sudo mount /dev/mapper/vg_datos-lv_workareas /work/
  293  sudo swapon /dev/mapper/vg_temp-lv_swap
  294  df -h | grep vg_datos
  295  free -h
  296  sudo mkfs.ext4 /dev/mapper/vg_datos-lv_docker
  297  sudo mkfs.ext4 /dev/mapper/vg_datos-lv_workareas
  298  sudo mkswap /dev/mapper/vg_temp-lv_swap
  299  sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker/
  300  sudo mount /dev/mapper/vg_datos-lv_workareas /work/
  301  sudo swapon /dev/mapper/vg_temp-lv_swap
  302  df -h | grep vg_datos
  303  free -h
  304  sudo systemctl restart docker
  305  cd ~/RTA_Examen_20260625/
  306  history > Punto_A.sh
  307  ls -l
  308  sudo lvs
  309  cd ~
  310  sudo mkdir -p /usr/local/bin/angell
  311  ls -la
  312  sudo cat /home/user/UTN_.../202406/bash_script/lista_usuarios.txt
  313  cat ~/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
  314  sudo cat <<'FIN' > /usr/local/bin/angell/AltaUser-Groups.sh
  315  #!/bin/bash
  316  USUARIOPASS=$1
  317  LISTA=$2
  318  if [ -z "$USUARIOPASS" ] || [ -z "$LISTA" ]; then
  319      echo "Error: Faltan parámetros. Uso: $0 <usuario> <path_lista>"
  320      exit 1
  321  fi
  322  ANT_IFS=$IFS
  323  IFS=$'\n'
  324  CONTRA=$(sudo grep -w "^$USUARIOPASS" /etc/shadow | awk -F ':' '{print $2}')
  325  for LINEA in $(cat $LISTA | grep -v ^#)
  326  do
  327      USUARIO=$(echo $LINEA | awk -F ',' '{print $1}')
  328      GRUPO=$(echo $LINEA | awk -F ',' '{print $2}')
  329      HOMEUSR=$(echo $LINEA | awk -F ',' '{print $3}')
  330      sudo groupadd -f $GRUPO
  331      sudo useradd -s /bin/bash -g $GRUPO -d $HOMEUSR -m -p "$CONTRA" $USUARIO
  332  done
  333  IFS=$ANT_IFS
  334  FIN
  335  cp AltaUser-Groups.sh RTA_Examen_[fecha]/
  336  sudo chmod +x /usr/local/bin/angell/AltaUser-Groups.sh
  337  sudo mv /usr/local/bin/angell/AltaUserUser-Groups.sh /usr/local/bin/angell/AltaUser-Groups.sh
  338  sudo chmod +x /usr/local/bin/angell/AltaUser-Groups.sh
  339  ls -l /usr/local/bin/angell/
  340  sudo cat <<'FIN' > /usr/local/bin/angell/AltaUser-Groups.sh
  341  #!/bin/bash
  342  USUARIOPASS=$1
  343  LISTA=$2
  344  if [ -z "$USUARIOPASS" ] || [ -z "$LISTA" ]; then
  345      echo "Error: Faltan parámetros. Uso: $0 <usuario> <path_lista>"
  346      exit 1
  347  fi
  348  ANT_IFS=$IFS
  349  IFS=$'\n'
  350  CONTRA=$(sudo grep -w "^$USUARIOPASS" /etc/shadow | awk -F ':' '{print $2}')
  351  for LINEA in $(cat $LISTA | grep -v ^#)
  352  do
  353      USUARIO=$(echo $LINEA | awk -F ',' '{print $1}')
  354      GRUPO=$(echo $LINEA | awk -F ',' '{print $2}')
  355      HOMEUSR=$(echo $LINEA | awk -F ',' '{print $3}')
  356      sudo groupadd -f $GRUPO
  357      sudo useradd -s /bin/bash -g $GRUPO -d $HOMEUSR -m -p "$CONTRA" $USUARIO
  358  done
  359  IFS=$ANT_IFS
  360  FIN
  361  sudo chmod +x /usr/local/bin/angell/AltaUser-Groups.sh
  362  cat <<'FIN' > ~/AltaUser-Groups.sh
  363  #!/bin/bash
  364  USUARIOPASS=$1
  365  LISTA=$2
  366  if [ -z "$USUARIOPASS" ] || [ -z "$LISTA" ]; then
  367      echo "Error: Faltan parámetros. Uso: $0 <usuario> <path_lista>"
  368      exit 1
  369  fi
  370  ANT_IFS=$IFS
  371  IFS=$'\n'
  372  CONTRA=$(sudo grep -w "^$USUARIOPASS" /etc/shadow | awk -F ':' '{print $2}')
  373  for LINEA in $(cat $LISTA | grep -v ^#)
  374  do
  375      USUARIO=$(echo $LINEA | awk -F ',' '{print $1}')
  376      GRUPO=$(echo $LINEA | awk -F ',' '{print $2}')
  377      HOMEUSR=$(echo $LINEA | awk -F ',' '{print $3}')
  378      sudo groupadd -f $GRUPO
  379      sudo useradd -s /bin/bash -g $GRUPO -d $HOMEUSR -m -p "$CONTRA" $USUARIO
  380  done
  381  IFS=$ANT_IFS
  382  FIN
  383  sudo mv ~/AltaUser-Groups.sh /usr/local/bin/angell/AltaUser-Groups.sh
  384  sudo chmod +x /usr/local/bin/angell/AltaUser-Groups.sh
  385  sudo /usr/local/bin/angell/AltaUser-Groups.sh angel ~/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
  386  cp /usr/local/bin/angell/AltaUser-Groups.sh ~/RTA_Examen_20260625/
  387  ls -la
  388  cd ~/RTA_Examen_20260625/
  389  history > Punto_B.sh
  390  ls -la
  391  cat ~/RTA_Examen_20260625/Punto_B.sh
  392  clear
  393  cd
  394  cd <Path-Repo>/202406/docker/
  395  cd ~/UTN-FRA_SO_Examenes/202406/docker/
  396  vim index.html
  397  docker login
  398  vim dockerfile
  399  docker build -t isaiasangel/web1-angell .
  400  sudo docker login -t isaiasangel
  401  sudo docker login -u isaiasangel
  402  sudo docker build -t isaiasangel/web1-angell .
  403  sudo docker push isaiasangel/web1-angell
  404  sudo docker run -d -p 8080:80 --name mi-prueba isaiasangel/web1-angell
  405  #!/bin/bash
  406  sudo docker run -d -p 8080:80 --name contenedor-web1 isaiasangel/web1-angell
  407  vim run.sh
  408  sudo docker push isaiasangel/web1-angell
  409  sudo docker rm -f contenedor-web1
  410  vim run.sh
  411  chmod +x run.sh
  412  como puedo ver lo que se subio a docker
  413  docker search isaiasangel/web1-angell
  414  sudo docker search isaiasangel/web1-angell
  415  sudo docker run -d -p 8080:80 --name mi-prueba isaiasangel/web1-angell:latest 
  416  cp run.sh ~/RTA_Examen_20260625/
  417  cd ~/RTA_Examen_20260625/
  418  history > Punto_C.sh
