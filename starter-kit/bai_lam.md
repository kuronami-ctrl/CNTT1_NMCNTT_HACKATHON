# BÀI LÀM – HACKATHON 01

- **Mã đề:** 22
- **Họ tên: Nguyễn Bùi Gia Bảo** 
- **Lớp: CNTT1** 
- **Link repository:** 
- **Hệ điều hành (Windows/macOS):** 

## 4.2. Thao tác máy tính cơ bản bằng CLI

### Các lệnh đã chạy

```powershell
get-location
get-childitem -force
move-item .\bang_quy_trinh.txt .\docs\
move-item .\Logo Rua Xe.png .\media\
copy-item .\media\Logo_Rua_Xe.png .\backup\
remove-item .\temp_305.tmp
set-location .\logs
get-childitem
set-location ..
Get-ChildItem -Force -Recurse | Select-Object FullName
```

### Kết quả liệt kê toàn bộ dự án (Windows: Get-ChildItem -Recurse -Force; macOS: ls -aR)

```text
 Directory: C:\Users\Admin\Downloads\starter-kit (1)\starter-kit\Rua Xe Website FINAL


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-----        10/28/2026   8:22 AM                backup
d-----        10/28/2026   8:01 AM                data
d-----        10/28/2026   8:11 AM                docs
d-----        10/28/2026   8:01 AM                logs
d-----        10/28/2026   8:22 AM                media
-a----        10/27/2026   1:32 AM             64 .env
-a----        10/27/2026   1:32 AM           1029 Carwash.log
-a----        10/27/2026   1:32 AM           6114 Luot Rua Xe Thang 2.xlsx
-a-h--        10/28/2026   7:43 AM            165 ~$Luot Rua Xe Thang 2.xlsx


    Directory: C:\Users\Admin\Downloads\starter-kit (1)\starter-kit\Rua Xe Website FINAL\backup


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/27/2026   1:32 AM           6191 Logo_Rua_Xe.png


    Directory: C:\Users\Admin\Downloads\starter-kit (1)\starter-kit\Rua Xe Website FINAL\docs


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/27/2026   1:32 AM             53 Bang Quy Trinh.txt


    Directory: C:\Users\Admin\Downloads\starter-kit (1)\starter-kit\Rua Xe Website FINAL\media


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/27/2026   1:32 AM           6191 Logo_Rua_Xe.PNG
```

## 4.3. Lọc log thủ công

### Lệnh đã chạy

```shell
 Get-Content .\logs\carwash.log | Select-String "ERROR" | ForEach-Object { $_.Line } | Set-Content .\logs\daily_report.txt
 Get-Content .\logs\daily_report.txt

```

### 2 dòng lỗi đầu tiên trong daily_report.txt

```text
2025-10-28 08:24:28 [ERROR] Thanh toan bi tu choi
2025-10-28 08:30:28 [ERROR] Thanh toan bi tu choi

```

## 4.4. Thao tác với tài liệu Markdown (README.md)

> README.md được chấm trực tiếp trên file `README.md` ở gốc dự án. Đánh dấu `[x]` vào các mục đã làm để tự kiểm tra.

- [x] Heading 1: tên dự án
- [x] Mô tả ngắn có cả **in đậm** và *in nghiêng*
- [x] Bảng `Thư mục | Nội dung`, ít nhất 3 dòng dữ liệu
- [x] Code block chứa lệnh PowerShell/Terminal liệt kê nội dung dự án
- [x] Task list ít nhất 2 công việc, có ít nhất 1 mục đã hoàn thành
- [x] Blockquote nhắc không upload `.env`

## 4.5. Chạy script auto_report (.ps1 hoặc .sh)

### Lệnh chạy (Windows: nếu dùng Phụ lục 2 thì ghi cả 2 lệnh)

```shell
.\auto_report.ps1
Get-Content .\logs\auto_report.txt

```

### Kết quả hiển thị

```text
2025-10-28 08:24:28 [ERROR] Thanh toan bi tu choi
2025-10-28 08:30:28 [ERROR] Thanh toan bi tu choi
2025-10-28 08:33:28 [ERROR] Ket noi kho du lieu that bai
2025-10-28 08:39:28 [ERROR] Ket noi kho du lieu that bai
2025-10-28 08:42:28 [ERROR] Ket noi kho du lieu that bai
2025-10-28 09:12:28 [ERROR] Thanh toan bi tu choi

```

## 4.6. Đếm số dòng lỗi

### Lệnh

```shell
Get-Content .\logs\Carwash.log | Select-String "ERROR" | Measure-Object | Select-Object -ExpandProperty Count

```

### Kết quả đếm (Windows: giá trị Count; macOS: con số in ra)

```text
6

```

## 4.7. Báo cáo tổng hợp

### Các lệnh đã chạy

```shell
"=== TONG HOP LOG ===" | Set-Content .\logs\tong_hop.txt
Get-Content .\logs\carwash | Select-String "WARNING" | ForEach-Object { $_.Line } | Add-Content .\logs\tong_hop.txt
$errorCount = (Get-Content .\logs\carwash | Select-String "ERROR" | Measure-Object).Count
Add-Content .\logs\tong_hop.txt "So dong ERROR: $errorCount"
Get-Content .\logs\tong_hop.txt)

```

### Nội dung file logs/tong_hop.txt

```text
=== TONG HOP LOG ===
2025-10-28 08:51:28 [WARNING] Thoi gian tai trang cham
2025-10-28 08:54:28 [WARNING] Anh san pham dung luong lon
2025-10-28 08:57:28 [WARNING] Thoi gian tai trang cham
So dong ERROR: 6
```

## 4.8. Excel

> Phần Excel được chấm trực tiếp trên file `data/luot_rua_xe_thang_2.xlsx`, không cần ghi vào đây.
