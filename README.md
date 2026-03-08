# 💕 For Sky 💕

A romantic static website to ask Sky to be your girlfriend/boyfriend.

## 🚀 Deploy to GitHub Pages

1. **Create a new GitHub repository**
   - Go to [github.com/new](https://github.com/new)
   - Name it something like `for-sky` or `ask-sky`
   - Make it **Public**

2. **Upload files**

   ```bash
   git init
   git add .
   git commit -m "💕 First commit - For Sky"
   git branch -M main
   git remote add origin https://github.com/YOUR_USERNAME/YOUR_REPO.git
   git push -u origin main
   ```

3. **Enable GitHub Pages**
   - Go to your repo → Settings → Pages
   - Under "Source", select **main** branch
   - Click Save
   - Your site will be live at: `https://YOUR_USERNAME.github.io/YOUR_REPO`

## ✨ Features

- 💖 Beautiful image slideshow
- 💝 10 romantic reasons
- 💕 Interactive proposal with Yes/No buttons
- 🎉 Confetti animation when accepting
- 💗 Floating hearts background
- 📱 Mobile responsive design
- 🎭 Easter egg: No button sometimes runs away!

## 📁 Structure

```
sky/
├── index.html
├── images.js      ← แก้ไฟล์นี้เพื่อเพิ่ม/ลดรูป
├── reasons.js     ← แก้ไฟล์นี้เพื่อใส่ 10 เหตุผล
├── README.md
└── images/
    └── (your photos with Sky)
```

## 🖼️ วิธีเพิ่ม/ลดรูปภาพ

1. ใส่รูปภาพใน folder `images/`
2. แก้ไขไฟล์ `images.js` โดยเพิ่มชื่อไฟล์ในรายการ:

```javascript
const imageList = [
  "รูป1.jpg",
  "รูป2.jpg",
  "รูป3.png",
  // เพิ่มได้เรื่อยๆ
];
```

รูปจะถูกโหลดและแสดงอัตโนมัติ! 🎉

## 💝 วิธีแก้ไข 10 เหตุผล

แก้ไขไฟล์ `reasons.js`:

```javascript
const reasonsList = [
  "เหตุผลข้อ 1 ที่ชอบ Sky 😊",
  "เหตุผลข้อ 2 💕",
  "เหตุผลข้อ 3 🥰",
  // ... ใส่ได้ 10 ข้อหรือมากกว่า
];
```

Made with 💕
# for-sky
