import time
from appium.webdriver import webdriver

def print_numbers():
    for i in range(1, 6):
        print(i)
        time.sleep(1)

if __name__ == "__main__":
    print_numbers()