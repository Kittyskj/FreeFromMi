# Xiaomi / MIUI — Ad & Tracking Hosts

**Purpose:** Compact, grouped list of domains related to advertising, tracking, analytics, telemetry, crash reporting, A/B tests and related services. Each entry includes a short, factual note about typical data involved and risk tags.

**Risk tags:** `ADS` (ads/serving), `MEAS` (measurement/attribution), `ANALYT` (analytics/events), `CRASH` (crash reports), `ID` (device/advertising IDs), `A/B` (A/B tests / feature flags), `RUM` (performance / RUM), `SEC` (security/antivirus telemetry), `PUSH` (push delivery analytics), `TV` (TV / IoT telemetry), `ETL` (data aggregation / BI), `CDN` (content delivery), `STAGE` (staging/test environment).

> **Note:** Descriptions indicate common roles for these domains. Actual data sent depends on firmware versions, installed apps, SDK integrations and regional settings. Blocking some domains may affect updates, Mi Account functionality, push delivery, or built-in features.

---

## 1. Advertising and Ad APIs (ADS / MEAS)

- `ad.intl.xiaomi.com` — Ad requests / targeting; impressions, clicks, targeting params. (ADS, MEAS, ID)  
- `ad.jr.mi.com` — Ads in specific Mi services; impressions and delivery logs. (ADS, MEAS)  
- `ad.mi.com` — Core ad service; impressions, clicks, and profiling data. (ADS, MEAS, ID)  
- `ad.quickapp.hybrid.xiaomi.com` — Ads in Quick Apps; interactions and metrics. (ADS, MEAS)  
- `ad.serving-sys.com` — Third‑party ad serving (e.g., MediaMind/Sizmek); impressions and counts. (ADS, MEAS)  
- `ad.tencentmusic.com` — Ads / marketing in music apps; playback and click metrics. (ADS, MEAS)  
- `ad.xiaomi.com` — Xiaomi ad platform; ad delivery, targeting parameters. (ADS, MEAS, ID)  
- `ad1.xiaomi.com` — Auxiliary ad endpoint; delivery logs. (ADS, MEAS)  
- `adinfo.ra1.xlmc.sec.miui.com` — Ad metadata and debug logs. (ADS)  
- `adsmind.gdtimg.com` — Tencent GDT assets and targeting; creatives and metrics. (ADS, MEAS, ID)  
- `adsunflower.com` — Third‑party ad network; profiling for targeting. (ADS, MEAS)  
- `adups.com` — SDK vendor with ad modules; device and usage metrics. (ADS, ANALYT, ID)  
- `adview.cn` — AdView measurement and reporting; device and behavior data. (ADS, MEAS, ID)  
- `adx.tv.mi.com` — OTT / TV ad delivery; view and impression metrics. (ADS, MEAS, TV)  
- `benteng.ad.xiaomi.com` — Internal ad delivery platform. (ADS, MEAS)  
- `maizhenapi.ad.xiaomi.com` — Miaozhen integration (measurement). (MEAS, ID)  
- `marketing.ad.xiaomi.com` — Marketing campaigns and segments. (ADS, MEAS, ID)  
- `marketing.ai.xiaomi.com` — ML‑driven marketing segmentation and behavior signals. (ADS, ANALYT, ID)  
- `matrix.api.ad.xiaomi.com` — Marketing / targeting API. (ADS, MEAS)  
- `ssp.ad.xiaomi.com` — SSP / exchange endpoints (bids / impressions). (ADS, MEAS)  
- `zeus.ad.xiaomi.com` / `zeus.ad.intl.xiaomi.com` — Ad platform endpoints and metrics. (ADS, MEAS)  
- `p.alimama.com` — Alimama (Alibaba ad platform) for attribution and ads. (ADS, MEAS)  
- `report.adview.cn` — AdView reporting / impression aggregation. (MEAS)

---

## 2. Click trackers & Measurement (MEAS)

- `fclick.baidu.com` — Baidu click tracker and redirects. (MEAS, ID)  
- `nsclick.baidu.com` — Baidu click/analytics redirect. (MEAS)  
- `mini.cpc.sogou.com` — Sogou CPC click tracking. (MEAS)  
- `g.cn.miaozhen.com` — Miaozhen measurement (impressions, conversions). (MEAS, ID)  
- `ad.serving-sys.com` — Third‑party ad counting and pixels. (MEAS)

---

## 3. Analytics, Telemetry, A/B Testing, Identifiers (ANALYT / A/B / ID / RUM)

- `abtest.mistat.xiaomi.com` / `abtest.mistat.intl.xiaomi.com` — A/B experiments, feature flags, and metrics. (A/B, ANALYT, ID)  
- `mistat.xiaomi.com` / `data.mistat.*.xiaomi.com` — MIUI usage events and device/app metrics. (ANALYT, ID)  
- `default.tracking.miui.com` / `tracking.*.miui.com` — Central MIUI tracking endpoints for events and diagnostics. (ANALYT, ID)  
- `api.collect.data.intl.miui.com` — App telemetry collection API. (ANALYT, ID)  
- `apm-rum.inf.miui.com` — RUM / performance monitoring and errors. (RUM, ANALYT)  
- `ident.mistat.xiaomi.com` — Identifiers and mapping for mistat. (ID)  
- `sensorsdata.10046.xiaomimobile.com` — SensorsData event analytics. (ANALYT, ID)  
- `storeconfig.mistat.*.xiaomi.com` — Collection/configuration control for mistat. (A/B, ANALYT)  
- `stats.xiaomi.com` / `stat.xiaomi.com` / `stats.*` — Aggregated analytics endpoints across services. (ANALYT)  
- `piwik.account.mi.com` — Matomo/Piwik web analytics endpoints. (ANALYT, ID)  
- `o.bigdata.xiaomi.com` / `bigdata.xiaomi.com` / `o.data.mistat.xiaomi.com` — Big data aggregation / BI. (ETL, ANALYT)

---

## 4. Crash Reporting & Error Logging (CRASH)

- `astat.bugly.qq.com` — Tencent Bugly crash reports: stack traces, device info. (CRASH, ID)  
- `sentry.pt.xiaomi.com` / `sentry.sec.miui.com` — Sentry error collection for apps and security components. (CRASH)

---

## 5. SDK Telemetry, Traces, Device IDs (RUM / ID)

- `h.trace.qq.com` — Tencent tracing and telemetry. (RUM, ID)  
- `othstr.beacon.qq.com` — Tencent beacon for SDK telemetry. (ANALYT)  
- `sdkreport.e.qq.com` — SDK error/usage reports. (ANALYT)  
- `tdid.m.qq.com` — Tencent Device ID (advertising identifier). (ID)  
- `tmfsdk.m.qq.com` — Tencent mobile SDK telemetry. (ANALYT, RUM)  
- `tpstelemetry.tencent.com` — Tencent telemetry endpoints. (RUM, ANALYT)

---

## 6. Push Services & Beacons (PUSH)

- `api.tuisong.baidu.com` / `sa.tuisong.baidu.com` / `sa3.tuisong.baidu.com` — Baidu push delivery and analytics. (PUSH)  
- `beacon-api.aliyuncs.com` / `pssn.alicdn.com` — Aliyun beacon / CDN beacons for SDK telemetry & push. (PUSH, ANALYT)

---

## 7. Security & Antivirus Telemetry (SEC)

- `analytics.ff.avast.sec.miui.com` / `ip-info.ff.avast.sec.miui.com` — Avast security telemetry integrated into MIUI. (SEC, ANALYT)  
- `etl.xlmc.sec.miui.com` / `api.ra2.xlmc.sec.miui.com` — Security ETL and report endpoints. (SEC, ETL)

---

## 8. TV / IoT Tracking (TV)

- `mitv.tracking.*.miui.com` — Mi TV telemetry (regional endpoints). (TV, ANALYT)  
- `miuiboot.tracking.miui.com` — Boot-time telemetry for devices. (ANALYT, TV/IoT)

---

## 9. BI / ETL / Data Stores (ETL)

- `bigdata.*` / `bi.migc.xiaomi.com` / `databi.ad.xiaomi.com` — BI and ETL endpoints for aggregated telemetry and ad analytics. (ETL, ANALYT)

---

## 10. SDK Config & Runtime Configs

- `sdkconfig.ad.*.xiaomi.com` / `sdkconfig.ad.xiaomi.com` — Remote SDK/ad configuration and rules. (ADS, CONFIG)  
- `storeconfig.mistat.*.xiaomi.com` — Mistat collection rules. (A/B, CONFIG)

---

## 11. System & Miscellaneous Telemetry

- `client.sms.miui.com` — SMS delivery logs and status. (ANALYT)  
- `jupiter.*.sys.miui.com` — System telemetry endpoints. (ANALYT)  
- `log.pandora.xiaomi.com` / `monitor.pandora.xiaomi.com` — Pandora service monitoring and logs. (RUM, ANALYT)  
- `mon.*.xiaomi.com` — System monitoring endpoints. (RUM, ANALYT)  
- `om.tracking.miui.com` — Operations/monitoring tracking. (ANALYT)

---

## 12. Staging / Test Endpoints (STAGE)

- `staging.*` / `test.*` / `staging-*-ad.*` — Test and staging endpoints for ads and analytics. Blocking is generally safe for privacy-hardened setups but verify in your environment. (STAGE)

---

## 13. Media & Partner Services

- `api.tencentmusic.com` / `tmead.y.qq.com` — Music service analytics and ad endpoints. (ANALYT, ADS)  
- `stats.music.xiaomi.com` — Music playback analytics. (ANALYT)

---

## Usage & Blocking Guidance

- Domains tagged `ADS`, `MEAS`, `ANALYT` are typically safe to block to reduce tracking and ad personalization.  
- Domains tagged `CRASH`, `RUM`, or `ETL` may affect diagnostics, error reporting and analytics but rarely break basic user flows.  
- Avoid blocking domains related to account sign‑in, system updates, or essential services (not listed here) unless you know the impact.  
- Test changes in a controlled environment before deploying widely.

---
