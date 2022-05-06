*** Settings ***
Documentation     Executes a search on Google.com using an already open Chrome browser
...               Orders Samsung Product from Amazon Website.
...               Template robot main suite.
...               Open the Amazon.com Wesite.
...               Login the Website.
...               Go to search Option.
...               Search the Samsung mobiles.
...               Add Filter
...               Open First samsung mobile product.
...               Order Any samsung mobile product.
...               Click on Buy now.
...               Chooose Pay on Delivery.
...               Continue Order.
...               Place your Order.
###               Complete Payment.
###               Submit Order
...               Open the Amazon.com Wesite.
...               Login the Website.
...               Go to search Option.
...               Search the Samsung mobiles.
...               Add Product Name in Excel file.
...               Add price of Product in Excel.
...               Add rating of each product.
...               Add discount of product in Excel.
#Library          RPA.Browser.Selenium
#Library          RPA.Excel.Files
#Library          RPA.HTTP
#Library          RPA.Tables
#Library          RPA.PDF
#Library          RPA.Archive
#Library          Collections
#Library          RPA.Dialogs
#Library          RPA.Robocloud.Secrets
#Library          OperatingSystem
#Library          String
#Library          RPA.Robocorp.Vault
#Library          RPA.JSON
#Library          RPA.Browser
#Library          RPA.Browser.Selenium    auto_close=${FALSE}
#Library          RPA.Browser.Attach
#Library          RPA.Browser.Playwright

*** Variables ***
#${url-1}         https://www.amazon.com/
#${url-2}         https://www.amazon.in/s?k=samsung+mobiles&crid=1H5G69HRBXRK8&sprefix=samsung+mobile%2Caps%2C309&ref=nb_sb_noss
#${output_folder}    ${CURDIR}${/}output
#${Product_file}    ${CURDIR}${/}Product.csv

*** Tasks ***
#Attach to running Chrome Browser and execute Google search
#Order Samsung Mobile from Amazon Website.
#Open the Amazon Website
#Log in
#${orders}=    Get orders
#FOR    ${row}    IN    @{orders}
#Close the annoying modal
#Fill the form    ${row}
#Wait Until Keyword Succeeds    10x    2s    Preview the robot
#Wait Until Keyword Succeeds    10x    2s    Submit The Order
#${orderid}    ${img_filename}=    Take a screenshot of the robot
#${pdf_filename}=    Store the receipt as a PDF file    ORDER_NUMBER=${order_id}
#Embed the robot screenshot to the receipt PDF file    IMG_FILE=${img_filename}    PDF_FILE=${pdf_filename}
#Go to order another robot
#END
#Create a ZIP file of the receipts
#Log Out And Close The Browser

*** Keywords ***
#Attach to running Chrome Browser and execute Google search
#Attach Chrome Browser    9222
#Go To    https://www.google.com/?hl=en
#Open the Amazon.com Wesite.
#Input Text    name:q    ${url-1}
#Press Keys    name:q    ENTER
#Login the Website.
#Sign-in
#Input Text    Email or mobile phone number    abagde61@gmail.com
#Input Password    password    Arshad@123
#Log in
#Get orders
#Download    url=${csv_url}    target_file=${orders_file}    overwrite=True
#${table}=    Read table from CSV    path=${orders_file}
#[Return]    ${table}
#Go to search Option.
#Set Library Search Order
#Search the Samsung mobiles.
#${order}=    Search from page    page= ${Samsung Mobiles}
#Add Filter
#Customer Review
#Brand
#Price
#Mobile Phone Operating System
#Pay On Delivery
#Internal Memory
#RAM
#Number of Cores
#Screen Size
#Processor Speed
#Colour
#Battery Capacity
#Mobile Phone SIM Card Size
#Mobile Phone Connectivity Technology
#Cell Phone Display Type
#Mobile Phone Shooting Modes
#Front Camera Resolution
#Mobile Phone Biometric Security Feature
#Mobile Phone Primary Camera Resolution
#Mobile Phone Human Interface Input
#Mobile Phone SIM Card Slot Count
#Cell Phone Connector Type
#Mobile Phone Resolution
#Device Features
#Data Transfer
#Item Condition
#Discount
#Availability
#Open First samsung mobile product.
#Order Any samsung mobile product.
#Click on Buy now.
#Chooose Pay on Delivery.
#Continue Order.
#Place your Order.
#Complete Payment.
#Submit Order

*** Tasks ***
#Open the Amazon.com Wesite.
#Login the Website.
#Go to search Option.
#Search the Samsung mobiles.
#Add Product Name in Excel file.
#Add price of Product in Excel.
#Add rating of each product.
#Add discount of product in Excel.

*** Keyword ***
#Minimal task
#Log    Done.
