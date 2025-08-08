# Linux Memory Tuner GUI

A simple **GUI-based** tool to adjust Linux memory management settings (`vm.swappiness` and `vm.vfs_cache_pressure`) using [Zenity](https://help.gnome.org/users/zenity/stable/).

## 📌 Features
- **Easy to use**: No terminal commands needed.
- **Safe**: Creates a backup of `/etc/sysctl.conf` before making changes.
- **Customizable**: Enter your own values for swappiness and cache pressure.
- **Instant Apply**: Changes are applied immediately without reboot.
- **Persistent**: Settings remain after restart.

## 🖥 Requirements
- Linux system with `bash`
- `Zenity` installed:
  ```bash
  sudo apt install zenity

🚀 Usage

    Download memory_tuner_gui.sh

    Make it executable:

chmod +x memory_tuner_gui.sh

Run it (double-click or via terminal):

    ./memory_tuner_gui.sh

⚙ Parameters Explained

    Swappiness: Controls how aggressively Linux uses swap space.
    Lower values = use RAM as much as possible before swapping.

    VFS Cache Pressure: Controls how quickly the kernel drops file system cache.
    Lower values = keep cache in RAM longer.

Recommended values for most users:

    vm.swappiness = 10

    vm.vfs_cache_pressure = 50

🛠 UI
<p align="center"> <img width="690" height="234" alt="1" src="https://github.com/user-attachments/assets/1cd701bf-8a6d-4fec-9251-541b5799590c" /><br><br> <img width="260" height="194" alt="2" src="https://github.com/user-attachments/assets/4a07306f-f283-4a7b-a36e-8261a3ff3496" /><br><br> <img width="284" height="194" alt="3" src="https://github.com/user-attachments/assets/2bbd0b46-3e7d-4547-a425-537f3622ed3c" /><br><br> <img width="327" height="170" alt="4" src="https://github.com/user-attachments/assets/da99a98a-67f0-4661-b69f-fa967c2c8b2d" /> 

📄 License

MIT License
