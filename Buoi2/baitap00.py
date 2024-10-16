from selenium import webdriver
from selenium.webdriver.common.by import By
import time

# khoi tao webdriver
driver = webdriver.Chrome();

# mo 1 trang web
driver.get("https://gomotungkinh.com")
time.sleep(10)
# tìm phần tử img có id là "bonk"
bonk_img = driver.find_element(By.ID, "bonk")

# click liên tục
while True:
    bonk_img.click()
    print("Clicked on the bonk image")
    time.sleep(1)
