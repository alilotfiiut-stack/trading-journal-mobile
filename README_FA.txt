ژورنال معاملاتی - نسخه موبایل و PWA

محتویات: index.html، manifest.webmanifest، sw.js و icon.svg

انتشار در GitHub Pages:
1) فایل‌های داخل این پوشه را در ریشه یک repository قرار بده.
2) در GitHub وارد Settings > Pages شو.
3) در بخش Build and deployment گزینه Deploy from a branch را انتخاب کن.
4) Branch را main و Folder را /(root) انتخاب و Save کن.
5) پس از انتشار، آدرس https مربوط به GitHub Pages را در گوشی باز کن.
6) در Chrome اندروید از منوی سه‌نقطه گزینه Install app یا Add to Home screen را بزن.

نکته Supabase:
در Supabase > Authentication > URL Configuration، آدرس سایت و Redirect URLs را با آدرس دقیق GitHub Pages تنظیم کن.
برای مثال اگر آدرس سایت https://USERNAME.github.io/REPOSITORY/ باشد، همان را به عنوان Site URL و نیز https://USERNAME.github.io/REPOSITORY/** را به Redirect URLs اضافه کن.

این برنامه برای ورود و همگام‌سازی به اینترنت نیاز دارد. Service Worker فقط پوسته برنامه را cache می‌کند؛ عملیات ابری و ورود آفلاین نیستند.
تمام بخش‌های ثبت معامله، تاریخچه، مدیریت سرمایه، گزارش‌ها و تنظیمات در موبایل فعال هستند.
