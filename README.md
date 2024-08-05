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

### Aditional info about (Tracking Through System Apps and Services)

Blocking Xiaomi services through the host file of a project might not be entirely effective because applications like GetApps and other Chinese apps can bypass this block and still connect to their servers. Therefore, to ensure these applications do not connect to their servers, you need to remove them using ADB (Android Debug Bridge). Another option is to install a clean version of Android, which has fewer pre-installed applications to remove. However, you will still need to perform some cleaning to ensure all unwanted apps are removed.

### Data Collection During App Installation and Usage

Even when using third-party apps, Xiaomi collects data about the apps you install and how you interact with them. This data is then transmitted to Xiaomi's servers without your knowledge or consent.

### Examples of Xiaomi's Data Requests and tracking

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


### AI Features and Photo Processing
AI features, especially in the "Gallery" app, are particularly concerning:

AI Expansion and AI Erase modes send photos to remote servers for processing.

Despite the alleged download of a local AI module (about 800 MB), the processing takes place in the cloud.

There is evidence of censorship of certain content (e.g., photos of Chinese politicians or "inappropriately" dressed individuals).

This raises questions not only about privacy but also about potential censorship and content control. Research shows that photos and videos may be analyzed for "inappropriate" content, violating principles of privacy and freedom of expression.



- While trying to delete Xi Jinping from photo with Pro mode erase and ((Ai feature))

{
  "code": 0,.
  "result": "ok",
  "retriable": false,
  "description": "success",
  "data": {
    "appId": "ai_extend_image",
    "reviewId": "hashed_id".
    "timestamp data_format.
    "secret": "md5",.
    "offlineReason": "Politics Involved",      Reason why xioami blocked your photo editing with pro mode
    "offlineDetail": "",.
    "resultCode": -1,.
    "subCode": 22,.
    "tips": [
      ""
    ]
  },
  "ts": data_format
}

## Features

- Comprehensive list of Xiaomi hosts to block
- Support for various platforms (e.g., Windows, Linux, Android)
- Instructions for different blocking methods (hosts file, firewall rules, DNS filtering)
- Regular updates to keep up with new Xiaomi hosts and services

### Debloating in module

This debloat list has been tested, and removing these apps does not affect system stability because these apps track you and steal your data. I want to warn you that by installing the module, you delete these apps, and to restore them, you'll need to download their APKs from the internet again. However, I strongly advise against doing so as it puts your security at risk.
- com.miui.analytics
- com.miui.systemAdSolution
- com.xiaomi.security.onetrack
- com.android.adservices.api
- com.miui.msa.global

## Manual for disabling ads and tracking in apps

Turning Off Personalized Ads
You can disable personalized ads for system apps (e.g., Themes, Weather, Calendar) by going to:
Settings > Passwords & Security > Privacy > Ad Services
Disabling personalized ads means you'll still see the same number of ads, but they won’t be based on your personal data.

System Apps:
- Installer
- Weather
- Security
- Wallpaper Carousel
- Notification Shade
- Downloads
- Calendar
- Themes
- Mi AI
- Global Search
- App Vault
- Keyboards
- Messaging
- Xiaomi Cloud

For non-system apps (e.g., Mi Video, Browser, GetApps), you can turn off personalized ads within each app’s settings. For example, in GetApps:
GetApps > Account > Settings > Privacy > Personalized Services

Non-System Apps:
- Browser
- Mi Video
- Content Center
- Reader
- GetApps
- Mi Community
- Music
- Games
- FM Radio
- Mi Live

### New Security Center Version 9.2.6: Virtual ID Update

In the new version of the Security Center starting from 9.2.6, there is an updated Virtual ID feature. It is recommended to disable this feature for all apps and completely turn it off for the system. Additionally, you should reset the Virtual ID and disable "Manage App Tracking" to stop tracking.

**How to Find and Adjust These Settings**  
1. Go to **Settings**.
2. Look for **Privacy and Security**.
3. Find the section related to **Virtual ID** and disable it for all apps.
4. Ensure the Virtual ID is completely turned off for the system.
5. Reset the Virtual ID.
6. Disable **Manage App Tracking** to stop tracking.

This will help protect your privacy and prevent unwanted tracking.

## Why Disabling Ads and Tracking is soo Hard in (MIUI/HyperOS)

The difficulty lies not only in having separate buttons in each app instead of a single switch but also in Xiaomi's apparent reluctance to allow users to easily disable ads and tracking. According to their new statement (05.08.2024): "We do not plan to add a switch, which essentially will be found and used by only a small number of users." This means users must navigate a cumbersome process in system settings and individual apps. Xiaomi's vague reasons prove they don't want users to escape their ad and tracking data hooks, keeping them in the dark as long as possible.

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
4. In your DNS server or AdGuard app, add custom filtering rules to block the Xiaomi hosts. You can find a comprehensive list of hosts in the hosts file.
5. Optionally, you can use the AdGuard app's custom rules feature to add the Xiaomi host blocking rules directly within the app.
6. If you have Magisk/KSU/Apatch just download the latest release module from the releases tab on GitHub and enjoy your experience. Be aware that there is no auto-update system yet, so with each new module release, you'll need to download the release again. We'll fix this in the future.

## Contributing

Contributions are welcome! If you find any new Xiaomi hosts or have improvements to suggest, please open an issue or submit a pull request.

## License

This project is licensed under the [MIT License](LICENSE).

## Disclaimer

This project is provided as-is, without any warranties or guarantees. Use at your own risk. The authors of this project are not responsible for any consequences resulting from its use.
