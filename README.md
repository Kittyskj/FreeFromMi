# Xiaomi Host Blocker

This project aims to block all Xiaomi (Mi) hosts and services, effectively disabling the tracking and data collection features found in Xiaomi's MIUI operating system. It provides a comprehensive list of hosts to block, along with instructions for various platforms and methods.

## Motivation

Xiaomi has faced criticism for its aggressive data collection practices and alleged privacy violations. This project enables users to regain control over their privacy by preventing their devices from communicating with Xiaomi's servers and services.

## Xiaomi's Remote Feature Control Through Device Tracking

Xiaomi's MIUI/HyperOS operating system gathers extensive telemetry data about devices, including hardware specifications, component information, and usage patterns. This data is then used by Xiaomi to remotely enable, disable, or modify features on specific devices or groups of devices based on their tracking information.

By analyzing the telemetry data collected from your device, Xiaomi can determine its hardware capabilities and performance characteristics. The company then uses this information to selectively enable or disable certain features, ostensibly to optimize the user experience or ensure compatibility. However, this level of remote control raises significant privacy and security concerns.

Xiaomi can potentially disable features or functionalities on devices without the user's knowledge or consent, effectively limiting the capabilities of devices that users have paid for. In some cases, Xiaomi may choose to disable features on certain devices based on their tracking data, creating artificial segmentation within their product lineup. This could be done to encourage users to upgrade to newer models or to limit the capabilities of devices in specific regions or markets.

## How Xiaomi Steals Your Data

Xiaomi's MIUI operating system is known for its aggressive data collection practices, which often happen without the user's explicit consent or knowledge. Here's how Xiaomi collects and transmits your data:

### Tracking Through System Apps and Services

Many of Xiaomi's pre-installed system apps and services constantly communicate with Xiaomi's servers, sending various pieces of data about your device and usage patterns. These requests often include sensitive information such as your IMEI (device identifier), carrier details, region, and application versions.

### Data Collection During App Installation and Usage

Even when using third-party apps, Xiaomi collects data about the apps you install and how you interact with them. This data is then transmitted to Xiaomi's servers without your knowledge or consent.

### Examples of Xiaomi's Data Requests

To illustrate the extent of Xiaomi's data collection, here are some examples of the requests sent by Xiaomi's apps and services:

**Example 1:**
Content-Type: application/x-www-form-urlencoded
User-Agent: Dalvik/2.1.0 (Linux; U; ANDROID_VERSION; DEVICE_MODEL Build/BUILD_NUMBER)
Host: api.sec.miui.com
Connection: close
Accept-Encoding: gzip, deflate, br
Content-Length: 250

appVersion=XXXXXXXX&carrier=XXXXX&device=XXXXX&miuiVersion=XXXXX&param=XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX&region=XX&versionType=XXXXX&sign=XXXXXXXX
Param base64 encoded string = {"imei":"md5hashed","dataVersion":0,"isDiff":false}

**Example 2:**
POST https://sdkconfig.ad.xiaomi.com/api/v4/detail/config\_common/ HTTP/1.1
Content-Type: application/x-www-form-urlencoded
User-Agent: Dalvik/2.1.0 (Linux; U; ANDROID_VERSION; DEVICE_MODEL Build/BUILD_NUMBER)
Host: sdkconfig.ad.xiaomi.com
Connection: close
Accept-Encoding: gzip, deflate, br
Content-Length: 154

ii=X&oa=&ob=X&sv=X.X.X&re=XX&av=XX&appVer=XX.X.X.XXXXXXX&ov=XXXXX&platform=Android&ml=XXXXXXXX&sign=XXXXXXXXXXXXXXXXXXXXXXXX

re = region
ml = phone model
ov = xioami phone os

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
