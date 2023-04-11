# Sử dụng hình ảnh Python 3.9.4 làm cơ sở
FROM python:3.9.4

# Thiết lập thư mục làm việc trong container
WORKDIR /app

# Sao chép tất cả các tập tin trong thư mục hiện tại vào thư mục /app trong container
COPY . /app

# Cài đặt các gói phụ thuộc cần thiết
RUN pip install --no-cache-dir -r requirements.txt

# Chạy lệnh khi container được khởi chạy
CMD ["streamlit", "run", "main_web.py"]