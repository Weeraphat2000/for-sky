#!/bin/bash
# Script สำหรับ generate images.js อัตโนมัติจาก folder images

cd "$(dirname "$0")"

echo "// 💕 รายการรูปภาพ (generated automatically)" > images.js
echo "// ไม่ต้องแก้ไฟล์นี้เอง - รัน ./generate-images.sh แทน" >> images.js
echo "const imageList = [" >> images.js

first=true
for file in images/*; do
    if [ -f "$file" ]; then
        filename=$(basename "$file")
        # ตรวจสอบว่าเป็นไฟล์รูปภาพ (case insensitive)
        if echo "$filename" | grep -iE '\.(jpg|jpeg|png|gif|webp)$' > /dev/null; then
            if [ "$first" = true ]; then
                first=false
            else
                echo "," >> images.js
            fi
            printf '    "%s"' "$filename" >> images.js
        fi
    fi
done

echo "" >> images.js
echo "];" >> images.js

echo "✅ Generated images.js"
cat images.js
