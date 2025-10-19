# MehrshahrMelk — Flutter + Firebase Starter Package

این بسته شامل اسکلت اولیهٔ پروژهٔ مهرشهرملک با Flutter (موبایل + وب) و یک سرور نمونه (Firebase Functions) است.
شما می‌توانید این فایل ZIP را دانلود کرده و در پروژهٔ Firebase خود آپلود یا از آن برای توسعه محلی استفاده کنید.

## محتویات
- flutter_app/      → پروژهٔ Flutter (mobile + web)
- functions/        → سرور نمونه Node.js برای webhook / پرداخت
- firebase/         → فایل‌های نمونه پیکربندی Firebase (rules / firestore indexes)
- assets/           → لوگوی نمونه (قابل جایگزینی با لوگوی شما)

## مراحل سریع برای راه‌اندازی با Firebase
1. **در کنسول Firebase یک پروژه بسازید** (اگر قبلاً ندارید).
2. **Cloud Firestore** و **Storage** را فعال کنید.
3. در پروژهٔ Flutter:
   - پوشهٔ `flutter_app/lib/config/firebase_options.dart` را با مقادیر `FirebaseOptions` خود پر کنید.
   - در `flutter_app/android` و `flutter_app/ios` فایل‌های پیکربندی `google-services.json` و `GoogleService-Info.plist` را قرار دهید.
4. برای deploy وب:
   - در فولدر `flutter_app` دستور `flutter build web` را اجرا کنید.
   - خروجی `build/web` را می‌توانید به Firebase Hosting متصل کنید یا آپلود کنید.
5. برای توابع سرور:
   - وارد پوشه `functions` شوید، `npm install` و سپس `firebase deploy --only functions` یا `node index.js` برای اجرا محلی.

## نکته‌ها
- این بسته یک اسکلت توسعه است — بعد از دانلود باید کلیدهای Firebase / Google Maps / Stripe را جایگزین کنید.
- لوگوی واقعی خود را در مسیر `assets/logo.png` قرار دهید تا در اپ استفاده شود.

اگر می‌خواهید، من می‌توانم همین فایل را به‌صورت zip آماده بفرستم تا مستقیم دانلود کنی.
