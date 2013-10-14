require 'rubygems'
require 'selenium-webdriver'


 
browser = Selenium::WebDriver.for :safari
browser.get "https://escapefromny-haight.foodtecsolutions.com/login?target=%2Faccount"
 

#login 
sleep(2)

browser.manage.delete_all_cookies
email = browser.find_element(:name, "Email")
password = browser.find_element(:name, "Password")

puts email.text
email.clear()
password.clear()
email.send_keys("andrew.armenante@gmail.com")
password.send_keys("Army04")

login = browser.find_elements(:css, ".ui-button-text")[1]
login.click

sleep(2)


menu = browser.find_element(:link_text, "Menu")
menu.click

sleep(2)

pepperoni = browser.find_elements(:link_text, "$17.70")[1]
pepperoni.click

sleep(2)

checkout = browser.find_element(:id, "checkOrderLink")
checkout.click

sleep(2)

tip = browser.find_element(:id, "calculator-button-10")
tip.click

sleep(2)


done = browser.find_element(:name, "Continue...")
done.click

sleep(2)

credit = browser.find_element(:id, "CreditCardBtn")
credit.click

sleep(2)



ccv = browser.find_element(:id, "CCCVV")
ccv.clear()
ccv.send_keys("430")



confirm = browser.find_element(:name, "Go to Confirm...")
confirm.click

sleep(2)

# finish = browser.find_element(:name, "Place Order")
# finish.click

browser.quit


