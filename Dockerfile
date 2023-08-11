# Sử dụng hình ảnh Python 3.11.3 làm cơ sở
FROM python:3.11.3

# Thiết lập thư mục làm việc trong container
WORKDIR /app

# Sao chép tất cả các tập tin trong thư mục hiện tại vào thư mục /app trong container
COPY . /app

# Cài đặt các gói phụ thuộc cần thiết
RUN apt-get update && apt-get install ffmpeg libsm6 libxext6  -y

RUN pip install -r requirements.txt

# Chạy lệnh khi container được khởi chạy
CMD ["streamlit", "run", "main_web.py", "--server.port", "8501", "--server.baseUrlPath", "/", "--server.enableCORS", "false", "--server.enableXsrfProtection", "false"]
