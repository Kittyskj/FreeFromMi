# Xiaomi Host Blocker

This project aims to block all Xiaomi (Mi) hosts and services, effectively disabling the tracking and data collection features found in Xiaomi's MIUI operating system. It provides a comprehensive list of hosts to block, along with instructions for various platforms and methods.

## Motivation

Xiaomi has faced criticism for its aggressive data collection practices and alleged privacy violations. This project enables users to regain control over their privacy by preventing their devices from communicating with Xiaomi's servers and services.

## Features

- Comprehensive list of Xiaomi hosts to block
- Support for various platforms (e.g., Windows, Linux, Android)
- Instructions for different blocking methods (hosts file, firewall rules, DNS filtering)
- Regular updates to keep up with new Xiaomi hosts and services

## Installation

### Windows

1. Download the `hosts` file from the `windows` directory.
2. Open the downloaded file with a text editor (e.g., Notepad).
3. Copy the contents of the file.
4. Navigate to `C:\Windows\System32\drivers\etc`.
5. Open the `hosts` file with administrator privileges.
6. Paste the contents at the end of the file.
7. Save the file.

For detailed instructions and alternative methods (e.g., using a firewall or DNS filtering), refer to the `windows` directory.

### Android

1. Set up a custom DNS server like Pi-hole, AdGuard Home, or use a third-party app like AdGuard.
2. If using Pi-hole or AdGuard Home, configure your Android device to use the custom DNS server's IP address.
3. If using the AdGuard app, follow the app's instructions to set it up as a local VPN on your device.
4. In your DNS server or AdGuard app, add custom filtering rules to block the Xiaomi hosts. You can find a comprehensive list of hosts in the `android` directory of this repository.
5. Optionally, you can use the AdGuard app's custom rules feature to add the Xiaomi host blocking rules directly within the app.

## Contributing

Contributions are welcome! If you find any new Xiaomi hosts or have improvements to suggest, please open an issue or submit a pull request.

## License

This project is licensed under the [MIT License](LICENSE).

## Disclaimer

This project is provided as-is, without any warranties or guarantees. Use at your own risk. The authors of this project are not responsible for any consequences resulting from its use.
