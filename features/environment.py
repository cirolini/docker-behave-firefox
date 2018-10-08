from selenium import webdriver
import os

def before_all(context):
        os.environ['MOZ_HEADLESS'] = '1'
        context.browser =  webdriver.Firefox()

def after_all(context):
	context.browser.quit()
