#!/bin/bash
# Script สำหรับ generate videos.js อัตโนมัติจาก folder video

cd "$(dirname "$0")"

echo "// 💕 รายการวิดีโอ (generated automatically)" > videos.js
echo "// ไม่ต้องแก้ไฟล์นี้เอง - รัน ./generate-videos.sh แทน" >> videos.js
echo "const videoList = [" >> videos.js

first=true
for file in video/*; do
    if [ -f "$file" ]; then
        filename=$(basename "$file")
        # ตรวจสอบว่าเป็นไฟล์วิดีโอ (case insensitive)
        if echo "$filename" | grep -iE '\.(mp4|mov|webm|avi|mkv)$' > /dev/null; then
            if [ "$first" = true ]; then
                first=false
            else
                echo "," >> videos.js
            fi
            printf '    "%s"' "$filename" >> videos.js
        fi
    fi
done

echo "" >> videos.js
echo "];" >> videos.js

echo "✅ Generated videos.js"
cat videos.js
