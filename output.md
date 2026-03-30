# Git Audit - Script Execution Outputs

This document contains simulated terminal outputs for the 5 audit scripts.

---

## 1. System Identity Report (`01-identify.sh`)
```bash
Ridhima@ubuntu-server:~/Git$ ./01-identify.sh
================================================================================
                   Git AUDIT - SYSTEM IDENTITY                    
================================================================================
Linux Distribution: Ubuntu 22.04.3 LTS
Kernel Version:     5.15.0-89-generic
Current User:       Ridhima
Home Directory:     /home/Ridhima
System Uptime:      up 2 hours, 45 minutes
Current Date/Time:  Mon Mar 30 2026 17:58:46 GMT+0000 (Coordinated Universal Time)
--------------------------------------------------------------------------------
Message: This system runs on Open Source software, providing freedom to study, change, and distribute.
================================================================================
```
---

## 2. FOSS Package Inspector (`02-packages.sh`)
```bash
Ridhima@ubuntu-server:~/Git$ ./02-packages.sh
================================================================================
                   Git AUDIT - PACKAGE INSPECTOR                 
================================================================================
Status: git is INSTALLED on this Debian/Ubuntu system.
Version: 2.34.1
--------------------------------------------------------------------------------
FOSS Philosophy Notes:
 - Git: Git is a free and open source distributed version control system.
 - Linux: Linux is an open source operating system.
 - Vim: Vim is a highly configurable text editor.
 - Firefox: Firefox is a free and open source web browser.
================================================================================
```
---

## 3. Disk and Permission Auditor (`03-auditor.sh`)
```bash
Ridhima@ubuntu-server:~/Git$ ./03-auditor.sh
================================================================================
                   Git AUDIT - DIRECTORY AUDITOR                 
================================================================================
/etc | 16M | 755 | root
/var/log | 100M | 755 | root
/usr/bin | 100M | 755 | root
/var/www | 10M | 755 | root
/usr/share/git | 5M | 755 | root
/etc/git | 1M | 755 | root
================================================================================
```
---

## 4. Log File Analyzer (`04-logs.sh`)
```bash
Ridhima@ubuntu-server:~/Git$ ./04-logs.sh /var/log/syslog error
================================================================================
                   Git AUDIT - LOG FILE ANALYZER                 
================================================================================
Found 10 occurrences of 'error' in /var/log/syslog

Last 5 matches:
Mar 30 17:50:01 ubuntu-server systemd[1]: Failed to start Service.
Mar 30 17:50:02 ubuntu-server systemd[1]: Failed to start Service.
Mar 30 17:50:03 ubuntu-server systemd[1]: Failed to start Service.
Mar 30 17:50:04 ubuntu-server systemd[1]: Failed to start Service.
Mar 30 17:50:05 ubuntu-server systemd[1]: Failed to start Service.
================================================================================
```
---

## 5. Open Source Manifesto Generator (`05-manifesto.sh`)
```bash
Ridhima@ubuntu-server:~/Git$ ./05-manifesto.sh
================================================================================
                   Git AUDIT - MANIFESTO GENERATOR                 
================================================================================
What is your name? Ridhima
What is your favorite open source project? Git
Why do you contribute to open source? Because I believe in the power of open source.

As Ridhima, I believe in the power of open source and contribute to projects like Git because Because I believe in the power of open source.
Manifesto saved to Ridhima.txt
================================================================================
```