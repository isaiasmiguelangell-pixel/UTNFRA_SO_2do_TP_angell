sudo whoami
cd ~
git clone https://github.com
git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
./UTN-FRA_SO_Examenes/202406/script_Precondicion.sh
source ~/.bashrc && history -a
mkdir -p ~/RTA_Examen_$(date +%Y%m%d)
ls -l
sudo fdisk -l
sudo pvcreate /dev/sdd
sudo fdisk /dev/sdd
sudo fdisk /dev/sdc
sudo pvcreate /dev/sdd1 /dev/sdc1
sudo vgcreate vg_datos /dev/sdd1
sudo vgcreate vg_temp /dev/sdc1
sudo vgs
sudo lvcreate -L 5M vg_datos -n lv_docker
Bringing machine 'default' up with 'virtualbox' provider...
==> default: Cloning VM...
==> default: Matching MAC address for NAT networking...
==> default: Checking if box 'ubuntu/jammy64' version '20241002.0.0' is up to date...
==> default: Setting the name of the VM: isaiasangell
==> default: Clearing any previously set network interfaces...
==> default: Preparing network interfaces based on configuration...
==> default: Forwarding ports...
==> default: Configuring storage mediums...
==> default: Running 'pre-boot' VM customizations...
==> default: Booting VM...
==> default: Waiting for machine to boot. This may take a few minutes...
sudo install -m 0755 -d /etc/apt/keyrsudo apt install ca-certificates curl
Selecting previously unselected package docker-compose-plugin.
Preparing to unpack .../6-docker-compose-plugin_5.2.0-1~ubuntu.22.04~jammy_amd64.deb ...
Unpacking docker-compose-plugin (5.2.0-1~ubuntu.22.04~jammy) ...
Setting up docker-buildx-plugin (0.35.0-1~ubuntu.22.04~jammy) ...
Setting up containerd.io (2.2.5-1~ubuntu.22.04~jammy) ...
Created symlink /etc/systemd/system/multi-user.target.wants/containerd.service → /lib/systemd/system/containerd.service.
Setting up docker-compose-plugin (5.2.0-1~ubuntu.22.04~jammy) ...
Setting up docker-ce-cli (5:29.6.0-1~ubuntu.22.04~jammy) ...
Setting up pigz (2.6-1) ...
Setting up docker-ce-rootless-extras (5:29.6.0-1~ubuntu.22.04~jammy) ...
Setting up docker-ce (5:29.6.0-1~ubuntu.22.04~jammy) ...
Created symlink /etc/systemd/system/multi-user.target.wants/docker.service → /lib/systemd/system/docker.service.
Created symlink /etc/systemd/system/sockets.target.wants/docker.socket → /lib/systemd/system/docker.socket.
Processing triggers for man-db (2.10.2-1) ...
Scanning processes...
Scanning linux images...
Running kernel seems to be up-to-date.
No services need to be restarted.
No containers need to be restarted.
No user sessions are running outdated binaries.
No VM guests are running outdated hypervisor (qemu) binaries on this host.
vagrant@isaiasangell:~$ sudo docker run hello-world
Unable to find image 'hello-world:latest' locally
latest: Pulling from library/hello-world
4f55086f7dd0: Pull complete
d5e71e642bf5: Download complete
Digest: sha256:96498ffd522e70807ab6384a5c0485a79b9c7c08ca79ba08623edcad1054e62d
Status: Downloaded newer image for hello-world:latest
Hello from Docker!
This message shows that your installation appears to be working correctly.
To generate this message, Docker took the following steps:
To try something more ambitious, you can run an Ubuntu container with:
Share images, automate workflows, and more with a free Docker ID:
For more examples and ideas, visit:
vagrant@isaiasangell:~$
vagrant@isaiasangell:~$ git clone https://github.com
Cloning into 'github.com'...
fatal: repository 'https://github.com/' not found
vagrant@isaiasangell:~$ git --version
git version 2.34.1
vagrant@isaiasangell:~$ git clone https://github.com
Cloning into 'github.com'...
fatal: repository 'https://github.com/' not found
vagrant@isaiasangell:~$ git clone https://github.com
Cloning into 'github.com'...
fatal: repository 'https://github.com/' not found
vagrant@isaiasangell:~$ git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
Cloning into 'UTN-FRA_SO_Examenes'...
remote: Enumerating objects: 844, done.
remote: Counting objects: 100% (71/71), done.
remote: Compressing objects: 100% (54/54), done.
remote: Total 844 (delta 28), reused 51 (delta 14), pack-reused 773 (from 1)
Receiving objects: 100% (844/844), 2.07 MiB | 2.38 MiB/s, done.
Resolving deltas: 100% (348/348), done.
vagrant@isaiasangell:~$ ./UTN-FRA_SO_Examenes/202406/script_Precondicion.sh
chmod: changing permissions of '/home/vagrant/.bash_history': Operation not permitted
Por favor ejecute: source  ~/.bashrc  && history -a
vagrant@isaiasangell:~$ source ~/.bashrc && history -a
vagrant@isaiasangell:~$
vagrant@isaiasangell:~$ mkdir -p ~/RTA_Examen_$(date +%Y%m%d)
vagrant@isaiasangell:~$ sudo useradd -m -s /bin/bash angel
vagrant@isaiasangell:~$ sudo passwd angel
New password:
Retype new password:
passwd: password updated successfully
vagrant@isaiasangell:~$ cd /etc/sudoers.d
-bash: cd: /etc/sudoers.d: Permission denied
vagrant@isaiasangell:~$
vagrant@isaiasangell:~$ cat /etc/passwd angel
root:x:0:0:root:/root:/bin/bash
daemon:x:1:1:daemon:/usr/sbin:/usr/sbin/nologin
bin:x:2:2:bin:/bin:/usr/sbin/nologin
sys:x:3:3:sys:/dev:/usr/sbin/nologin
sync:x:4:65534:sync:/bin:/bin/sync
games:x:5:60:games:/usr/games:/usr/sbin/nologin
man:x:6:12:man:/var/cache/man:/usr/sbin/nologin
lp:x:7:7:lp:/var/spool/lpd:/usr/sbin/nologin
mail:x:8:8:mail:/var/mail:/usr/sbin/nologin
news:x:9:9:news:/var/spool/news:/usr/sbin/nologin
uucp:x:10:10:uucp:/var/spool/uucp:/usr/sbin/nologin
proxy:x:13:13:proxy:/bin:/usr/sbin/nologin
www-data:x:33:33:www-data:/var/www:/usr/sbin/nologin
backup:x:34:34:backup:/var/backups:/usr/sbin/nologin
list:x:38:38:Mailing List Manager:/var/list:/usr/sbin/nologin
irc:x:39:39:ircd:/run/ircd:/usr/sbin/nologin
gnats:x:41:41:Gnats Bug-Reporting System (admin):/var/lib/gnats:/usr/sbin/nologin
nobody:x:65534:65534:nobody:/nonexistent:/usr/sbin/nologin
systemd-network:x:100:102:systemd Network Management,,,:/run/systemd:/usr/sbin/nologin
systemd-resolve:x:101:103:systemd Resolver,,,:/run/systemd:/usr/sbin/nologin
messagebus:x:102:105::/nonexistent:/usr/sbin/nologin
systemd-timesync:x:103:106:systemd Time Synchronization,,,:/run/systemd:/usr/sbin/nologin
syslog:x:104:111::/home/syslog:/usr/sbin/nologin
_apt:x:105:65534::/nonexistent:/usr/sbin/nologin
tss:x:106:112:TPM software stack,,,:/var/lib/tpm:/bin/false
uuidd:x:107:113::/run/uuidd:/usr/sbin/nologin
tcpdump:x:108:114::/nonexistent:/usr/sbin/nologin
sshd:x:109:65534::/run/sshd:/usr/sbin/nologin
pollinate:x:110:1::/var/cache/pollinate:/bin/false
landscape:x:111:116::/var/lib/landscape:/usr/sbin/nologin
fwupd-refresh:x:112:117:fwupd-refresh user,,,:/run/systemd:/usr/sbin/nologin
vagrant:x:1000:1000:,,,:/home/vagrant:/bin/bash
ubuntu:x:1001:1001:Ubuntu:/home/ubuntu:/bin/bash
lxd:x:999:100::/var/snap/lxd/common/lxd:/bin/false
angel:x:1002:1002::/home/angel:/bin/bash
cat: angel: No such file or directory
vagrant@isaiasangell:~$ sudo su
root@isaiasangell:/home/vagrant# cd /etc/sudoers.d
root@isaiasangell:/etc/sudoers.d# cat <<FIN > angel
> angel ALL=(ALL) NOPASSWD:ALL
> FIN
root@isaiasangell:/etc/sudoers.d# chmod 440 angel
root@isaiasangell:/etc/sudoers.d# exit
exit
vagrant@isaiasangell:~$ su -angel
su: invalid option -- 'a'
Try 'su --help' for more information.
vagrant@isaiasangell:~$ su - angel
Password:
angel@isaiasangell:~$ sudo whoami
root
angel@isaiasangell:~$ cd ~
angel@isaiasangell:~$ git clone https://github.com
Cloning into 'github.com'...
fatal: repository 'https://github.com/' not found
angel@isaiasangell:~$
angel@isaiasangell:~$
angel@isaiasangell:~$
angel@isaiasangell:~$ git clone https://github.com
Cloning into 'github.com'...
fatal: repository 'https://github.com/' not found
angel@isaiasangell:~$ git clone https://github.com/upszot/UTN-FRA_SO_Examenes.git
Cloning into 'UTN-FRA_SO_Examenes'...
remote: Enumerating objects: 844, done.
remote: Counting objects: 100% (71/71), done.
remote: Compressing objects: 100% (54/54), done.
remote: Total 844 (delta 28), reused 51 (delta 14), pack-reused 773 (from 1)
Receiving objects: 100% (844/844), 2.07 MiB | 2.08 MiB/s, done.
Resolving deltas: 100% (348/348), done.
angel@isaiasangell:~$
angel@isaiasangell:~$
angel@isaiasangell:~$ ./UTN-FRA_SO_Examenes/202406/script_Precondicion.sh

Por favor ejecute: source  ~/.bashrc  && history -a

angel@isaiasangell:~$ source ~/.bashrc && history -a
angel@isaiasangell:~$
angel@isaiasangell:~$ mkdir -p ~/RTA_Examen_$(date +%Y%m%d)
angel@isaiasangell:~$ ls -l
total 8
drwxrwxr-x  2 angel angel 4096 Jun 25 03:49 RTA_Examen_20260625
drwxrwxr-x 16 angel angel 4096 Jun 25 03:48 UTN-FRA_SO_Examenes
angel@isaiasangell:~$ sudo fdisk -l
Disk /dev/loop0: 63.77 MiB, 66871296 bytes, 130608 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes


Disk /dev/loop1: 91.66 MiB, 96116736 bytes, 187728 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes


Disk /dev/loop2: 48.37 MiB, 50716672 bytes, 99056 sectors
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes


Disk /dev/sda: 40 GiB, 42949672960 bytes, 83886080 sectors
Disk model: HARDDISK
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
Disklabel type: dos
Disk identifier: 0x4d84c7f4

Device     Boot Start      End  Sectors Size Id Type
/dev/sda1  *     2048 83886046 83883999  40G 83 Linux


Disk /dev/sdc: 1 GiB, 1073741824 bytes, 2097152 sectors
Disk model: HARDDISK
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes


Disk /dev/sdb: 10 MiB, 10485760 bytes, 20480 sectors
Disk model: HARDDISK
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes


Disk /dev/sdd: 2 GiB, 2147483648 bytes, 4194304 sectors
Disk model: HARDDISK
Units: sectors of 1 * 512 = 512 bytes
Sector size (logical/physical): 512 bytes / 512 bytes
I/O size (minimum/optimal): 512 bytes / 512 bytes
angel@isaiasangell:~$ sudo pvcreate /dev/sdd
  Physical volume "/dev/sdd" successfully created.
angel@isaiasangell:~$ sudo fdisk /dev/sdd

Welcome to fdisk (util-linux 2.37.2).
Changes will remain in memory only, until you decide to write them.
Be careful before using the write command.

The device contains 'LVM2_member' signature and it will be removed by a write command. See fdisk(8) man page and --wipe option for more details.

Device does not contain a recognized partition table.
Created a new DOS disklabel with disk identifier 0x88b83560.

Command (m for help): n
Partition type
   p   primary (0 primary, 0 extended, 4 free)
   e   extended (container for logical partitions)
Select (default p): p
Partition number (1-4, default 1): 1
First sector (2048-4194303, default 2048):
Last sector, +/-sectors or +/-size{K,M,G,T,P} (2048-4194303, default 4194303):

Created a new partition 1 of type 'Linux' and of size 2 GiB.

Command (m for help): t
Selected partition 1
Hex code or alias (type L to list all): 8e
Changed type of partition 'Linux' to 'Linux LVM'.

Command (m for help): w
The partition table has been altered.
Calling ioctl() to re-read partition table.
Syncing disks.

angel@isaiasangell:~$ sudo fdisk /dev/sdc

Welcome to fdisk (util-linux 2.37.2).
Changes will remain in memory only, until you decide to write them.
Be careful before using the write command.

Device does not contain a recognized partition table.
Created a new DOS disklabel with disk identifier 0x92ca6742.

Command (m for help): n
Partition type
   p   primary (0 primary, 0 extended, 4 free)
   e   extended (container for logical partitions)
Select (default p): p
Partition number (1-4, default 1): 1
First sector (2048-2097151, default 2048):
Last sector, +/-sectors or +/-size{K,M,G,T,P} (2048-2097151, default 2097151):

Created a new partition 1 of type 'Linux' and of size 1023 MiB.

Command (m for help): t
Selected partition 1
Hex code or alias (type L to list all): 8e
Changed type of partition 'Linux' to 'Linux LVM'.

Command (m for help): w
The partition table has been altered.
Calling ioctl() to re-read partition table.
Syncing disks.

angel@isaiasangell:~$ sudo pvcreate /dev/sdd1 /dev/sdc1
  Physical volume "/dev/sdd1" successfully created.
  Physical volume "/dev/sdc1" successfully created.
angel@isaiasangell:~$ sudo vgcreate vg_datos /dev/sdd1
  Volume group "vg_datos" successfully created
angel@isaiasangell:~$ sudo vgcreate vg_temp /dev/sdc1
  Volume group "vg_temp" successfully created
angel@isaiasangell:~$ sudo vgs
  VG       #PV #LV #SN Attr   VSize    VFree
  vg_datos   1   0   0 wz--n-   <2.00g   <2.00g
  vg_temp    1   0   0 wz--n- 1020.00m 1020.00m
angel@isaiasangell:~$ sudo lvcreate -L 5M vg_datos -n lv_docker
  Rounding up size to full physical extent 8.00 MiB
  Logical volume "lv_docker" created.
angel@isaiasangell:~$
clear
sudo lvcreate -L 1.5G vg_datos -n lv_workareas
q

clear
sudo lvs
clear
sudo lvcreate -L 1.5G vg_datos -n lv_workareas
sudo lvcreate -L 512M vg_temp -n lv_swap
sudo lvs
sudo mkdir -p /work
sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker/
sudo mount /dev/mapper/vg_datos-lv_workareas /work/
sudo swapon /dev/mapper/vg_temp-lv_swap
df -h | grep vg_datos
free -h
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_docker
sudo mkfs.ext4 /dev/mapper/vg_datos-lv_workareas
sudo mkswap /dev/mapper/vg_temp-lv_swap
sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker/
sudo mount /dev/mapper/vg_datos-lv_workareas /work/
sudo swapon /dev/mapper/vg_temp-lv_swap
df -h | grep vg_datos
free -h
sudo systemctl restart docker
cd ~/RTA_Examen_20260625/
history > Punto_A.sh
ls -l
sudo lvs
cd ~
sudo mkdir -p /usr/local/bin/angell
ls -la
sudo cat /home/user/UTN_.../202406/bash_script/lista_usuarios.txt
cat ~/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
sudo cat <<'FIN' > /usr/local/bin/angell/AltaUser-Groups.sh
#!/bin/bash
USUARIOPASS=$1
LISTA=$2
if [ -z "$USUARIOPASS" ] || [ -z "$LISTA" ]; then
    echo "Error: Faltan parámetros. Uso: $0 <usuario> <path_lista>"
    exit 1
fi
ANT_IFS=$IFS
IFS=$'\n'
CONTRA=$(sudo grep -w "^$USUARIOPASS" /etc/shadow | awk -F ':' '{print $2}')
for LINEA in $(cat $LISTA | grep -v ^#)
do
    USUARIO=$(echo $LINEA | awk -F ',' '{print $1}')
    GRUPO=$(echo $LINEA | awk -F ',' '{print $2}')
    HOMEUSR=$(echo $LINEA | awk -F ',' '{print $3}')
    sudo groupadd -f $GRUPO
    sudo useradd -s /bin/bash -g $GRUPO -d $HOMEUSR -m -p "$CONTRA" $USUARIO
done
IFS=$ANT_IFS
FIN

cp AltaUser-Groups.sh RTA_Examen_[fecha]/
sudo chmod +x /usr/local/bin/angell/AltaUser-Groups.sh
sudo mv /usr/local/bin/angell/AltaUserUser-Groups.sh /usr/local/bin/angell/AltaUser-Groups.sh
sudo chmod +x /usr/local/bin/angell/AltaUser-Groups.sh
ls -l /usr/local/bin/angell/
sudo cat <<'FIN' > /usr/local/bin/angell/AltaUser-Groups.sh
#!/bin/bash
USUARIOPASS=$1
LISTA=$2
if [ -z "$USUARIOPASS" ] || [ -z "$LISTA" ]; then
    echo "Error: Faltan parámetros. Uso: $0 <usuario> <path_lista>"
    exit 1
fi
ANT_IFS=$IFS
IFS=$'\n'
CONTRA=$(sudo grep -w "^$USUARIOPASS" /etc/shadow | awk -F ':' '{print $2}')
for LINEA in $(cat $LISTA | grep -v ^#)
do
    USUARIO=$(echo $LINEA | awk -F ',' '{print $1}')
    GRUPO=$(echo $LINEA | awk -F ',' '{print $2}')
    HOMEUSR=$(echo $LINEA | awk -F ',' '{print $3}')
    sudo groupadd -f $GRUPO
    sudo useradd -s /bin/bash -g $GRUPO -d $HOMEUSR -m -p "$CONTRA" $USUARIO
done
IFS=$ANT_IFS
FIN

sudo chmod +x /usr/local/bin/angell/AltaUser-Groups.sh
cat <<'FIN' > ~/AltaUser-Groups.sh
#!/bin/bash
USUARIOPASS=$1
LISTA=$2
if [ -z "$USUARIOPASS" ] || [ -z "$LISTA" ]; then
    echo "Error: Faltan parámetros. Uso: $0 <usuario> <path_lista>"
    exit 1
fi
ANT_IFS=$IFS
IFS=$'\n'
CONTRA=$(sudo grep -w "^$USUARIOPASS" /etc/shadow | awk -F ':' '{print $2}')
for LINEA in $(cat $LISTA | grep -v ^#)
do
    USUARIO=$(echo $LINEA | awk -F ',' '{print $1}')
    GRUPO=$(echo $LINEA | awk -F ',' '{print $2}')
    HOMEUSR=$(echo $LINEA | awk -F ',' '{print $3}')
    sudo groupadd -f $GRUPO
    sudo useradd -s /bin/bash -g $GRUPO -d $HOMEUSR -m -p "$CONTRA" $USUARIO
done
IFS=$ANT_IFS
FIN

sudo mv ~/AltaUser-Groups.sh /usr/local/bin/angell/AltaUser-Groups.sh
sudo chmod +x /usr/local/bin/angell/AltaUser-Groups.sh
sudo /usr/local/bin/angell/AltaUser-Groups.sh angel ~/UTN-FRA_SO_Examenes/202406/bash_script/Lista_Usuarios.txt
cp /usr/local/bin/angell/AltaUser-Groups.sh ~/RTA_Examen_20260625/
ls -la
cd ~/RTA_Examen_20260625/
history > Punto_B.sh
ls -la
cat ~/RTA_Examen_20260625/Punto_B.sh
clear
cd
cd <Path-Repo>/202406/docker/
cd ~/UTN-FRA_SO_Examenes/202406/docker/
vim index.html
docker login
vim dockerfile
docker build -t isaiasangel/web1-angell .
sudo docker login -t isaiasangel
sudo docker login -u isaiasangel
sudo docker build -t isaiasangel/web1-angell .
sudo docker push isaiasangel/web1-angell
sudo docker run -d -p 8080:80 --name mi-prueba isaiasangel/web1-angell
#!/bin/bash
sudo docker run -d -p 8080:80 --name contenedor-web1 isaiasangel/web1-angell
vim run.sh
sudo docker push isaiasangel/web1-angell
sudo docker rm -f contenedor-web1
vim run.sh
chmod +x run.sh
como puedo ver lo que se subio a docker
docker search isaiasangel/web1-angell
sudo docker search isaiasangel/web1-angell
sudo docker run -d -p 8080:80 --name mi-prueba isaiasangel/web1-angell:latest 
cp run.sh ~/RTA_Examen_20260625/
cd ~/RTA_Examen_20260625/
history > Punto_C.sh
ls -la
ip add | grep 192
cd
cd ~/UTN-FRA_SO_Examenes/202406/ansible/
cd ansible/
ls -l
ansible-galaxy role init angell
vim angell/tasks/main.yml
vim angell/templates/datos_equipo.j2
rm -f angell/tasks/main.yml angell/templates/datos_equipo.j2 angell/templates/datos_alumno.j2
vim angell/tasks/main.yml
vim angell/templates/datos_alumno.j2
vim angell/templates/datos_equipo.j2
~/RTA_Examen_20260625/Punto_D.sh
chmod +x ~/RTA_Examen_20260625/Punto_D.sh
~/RTA_Examen_20260625/Punto_D.sh
echo -e '#!/bin/bash\nansible-playbook -i inventory playbook.yml' > ~/RTA_Examen_20260625/Punto_D.sh
~/RTA_Examen_20260625/Punto_D.sh
vim playbook.yml
~/RTA_Examen_20260625/Punto_D.sh
vim playbook.yml
~/RTA_Examen_20260625/Punto_D.sh
ls -la
sudo apt update && sudo apt install -y tree
tree /tmp/2do_parcial/
cd
history -a
cp ~/.bash_history ~/UTNFRA_SO_2do_TP_angell/
ls -d ~/*2do_TP* ~/UTN* 2>/dev/null
cd ~ && git clone https://github.com
cd ~ && git clone https://github.com/isaiasmiguelangell-pixel/UTNFRA_SO_2do_TP_angell.git
