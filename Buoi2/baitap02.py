from selenium import webdriver
from selenium.webdriver.common.by import By
import time

# khởi tạo webdriver
driver = webdriver.Chrome()

# mở trang
url = "https://en.wikipedia.org/wiki/List_of_painters_by_name"
driver.get(url)

# đợi khoảng chừng 2 giay
time.sleep(2)

# Lấy tất cả các thẻ a với cái title chứa "list of painters
tags = driver.find_elements(By.XPATH, "//a[contains(@title, 'List of painters')]")

# tao ra danh sach cac lien kêt
links = [tag.get_attribute("href")for tag in tags]

#xuat thong tin
for link in links:
    print(link)

#dong webdiriver
driver.quit()
