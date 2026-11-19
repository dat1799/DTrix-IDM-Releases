<div align="center">

# 🚀 DTrix - Internet Download Manager Tool
### (Official Public Release Distribution)

[![Platform](https://img.shields.io/badge/Platform-Windows%2010%20%7C%2011-0078D6.svg)](https://microsoft.com/windows)
[![Binary](https://img.shields.io/badge/Binary-Native%20x86__64-success.svg)](#)
[![Zero Setup](https://img.shields.io/badge/Prerequisites-Zero%20Dependencies-brightgreen.svg)](#)
[![Supported Version](https://img.shields.io/badge/IDM-v6.43%20Build%2018+-orange.svg)](#)
[![License](https://img.shields.io/badge/License-GPL--3.0-blue.svg)](#)

*Bộ công cụ tối ưu hóa, quản lý và kích hoạt Internet Download Manager (IDM) nhanh chóng, an toàn và tự động.*

</div>

---

> [!CAUTION]
> **Hãy thoát hoàn toàn IDM** từ khay hệ thống (góc dưới bên phải màn hình: nhấp chuột phải vào biểu tượng IDM $\rightarrow$ chọn **Exit**) trước khi thực hiện để tránh file `IDMan.exe` bị khóa.

> [!IMPORTANT]
> **Hỗ trợ đầy đủ IDM 6.43 Build 18 mới nhất.** Tự động nhận diện phiên bản, sao lưu an toàn `IDMan.exe.bak` trước khi thực hiện và hỗ trợ chuyển đổi giao diện song ngữ Tiếng Việt / English trực tiếp.

---

## 🚀 1. HƯỚNG DẪN CHẠY 1 LỆNH DUY NHẤT (ALL-IN-ONE)

Bạn **không cần cài đặt phần mềm phụ trợ**, **không cần giải nén thủ công**.

### 👉 Cách thực hiện:
Mở **PowerShell** trên máy tính (nhấn phím Windows trên bàn phím, gõ chữ `powershell` rồi nhấn Enter), dán dòng lệnh sau và nhấn Enter:

```powershell
irm https://raw.githubusercontent.com/dat1799/DTrix-IDM-Releases/main/run.ps1 | iex
```

*Hệ thống sẽ tự động tải phiên bản mới nhất, yêu cầu cấp quyền Quản trị viên (UAC) và tự động dọn dẹp sạch sẽ toàn bộ file tạm sau khi bạn đóng ứng dụng.*

---

## 🔄 2. QUY TRÌNH & TÍNH NĂNG CHÍNH

1. **⚡ Mở khóa chuyên sâu (Deep Unlock)**: Tự động phát hiện phiên bản IDM, nạp patch AOB chuẩn xác (hỗ trợ Build 18 mới nhất) và kích hoạt bản quyền vĩnh viễn, triệt tiêu 100% cảnh báo bản quyền giả.
2. **❄️ Đóng băng dùng thử vĩnh viễn (Trial Freeze)**: Khóa thời hạn dùng thử ở mức 30 ngày mãi mãi mà không can thiệp vào file thực thi, tương thích mọi bản cập nhật IDM chính thức trong tương lai.
3. **🛡️ Tự động sao lưu & Phục hồi (Backup & Restore)**: Tự động sao lưu file `IDMan.exe` gốc trước khi thực hiện bất kỳ thay đổi nào, khôi phục nguyên bản chỉ với 1 cú click.
4. **🌐 Giao diện Song ngữ Trực quan**: Hỗ trợ chuyển đổi nhanh Tiếng Việt $\leftrightarrow$ Tiếng Anh (`[ 🌐 EN / VN ]`).
5. **🧹 Tự động dọn dẹp sạch sẽ**: Khi chạy qua lệnh `irm`, toàn bộ file tạm sẽ được dọn sạch hoàn toàn khỏi máy tính ngay khi bạn đóng ứng dụng.

---

## 💾 3. DÀNH CHO NGƯỜI DÙNG NGOẠI TUYẾN (OFFLINE)

Nếu bạn không muốn chạy qua lệnh `irm` hoặc máy tính không có kết nối Internet ổn định:
1. Tải gói [DTrix-IDM-v1.6.2.zip](https://github.com/dat1799/DTrix-IDM-Releases/raw/main/DTrix-IDM-v1.6.2.zip) hoặc file chạy [DTrix_IDM.exe](https://github.com/dat1799/DTrix-IDM-Releases/raw/main/DTrix_IDM.exe) kèm [app_icon.png](https://github.com/dat1799/DTrix-IDM-Releases/raw/main/app_icon.png) trực tiếp từ kho lưu trữ này.
2. Giải nén vào một thư mục, nhấp chuột phải vào `DTrix_IDM.exe` và chọn **Run as administrator** để sử dụng.

---

## ⚖️ TUYÊN BỐ MIỄN TRỪ TRÁCH NHIỆM (DISCLAIMER)

* **Mục đích nghiên cứu & học tập**: Dự án và công cụ này được phát triển hoàn toàn vì mục đích học tập, nghiên cứu kỹ thuật phân tích nhị phân (Binary Patching / AOB Pattern Matching), cơ chế Registry trên hệ điều hành Windows và lập trình giao diện đồ họa WPF C#. Dự án không khuyến khích, cổ súy hay hỗ trợ bất kỳ hành vi xâm phạm bản quyền thương mại nào.
* **Không liên kết với Tonec Inc.**: Công cụ này là một dự án độc lập của bên thứ ba, hoàn toàn **không liên kết, không được tài trợ, ủy thác hoặc xác nhận bởi Tonec Inc.** hay phần mềm Internet Download Manager (IDM). Mọi nhãn hiệu, logo và tên gọi liên quan đến Internet Download Manager đều thuộc quyền sở hữu độc quyền của Tonec Inc.
* **Khuyến nghị tôn trọng bản quyền**: Nếu bạn sử dụng Internet Download Manager phục vụ công việc hàng ngày hoặc trong môi trường doanh nghiệp, chúng tôi đặc biệt khuyến khích bạn mua giấy phép bản quyền chính thức từ trang chủ của nhà sản xuất tại [internetdownloadmanager.com](https://www.internetdownloadmanager.com) để ủng hộ tác giả gốc và nhận được hỗ trợ kỹ thuật chính thức.
* **Trách nhiệm của người dùng**: Người sử dụng tự chịu hoàn toàn trách nhiệm đối với việc sử dụng công cụ này trên thiết bị cá nhân. Tác giả và những người đóng góp không chịu trách nhiệm đối với bất kỳ mất mát dữ liệu, lỗi hệ thống, tranh chấp bản quyền hoặc vấn đề pháp lý nào phát sinh từ việc sử dụng hoặc không thể sử dụng phần mềm này.
* **Cung cấp theo điều khoản "Nguyên trạng" (AS-IS)**: Phần mềm được cung cấp trên cơ sở nguyên trạng (AS-IS), không có bất kỳ sự bảo đảm nào, dù rõ ràng hay ngụ ý, về tính ổn định, độ an toàn hay khả năng phù hợp cho một mục đích cụ thể.

---

<div align="center">
  <b>DTrix System</b> • Phát hành chính thức bởi DTrix
</div>
