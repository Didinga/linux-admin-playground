# Linux Admin Playground

![Shell](https://img.shields.io/badge/Shell-Bash-green?logo=gnu-bash&logoColor=white)
![Platform](https://img.shields.io/badge/Platform-Linux-lightgrey?logo=linux)
![License](https://img.shields.io/badge/License-MIT-yellow)

A collection of Bash scripts for learning Linux system administration. Built around the concept of progressive versions â€” each script adds new functionality.

---

## Scripts

### v1 â€” system_info.sh

Displays a quick overview of the system:

- Hostname and current user
- System uptime
- Disk usage
- Memory usage

#### Usage

```bash
chmod +x scripts/system_info.sh
./scripts/system_info.sh
```

#### Example output

```
=== SYSTEM INFO ===
Hostname: my-linux-box
User: didinga
Uptime:
 10:32:15 up 2 days,  3:14,  1 user,  load average: 0.12, 0.08, 0.05

Disk usage:
Filesystem      Size  Used Avail Use% Mounted on
/dev/sda1        50G   12G   36G  25% /

Memory usage:
              total        used        free
Mem:           7.7G        2.1G        5.6G
```

---

## Project Structure

```
linux-admin-playground/
â”śâ”€â”€ scripts/
â”‚   â””â”€â”€ system_info.sh    # v1 - system overview
â””â”€â”€ README.md
```

---

## Requirements

- Linux / macOS
- Bash 4.0+

---

## Roadmap

- [x] v1 - System info (hostname, uptime, disk, memory)
- [ ] v2 - Process monitor (top processes by CPU/RAM)
- [ ] v3 - Network info (IP, open ports, active connections)
- [ ] v4 - Automated backup script
- [ ] v5 - Log analyzer

---

## License

This project is licensed under the MIT License.

---

## Author

**Didinga Omodi**
- GitHub: [@Didinga](https://github.com/Didinga)
- LinkedIn: [didiomodi](https://www.linkedin.com/in/didiomodi/)
