from selenium import webdriver
from selenium.webdriver.common.by import By
import time

# khởi tạo webdriver
driver = webdriver.Chrome()

for i in range(65, 91):
    url = "https://en.wikipedia.org/wiki/List_of_painters_by_name_beginning_with_%22"+chr(i)+"%22"

    try:

        driver.get(url)

        # đợi 1 chút tải trang
        time.sleep(2)

        # lay ra tat cac ca the ul
        ul_tags = driver.find_elements(By.TAG_NAME, "ul")

        # chon the ul thu 3
        ul_painters = ul_tags[20]  # list start with index = 0

        # lây ra tat ca the <li> thuoc ul_painters

        li_tags = ul_painters.find_elements(By.TAG_NAME, "li")

        # tạo danh sách các url

        titles = [tag.find_element(By.TAG_NAME, "a").get_attribute("title") for tag in li_tags]
        # in ra

        for title in titles:
            print(title)

    except:
        print ("Error!")




# đóng
driver.quit()