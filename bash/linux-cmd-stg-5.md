1. **`a2disconf`** – Disable an Apache configuration file.   Example: `sudo a2disconf example.conf`
2. **`a2dismod`** – Disable an Apache module.   Example: `sudo a2dismod rewrite`
3. **`a2dissite`** – Disable an Apache site.   Example: `sudo a2dissite example.com`
4. **`a2enconf`** – Enable an Apache configuration file.   Example: `sudo a2enconf example.conf`
5. **`a2enmod`** – Enable an Apache module.   Example: `sudo a2enmod rewrite`
6. **`a2ensite`** – Enable an Apache site.   Example: `sudo a2ensite example.com`
7. **`a2query`** – Query Apache configuration.   Example: `a2query -m rewrite`
8. **`aa-enabled`** – Check if AppArmor is enabled.   Example: `aa-enabled`
9. **`aa-exec`** – Execute a command under an AppArmor profile.   Example: `aa-exec -p profile_name command`
10. **`aa-status`** – Display AppArmor status.   Example: `aa-status`
11. **`aa-teardown`** – Unload all AppArmor profiles.   Example: `sudo aa-teardown`
12. **`ab`** – Apache HTTP server benchmarking tool. Example: `ab -n 100 -c 10 http://localhost/`
13. **`ac`** – Print the total connect time for users. Example: `ac -p`
14. **`accton`** – Turn on process accounting.   Example: `sudo accton /var/log/account/pacct`
15. **`add-apt-repository`** – Add a repository to APT sources.   Example: `sudo add-apt-repository ppa:example/ppa`
16. **`addpart`** – Add a partition to a device.   Example: `sudo addpart /dev/sda 3 1024 2048`
17. **`agetty`** – Alternative Linux getty.   Example: `agetty tty1 9600`
18. **`alias`** – Create shortcuts for longer commands. Example: `alias ll='ls -l'`
19. **`alsamixer`** – ALSA soundcard mixer.   Example: `alsamixer`
20. **`amidi`** – ALSA MIDI utility.   Example: `amidi -l`
21. **`amixer`** – ALSA soundcard mixer (command-line).   Example: `amixer sset Master 50%`
22. **`anacron`** – Run periodic jobs.   Example: `sudo anacron`
23. **`apache2ctl`** – Apache HTTP server control interface.   Example: `sudo apache2ctl restart`
24. **`apg`** – Generate random passwords.   Example: `apg -m 12`
25. **`apm`** – Advanced Power Management utility.   Example: `apm`
26. **`apmsleep`** – Suspend or hibernate using APM.   Example: `sudo apmsleep suspend`
27. **`apparmor_parser`** – Load AppArmor profiles.   Example: `sudo apparmor_parser -r /etc/apparmor.d/profile`
28. **`apply`** – Apply a command to a set of arguments.   Example: `apply "echo" file1 file2`
29. **`apropos`** – Search the man pages for a keyword. Example: `apropos copy`
30. **`apt-cache`** – Query the APT cache (Debian/Ubuntu). Example: `apt-cache search vim`
31. **`apt-get`** – APT package handling utility (Debian/Ubuntu). Example: `sudo apt-get install vim`
32. **`apt-key`** – Manage keys for APT repositories. Example: `sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys <key>`
33. **`apt-mark`** – Mark or unmark packages as automatically installed.   Example: `sudo apt-mark auto package_name`
34. **`apt-sortpkgs`** – Sort APT package lists.   Example: `apt-sortpkgs file.list`
35. **`apt`** – Package management system for Debian-based distributions. Example: `sudo apt update`
36. **`ar`** – Create, modify, and extract from archives. Example: `ar x archive.a`
37. **`arch`** – Display machine architecture. Example: `arch`
38. **`arj`** – Compress or extract .arj archives.   Example: `arj x archive.arj`
39. **`arping`** – Send ARP requests to a neighbor.   Example: `arping -I eth0 192.168.1.1`
40. **`as`** – The GNU assembler. Example: `as -o file.o file.s`
41. **`at`** – Schedule a one-time task to be executed later. Example: `at 09:00 < command`
42. **`atq`** – Display the at job queue.   Example: `atq`
43. **`atrm`** – Remove a job from the at queue. Example: `atrm 1`
44. **`atrun`** – Run at jobs.   Example: `sudo atrun`
45. **`authconfig`** – Configure system authentication.   Example: `sudo authconfig --update`
46. **`authselect`** – Configure system authentication (modern replacement for authconfig).   Example: `sudo authselect select sssd`
47. **`autoconf`** – Generate configuration scripts.   Example: `autoconf`
48. **`automake`** – Generate Makefile.in files.   Example: `automake`
49. **`autoreconf`** – Rebuild configure scripts.   Example: `autoreconf`
50. **`autoscan`** – Generate a preliminary configure.ac.   Example: `autoscan`
51. **`autoupdate`** – Update configure.ac to newer standards.   Example: `autoupdate`
52. **`awk`** – Pattern scanning and processing language. Example: `awk '{print $1}' file.txt`
53. **`axel`** – Lightweight command-line download accelerator.   Example: `axel http://example.com/file.txt`
54. **`badblocks`** – Search for bad blocks on a device.   Example: `sudo badblocks /dev/sda`
55. **`base32`** – Encode or decode data in base32.   Example: `echo "hello" | base32`
56. **`base64`** – Encode or decode data in base64.   Example: `echo "hello" | base64`
57. **`basename`** – Strip directory and suffix from filenames. Example: `basename /path/to/file.txt`
58. **`basenc`** – Encode or decode data in various formats.   Example: `basenc --base64 file.txt`
59. **`bashbug`** – Report a bug in Bash.   Example: `bashbug`
60. **`batch`** – Execute commands when system load levels permit. Example: `batch`
61. **`bc`** – Command-line calculator. Example: `echo "5+2" | bc`
62. **`bccmd`** – Send BlueCore commands.   Example: `bccmd -t bcsp /dev/ttyS0`
63. **`bchunk`** – Convert a CD image to an ISO file.   Example: `bchunk file.bin file.cue file.iso`
64. **`bdftopcf`** – Convert BDF fonts to PCF format.   Example: `bdftopcf font.bdf`
65. **`beep`** – Produce a beep sound.   Example: `beep`
66. **`bg`** – Resume a suspended job in the background. Example: `bg %1`
67. **`bind`** – Show or set key bindings for the shell. Example: `bind -P`
68. **`bison`** – GNU parser generator.   Example: `bison file.y`
69. **`blkdiscard`** – Discard sectors on a device.   Example: `sudo blkdiscard /dev/sda`
70. **`blkid`** – Locate/print block device attributes.   Example: `blkid /dev/sda1`
71. **`blockdev`** – Call block device ioctls.   Example: `sudo blockdev --report /dev/sda`
72. **`bootctl`** – Manage systemd-boot.   Example: `sudo bootctl status`
73. **`brctl`** – Manage Ethernet bridges.   Example: `sudo brctl addbr br0`
74. **`break`** – Exit from a loop. Example: `for i in 1 2 3; do break; done`
75. **`bsdtar`** – Manipulate tar archives.   Example: `bsdtar -xvf archive.tar`
76. **`btrfs`** – Manage Btrfs filesystems.   Example: `sudo btrfs subvolume create /mnt/subvol`
77. **`bunzip2`** – Decompress .bz2 files.   Example: `bunzip2 file.bz2`
78. **`busctl`** – Introspect the D-Bus.   Example: `busctl list`
79. **`byobu`** – Text-based window manager and terminal multiplexer.   Example: `byobu`
80. **`bzcat`** – Decompress `.bz2` files. Example: `bzcat file.bz2`
81. **`bzcmp`** – Compare bzip2 compressed files. Example: `bzcmp file1.bz2 file2.bz2`
82. **`bzdiff`** – Compare `.bz2` files. Example: `bzdiff file1.bz2 file2.bz2`
83. **`bzexe`** – Compress executable files.   Example: `bzexe file`
84. **`bzgrep`** – Search `.bz2` files with `grep`. Example: `bzgrep "pattern" file.bz2`
85. **`bzip2`** – Compress files using Burrows-Wheeler block sorting. Example: `bzip2 file.txt`
86. **`bzip2recover`** – Recover data from a corrupted `.bz2` file. Example: `bzip2recover file.bz2`
87. **`bzless`** – View .bz2 files with less.   Example: `bzless file.bz2`
88. **`bzmore`** – View .bz2 files page by page.   Example: `bzmore file.bz2`
89. **`c99`** – Compile C programs.   Example: `c99 -o program program.c`
90. **`cal`** – Display a calendar. Example: `cal 2025`
91. **`calibrate_ppa`** – Calibrate a PPA (Pulse Per Second) device.   Example: `sudo calibrate_ppa`
92. **`cancel`** – Cancel a print job. Example: `cancel 123`
93. **`capinfo`** – Display capabilities of a file.   Example: `capinfo file`
94. **`capsh`** – Set or get capabilities for a process. Example: `capsh --print`
95. **`captoinfo`** – Convert termcap to terminfo.   Example: `captoinfo file.termcap`
96. **`case`** – Conditional statement in shell scripts.   Example: `case $var in pattern) command;; esac`
97. **`cat`** – Concatenate and display file contents. Example: `cat file.txt`
98. **`catman`** – Create or update the manual page cache.   Example: `sudo catman`
99. **`cd`** – Change the current directory. Example: `cd /home/user`
100. **`cdrecord`** – Record CDs or DVDs.   Example: `cdrecord dev=/dev/cdrom file.iso`
101. **`cfdisk`** – Partition table manipulator.   Example: `sudo cfdisk /dev/sda`
102. **`chattr`** – Change file attributes on a Linux file system. Example: `chattr +i file.txt`
103. **`chcon`** – Change the SELinux security context of a file. Example: `chcon -t httpd_sys_content_t file.txt`
104. **`chgrp`** – Change the group ownership of a file. Example: `chgrp group file.txt`
105. **`chkconfig`** – Manage system services. Example: `sudo chkconfig --list`
106. **`chmod`** – Change file permissions. Example: `chmod 755 file.sh`
107. **`chown`** – Change file owner and group. Example: `chown user:group file.txt`
108. **`chroot`** – Change root directory for a command. Example: `chroot /newroot /bin/bash`
109. **`cksum`** – Calculate a CRC checksum of a file. Example: `cksum file.txt`
110. **`clear`** – Clear the terminal screen. Example: `clear`
111. **`cmp`** – Compare two files byte by byte. Example: `cmp file1.txt file2.txt`
112. **`comm`** – Compare two sorted files line by line. Example: `comm file1.txt file2.txt`
113. **`consoletype`** – Display the type of terminal in use. Example: `consoletype`
114. **`continue`** – Resume the next iteration of a loop. Example: `continue`
115. **`cp`** – Copy files or directories. Example: `cp file1.txt file2.txt`
116. **`cpio`** – Copy files to and from archives. Example: `cpio -o < files.txt`
117. **`cron`** – Daemon to execute scheduled commands. Example: `cron`
118. **`crontab`** – Edit the cron jobs for the current user. Example: `crontab -e`
119. **`csplit`** – Split a file into sections based on context. Example: `csplit file.txt /pattern/ {2}`
120. **`ctrlaltdel`** – Reboot the system using a keyboard shortcut. Example: `ctrlaltdel`
121. **`curl`** – Transfer data with URLs. Example: `curl -O http://example.com/file.txt`
122. **`cut`** – Remove sections from each line of files. Example: `cut -d, -f1 file.csv`
123. **`date`** – Display or set the system date and time. Example: `date "+%Y-%m-%d"`
124. **`dc`** – Desk calculator for arbitrary precision arithmetic. Example: `echo "2 3 + p" | dc`
125. **`dd`** – Copy and convert files. Example: `dd if=/dev/sda of=/dev/sdb`
126. **`declare`** – Declare variables and their attributes. Example: `declare -i num=10`
127. **`df`** – Report disk space usage. Example: `df -h`
128. **`diff3`** – Compare three files line by line. Example: `diff3 file1.txt file2.txt file3.txt`
129. **`diff`** – Compare files line by line. Example: `diff file1.txt file2.txt`
130. **`dig`** – DNS lookup utility. Example: `dig google.com`
131. **`dir`** – List directory contents. Example: `dir /home/user`
132. **`dircolors`** – Set terminal color schemes for `ls`. Example: `dircolors`
133. **`dirname`** – Strip the last component from the file name. Example: `dirname /path/to/file.txt`
134. **`dirs`** – Display the directory stack. Example: `dirs`
135. **`dmesg`** – Print or control the kernel ring buffer. Example: `dmesg | grep error`
136. **`dnf`** – Package manager for Fedora and Red Hat. Example: `sudo dnf install vim`
137. **`docker`** – Manage Docker containers and images. Example: `docker run hello-world`
138. **`dpkg`** – Debian package manager for installing, removing, and querying packages. Example: `dpkg -i package.deb`
139. **`dstat`** – Versatile resource statistics tool. Example: `dstat`
140. **`du`** – Estimate file space usage. Example: `du -sh /home/user`
141. **`echo`** – Display a line of text. Example: `echo "Hello, world!"`
142. **`egrep`** – Extended regular expressions for `grep`. Example: `egrep '^test' file.txt`
143. **`eject`** – Eject removable media like CD/DVD. Example: `eject`
144. **`enable`** – Enable a shell built-in command. Example: `enable -n echo`
145. **`env`** – Display environment variables. Example: `env`
146. **`ethtool`** – Display or change network interface settings. Example: `ethtool eth0`
147. **`eval`** – Evaluate and execute arguments as a command. Example: `eval echo hello`
148. **`ex`** – Ex editor, part of the vi editor. Example: `ex file.txt`
149. **`exec`** – Execute a command in the current shell. Example: `exec ls -l`
150. **`exit`** – Exit the shell. Example: `exit`
151. **`expand`** – Convert tabs to spaces. Example: `expand file.txt`
152. **`expect`** – Automate interactive applications. Example: `expect script.exp`
153. **`export`** – Set environment variables. Example: `export PATH=$PATH:/new/path`
154. **`expr`** – Evaluate expressions. Example: `expr 3 + 2`
155. **`factor`** – Factorize a number. Example: `factor 28`
156. **`fakechroot`** – Run a command with fake root privileges. Example: `fakechroot ls`
157. **`false`** – Do nothing, return failure status. Example: `false`
158. **`fc`** – Fix or re-edit commands from the history. Example: `fc`
159. **`fdisk`** – Partition table manipulator for Linux. Example: `fdisk /dev/sda`
160. **`fg`** – Bring a background job to the foreground. Example: `fg %1`
161. **`fgrep`** – Fixed-string search for `grep`. Example: `fgrep "pattern" file.txt`
162. **`file`** – Determine file type. Example: `file file.txt`
163. **`find`** – Search for files in a directory hierarchy. Example: `find /home -name '*.txt'`
164. **`finger`** – User information lookup program. Example: `finger user`
165. **`fmt`** – Simple text formatter. Example: `fmt file.txt`
166. **`fold`** – Wrap text to a specified width. Example: `fold -w 80 file.txt`
167. **`for`** – Loop through a list of values. Example: `for i in {1..5}; do echo $i; done`
168. **`free`** – Display memory usage. Example: `free -h`
169. **`fsck`** – File system consistency check. Example: `fsck /dev/sda1`
170. **`ftp`** – File Transfer Protocol client. Example: `ftp ftp.example.com`
171. **`function`** – Define a function in the shell. Example: `function myfunc { echo "Hello"; }`
172. **`fuser`** – Identify processes using a file. Example: `fuser file.txt`
173. **`g++`** – GNU C++ compiler. Example: `g++ file.cpp -o file`
174. **`gawk`** – Pattern scanning and processing language. Example: `gawk '{print $1}' file.txt`
175. **`gcc`** – GNU C compiler. Example: `gcc -o program program.c`
176. **`gdb`** – GNU debugger. Example: `gdb ./program`
177. **`gedit`** – GUI text editor for GNOME. Example: `gedit file.txt`
178. **`getent`** – Get entries from databases. Example: `getent passwd user`
179. **`getfacl`** – Get file access control lists. Example: `getfacl file.txt`
180. **`getopt`** – Parse command-line options. Example: `getopt -o ab: file.txt`
181. **`getopts`** – Parse positional parameters in a shell script. Example: `getopts "a:b:" opt`
182. **`git`** – Version control system for tracking changes in files. Example: `git status`
183. **`grep`** – Search for patterns in files. Example: `grep 'pattern' file.txt`
184. **`groupadd`** – Add a new group. Example: `sudo groupadd mygroup`
185. **`groupdel`** – Delete a group. Example: `sudo groupdel mygroup`
186. **`groupmod`** – Modify a group. Example: `sudo groupmod -n newgroup oldgroup`
187. **`groups`** – Show user groups. Example: `groups username`
188. **`gunzip`** – Decompress `.gz` files. Example: `gunzip file.gz`
189. **`gzip`** – Compress files using the gzip algorithm. Example: `gzip file.txt`
190. **`halt`** – Halt the system immediately. Example: `halt`
191. **`hash`** – Remember the full path of a command. Example: `hash`
192. **`hd`** – Display files in hexadecimal format. Example: `hd file.txt`
193. **`head`** – Output the first part of files. Example: `head -n 10 file.txt`
194. **`history`** – Show the history of commands used in the shell. Example: `history`
195. **`host`** – DNS lookup utility. Example: `host google.com`
196. **`hostname`** – Show or set the system’s hostname. Example: `hostname`
197. **`hostnamectl`** – Control the system hostname. Example: `hostnamectl set-hostname newhostname`
198. **`htop`** – Interactive process viewer. Example: `htop`
199. **`iconv`** – Convert between different character encodings. Example: `iconv -f utf-8 -t iso-8859-1 file.txt`
200. **`id`** – Print user and group information. Example: `id`
201. **`ifconfig`** – Configure network interfaces. Example: `ifconfig eth0`
202. **`ifdown`** – Shut down a network interface. Example: `sudo ifdown eth0`
203. **`ifup`** – Bring a network interface up. Example: `sudo ifup eth0`
204. **`inotifywait`** – Wait for changes to files using inotify. Example: `inotifywait /path/to/file`
205. **`install`** – Copy files and set attributes. Example: `install -m 755 file /path/to/destination`
206. **`inxi`** – Display system information. Example: `inxi -Fxz`
207. **`iostat`** – CPU and I/O statistics. Example: `iostat`
208. **`iotop`** – Display real-time I/O usage by processes. Example: `iotop`
209. **`ip addr`** – Show or manipulate IP addresses. Example: `ip addr show`
210. **`ip link`** – Show or manipulate network interfaces. Example: `ip link show`
211. **`ip route`** – Show or manipulate IP routing. Example: `ip route show`
212. **`ip rule`** – Show or manipulate routing policy database. Example: `ip rule show`
213. **`ip tunnel`** – Show or configure tunnels. Example: `ip tunnel add tun0 mode gre remote 192.168.1.1 local 192.168.1.2`
214. **`ip`** – Show/manipulate network interfaces, routing, etc. Example: `ip addr show`
215. **`ipcalc`** – Perform IP calculations. Example: `ipcalc 192.168.0.0/24`
216. **`iptables`** – User-space utility for configuring Linux kernel firewall. Example: `sudo iptables -L`
217. **`is`** – List information about a file or directory. Example: `is file.txt`
218. **`isoinfo`** – Display information about ISO-9660 filesystems. Example: `isoinfo -i file.iso -d`
219. **`iw`** – Show or manipulate wireless devices and settings. Example: `iw dev wlan0 link`
220. **`iwconfig`** – Configure wireless network interfaces. Example: `iwconfig wlan0 essid "Network"`
221. **`iwlist`** – Get more detailed wireless network information. Example: `iwlist wlan0 scan`
222. **`jobs`** – Display active jobs in the current shell. Example: `jobs`
223. **`join`** – Join lines of two files on a common field. Example: `join file1.txt file2.txt`
224. **`journalctl`** – Query systemd journal logs. Example: `journalctl -u apache2`
225. **`jq`** – Command-line JSON processor. Example: `jq '.name' file.json`
226. **`kill`** – Terminate a process. Example: `kill 1234`
227. **`killall`** – Kill processes by name. Example: `killall firefox`
228. **`kmod`** – Manage kernel modules. Example: `kmod list`
229. **`last`** – Show the last logins of users. Example: `last`
230. **`less`** – View file contents interactively. Example: `less file.txt`
231. **`let`** – Perform arithmetic operations in the shell. Example: `let x=5+3`
232. **`ln`** – Create hard or symbolic links. Example: `ln -s /path/to/file symlink`
233. **`loadkeys`** – Change the keyboard layout. Example: `loadkeys us`
234. **`local`** – Declare local variables in shell functions. Example: `local var=10`
235. **`locate`** – Find files by name using a database. Example: `locate file.txt`
236. **`login`** – Begin a session on the system. Example: `login`
237. **`logname`** – Print the name of the current user. Example: `logname`
238. **`ls`** – List directory contents. Example: `ls -l`
239. **`lsattr`** – List file attributes on a Linux second extended file system. Example: `lsattr file.txt`
240. **`lsblk`** – List information about block devices. Example: `lsblk`
241. **`lscpu`** – Display information about the CPU architecture. Example: `lscpu`
242. **`lshw`** – Display detailed hardware information. Example: `lshw -short`
243. **`lsmod`** – Show the status of modules in the Linux kernel. Example: `lsmod`
244. **`lsof`** – List open files. Example: `lsof -i`
245. **`lspci`** – List all PCI devices. Example: `lspci`
246. **`lsscsi`** – List SCSI devices. Example: `lsscsi`
247. **`lssubsys`** – Show system device hierarchies. Example: `lssubsys`
248. **`lsusb`** – List all USB devices. Example: `lsusb`
249. **`machinectl`** – Control local and remote containers. Example: `machinectl list`
250. **`man`** – Display the manual pages for a command. Example: `man ls`
251. **`md5sum`** – Calculate and check MD5 checksums. Example: `md5sum file.txt`
252. **`mii-tool`** – Query or control the MII status of network interfaces. Example: `mii-tool eth0`
253. **`mkdir`** – Create directories. Example: `mkdir mydir`
254. **`mkfifo`** – Create a named pipe (FIFO). Example: `mkfifo mypipe`
255. **`mkfs`** – Create a file system. Example: `sudo mkfs.ext4 /dev/sda1`
256. **`mkisofs`** – Create an ISO 9660 filesystem image. Example: `mkisofs -o image.iso /path/to/files`
257. **`mknod`** – Create a special file. Example: `mknod mydevice c 89 1`
258. **`mktemp`** – Create a temporary file or directory. Example: `mktemp`
259. **`more`** – View file contents page by page. Example: `more file.txt`
260. **`mount -o loop`** – Mount an ISO image as a file system. Example: `sudo mount -o loop file.iso /mnt`
261. **`mount`** – Mount a file system. Example: `mount /dev/sda1 /mnt`
262. **`mpstat`** – Report CPU statistics. Example: `mpstat -P ALL`
263. **`mtr`** – Network diagnostic tool combining `ping` and `traceroute`. Example: `mtr google.com`
264. **`mv`** – Move or rename files or directories. Example: `mv file.txt /path/to/destination/`
265. **`namei`** – Follow a path to its components. Example: `namei -l /path/to/file`
266. **`nano`** – Command-line text editor. Example: `nano file.txt`
267. **`nc`** – Netcat, a utility for reading from and writing to network connections. Example: `nc -l 1234`
268. **`netcat`** – Another name for `nc`. Example: `netcat -z -v 192.168.1.1 1-1000`
269. **`netstat`** – Display network connections, routing tables, and more. Example: `netstat -tuln`
270. **`newgrp`** – Log in to a new group. Example: `newgrp staff`
271. **`nice`** – Start a process with a modified scheduling priority. Example: `nice -n 10 command`
272. **`nl`** – Number lines of a file. Example: `nl file.txt`
273. **`nm`** – List symbols from object files. Example: `nm /path/to/file.o`
274. **`nmcli`** – Command-line interface for NetworkManager. Example: `nmcli device status`
275. **`nohup`** – Run a command immune to hangups. Example: `nohup command &`
276. **`nproc`** – Show the number of processing units available. Example: `nproc`
277. **`nslookup`** – Query Internet name servers interactively. Example: `nslookup google.com`
278. **`ntpdate`** – Synchronize the system clock with a remote NTP server. Example: `sudo ntpdate time.google.com`
279. **`numactrl`** – Control NUMA (Non-Uniform Memory Access) policy. Example: `numactrl --interleave=all`
280. **`od`** – Dump files in octal, hexadecimal, or ASCII. Example: `od -c file.txt`
281. **`parted`** – A command-line partition manipulation program. Example: `parted /dev/sda`
282. **`passwd`** – Change user password. Example: `passwd user`
283. **`paste`** – Merge lines of files. Example: `paste file1.txt file2.txt`
284. **`patch`** – Apply a patch file to source code. Example: `patch < patchfile.diff`
285. **`pathchk`** – Check the validity of a file name or path. Example: `pathchk /path/to/file`
286. **`pg`** – View file contents with scrolling and searching. Example: `pg file.txt`
287. **`pidof`** – Find the PID of a running program. Example: `pidof firefox`
288. **`ping`** – Send ICMP echo requests to network hosts. Example: `ping google.com`
289. **`pkill`** – Kill processes by name. Example: `pkill firefox`
290. **`pl`** – Perl pager for reading output. Example: `pl file.txt`
291. **`pluto`** – Network time protocol for synchronization. Example: `pluto`
292. **`pmap`** – Display memory usage of processes. Example: `pmap 1234`
293. **`pmount`** – Mount removable devices automatically. Example: `pmount /dev/sdb1`
294. **`popd`** – Pop a directory from the directory stack. Example: `popd`
295. **`poweroff`** – Shut down the system immediately. Example: `poweroff`
296. **`pr`** – Format text files for printing. Example: `pr file.txt`
297. **`printenv`** – Print all or specific environment variables. Example: `printenv PATH`
298. **`printf`** – Format and print data. Example: `printf "Hello, %s!\n" "world"`
299. **`ps`** – Report a snapshot of current processes. Example: `ps aux`
300. **`pstree`** – Display processes in a tree format. Example: `pstree`
301. **`ptables`** – Display current network port tables. Example: `ptables`
302. **`pushd`** – Save the current directory and change to a new one. Example: `pushd /home/user`
303. **`pwd`** – Print the current working directory. Example: `pwd`
304. **`quota`** – Display disk usage and limits for users. Example: `quota -u user`
305. **`quotacheck`** – Check file system disk quotas. Example: `quotacheck -avug`
306. **`ram`** – Manage system memory (less common, might be specific to certain distributions). Example: `ram status`
307. **`ramdisk`** – Create a RAM-based file system. Example: `ramdisk /mnt/ramdisk`
308. **`read`** – Read a line of input from standard input. Example: `read varname`
309. **`reboot`** – Reboot the system. Example: `sudo reboot`
310. **`rename`** – Rename files according to regular expressions. Example: `rename 's/.txt/.bak/' *.txt`
311. **`renice`** – Change the priority of running processes. Example: `renice -n 10 -p 1234`
312. **`reorder`** – Reorder the lines in a file based on a key. Example: `reorder file.txt`
313. **`reset`** – Reset the terminal. Example: `reset`
314. **`resize`** – Set terminal window size. Example: `resize`
315. **`rev`** – Reverse the lines of a file. Example: `rev file.txt`
316. **`rm`** – Remove files or directories. Example: `rm file.txt`
317. **`rmdir`** – Remove empty directories. Example: `rmdir mydir`
318. **`route`** – Show or manipulate the IP routing table. Example: `route -n`
319. **`rsync`** – Remote file and directory synchronization. Example: `rsync -avz source/ destination/`
320. **`runlevel`** – Show the current runlevel. Example: `runlevel`
321. **`scp`** – Securely copy files between hosts. Example: `scp file.txt user@remotehost:/path/to/destination`
322. **`screen`** – Terminal multiplexer to manage multiple sessions. Example: `screen`
323. **`sd`** – Stream editor (a more minimal version of `sed`). Example: `sd 'old' 'new' file.txt`
324. **`sdparm`** – Set or get device parameters. Example: `sdparm --all /dev/sda`
325. **`sed`** – Stream editor for filtering and transforming text. Example: `sed 's/old/new/' file.txt`
326. **`select`** – Select from a list of options. Example: `select var in option1 option2; do break; done`
327. **`service`** – Start, stop, or restart system services. Example: `sudo service apache2 restart`
328. **`set`** – Set or display shell variables. Example: `set var=value`
329. **`sftp`** – Secure File Transfer Protocol. Example: `sftp user@remotehost`
330. **`sh`** – Command interpreter (shell). Example: `sh script.sh`
331. **`sha256sum`** – Compute and check SHA-256 checksums. Example: `sha256sum file.txt`
332. **`shutdown`** – Shutdown the system. Example: `sudo shutdown -h now`
333. **`sl`** – Steam Locomotive (funny command). Example: `sl`
334. **`sleep`** – Delay for a specified amount of time. Example: `sleep 5`
335. **`sort`** – Sort lines in text files. Example: `sort file.txt`
336. **`source`** – Read and execute commands from a file in the current shell. Example: `source ~/.bashrc`
337. **`split`** – Split files into pieces. Example: `split -l 100 file.txt`
338. **`ss`** – Utility to investigate sockets. Example: `ss -tuln`
339. **`ssh`** – Secure Shell client to access remote machines. Example: `ssh user@remotehost`
340. **`stat`** – Display file or file system status. Example: `stat file.txt`
341. **`strace`** – Trace system calls and signals. Example: `strace -p 1234`
342. **`stty`** – Change and print terminal line settings. Example: `stty -a`
343. **`su`** – Switch user or execute a command as another user. Example: `su - user`
344. **`sudo`** – Execute commands as another user (typically root). Example: `sudo apt-get update`
345. **`sum`** – Calculate file checksum and block counts. Example: `sum file.txt`
346. **`symlink`** – Create symbolic links. Example: `ln -s /path/to/file symlink`
347. **`sync`** – Synchronize the file system. Example: `sync`
348. **`sysctl`** – Configure kernel parameters at runtime. Example: `sysctl net.ipv4.ip_forward=1`
349. **`systemctl`** – Control the systemd system and service manager. Example: `sudo systemctl restart apache2`
350. **`tac`** – Concatenate and print files in reverse. Example: `tac file.txt`
351. **`tail`** – Output the last part of files. Example: `tail -n 10 file.txt`
352. **`tar`** – Archive files into a tarball. Example: `tar -czvf archive.tar.gz /path/to/directory`
353. **`tee`** – Read from standard input and write to standard output and files. Example: `echo "Hello" | tee file.txt`
354. **`telnet`** – User interface for the Telnet protocol. Example: `telnet remotehost`
355. **`test`** – Check file types and compare values. Example: `test -e file.txt`
356. **`time`** – Measure program execution time. Example: `time ls`
357. **`timeout`** – Run a command with a time limit. Example: `timeout 5s command`
358. **`times`** – Display user and system times for processes. Example: `times`
359. **`top`** – Display tasks and resource usage in real-time. Example: `top`
360. **`touch`** – Change file timestamps or create an empty file. Example: `touch file.txt`
361. **`tput`** – Initialize terminal capabilities. Example: `tput setaf 1` (sets text color to red)
362. **`tr`** – Translate or delete characters from input. Example: `echo "abc" | tr 'a' 'x'`
363. **`tracepath`** – Traceroute with automatic MTU discovery. Example: `tracepath google.com`
364. **`traceroute`** – Trace the route packets take to a network host. Example: `traceroute google.com`
365. **`trap`** – Set up signal handling in scripts. Example: `trap "echo Goodbye" EXIT`
366. **`tree`** – Display directory structure as a tree. Example: `tree /path`
367. **`true`** – Do nothing, return success status. Example: `true`
368. **`ts`** – Timestamp output (part of `moreutils`). Example: `echo "hello" | ts`
369. **`tty`** – Print the terminal type. Example: `tty`
370. **`type`** – Display information about a command type. Example: `type ls`
371. **`ulimit`** – Get or set user resource limits. Example: `ulimit -a`
372. **`umask`** – Set the file mode creation mask. Example: `umask 022`
373. **`umount`** – Unmount file systems. Example: `sudo umount /mnt`
374. **`unalias`** – Remove aliases. Example: `unalias ll`
375. **`uname`** – Print system information. Example: `uname -r`
376. **`unzip`** – Extract files from a ZIP archive. Example: `unzip archive.zip`
377. **`uptime`** – Show how long the system has been running. Example: `uptime`
378. **`useradd`** – Add a new user to the system. Example: `sudo useradd user`
379. **`userdel`** – Delete a user account. Example: `sudo userdel user`
380. **`usermod`** – Modify a user account. Example: `sudo usermod -aG group user`
381. **`uuidgen`** – Generate a new universally unique identifier (UUID). Example: `uuidgen`
382. **`vdir`** – List directories in a detailed format. Example: `vdir`
383. **`vi`** – A text editor. Example: `vi file.txt`
384. **`view`** – View a file with `vi` in read-only mode. Example: `view file.txt`
385. **`w`** – Display who is logged in and what they are doing. Example: `w`
386. **`wait`** – Wait for a process to complete. Example: `wait $!`
387. **`wall`** – Send a message to all users. Example: `wall "System will shut down in 10 minutes"`
388. **`watch`** – Execute a program periodically and show output. Example: `watch df -h`
389. **`wc`** – Count words, lines, and characters in files. Example: `wc file.txt`
390. **`wget`** – Download files from the web. Example: `wget http://example.com/file.txt`
391. **`whatis`** – Display a one-line description of a command. Example: `whatis ls`
392. **`whereis`** – Locate binary, source, and man pages for a command. Example: `whereis ls`
393. **`which`** – Show the full path of a command. Example: `which python`
394. **`who`** – Show who is logged in. Example: `who`
395. **`whoami`** – Show the current logged-in user. Example: `whoami`
396. **`wpa_cli`** – Control the wpa_supplicant (wireless network configuration). Example: `wpa_cli status`
397. **`write`** – Send a message to another user. Example: `write user`
398. **`xargs`** – Build and execute command lines from input. Example: `echo "file1 file2" | xargs rm`
399. **`xdg-open`** – Open a file or URL in the user's preferred application. Example: `xdg-open http://example.com`
400. **`yes`** – Output a string repeatedly. Example: `yes "hello"`
401. **`zcat`** – Concatenate and display compressed files. Example: `zcat file.gz`
402. **`zcmp`** – Compare compressed files. Example: `zcmp file1.gz file2.gz`
403. **`zdiff`** – Compare compressed files line by line. Example: `zdiff file1.gz file2.gz`
404. **`zegrep`** – Search compressed files with `grep`. Example: `zegrep "pattern" file.gz`
405. **`zfgrep`** – Search compressed files with `fgrep`. Example: `zfgrep "pattern" file.gz`
406. **`zgrep`** – Search compressed files for a pattern. Example: `zgrep "pattern" file.gz`
407. **`zip`** – Package and compress files into a ZIP archive. Example: `zip archive.zip file1.txt file2.txt`
408. **`zipcloak`** – Encrypt a ZIP archive. Example: `zipcloak archive.zip`
409. **`zipinfo`** – Display detailed information about a ZIP archive. Example: `zipinfo archive.zip`
410. **`zipsplit`** – Split a large ZIP archive into smaller files. Example: `zipsplit archive.zip`
411. **`zless`** – View compressed files with `less`. Example: `zless file.gz`
412. **`zmore`** – View compressed files page by page. Example: `zmore file.gz`
413. **`zsh`** – Z shell, an extended Bourne shell with many features. Example: `zsh`
414. **`zstd`** – Fast compression algorithm, an alternative to `gzip`. Example: `zstd file.txt`
415. **`zstdcat`** – Decompress `.zst` files. Example: `zstdcat file.zst`
416. **`zstdgrep`** – Search inside `.zst` compressed files. Example: `zstdgrep "pattern" file.zst`
417. **`zstdmt`** – Multi-threaded version of `zstd`. Example: `zstdmt -o file.zst file.txt`
418. **`zsv`** – Validate `.zst` compressed files. Example: `zsv file.zst`
419. **`ztest`** – Test .zst compressed files for integrity.   Example: `ztest file.zst`
420. **`zupdate`** – Update .zst compressed files.   Example: `zupdate file.zst`
421. **`zverify`** – Verify .zst compressed files.   Example: `zverify file.zst`
422. **`zzz`** – A placeholder command (often used in scripts).   Example: `zzz`
