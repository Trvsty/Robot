*** Settings ***
Library  Selenium2Library
Library  String
Resource  Common.robot
Resource  Variables.robot
*** Variables ***


*** Keywords ***
Log In To DeeperDeals As Admin
    input text  xpath=/html/body/div[1]/div/section/section/div[2]/form/div[1]/input  admin@email.com
    input password  xpath=/html/body/div[1]/div/section/section/div[2]/form/div[2]/input  test
    Click Button  ${LOGINBTN}
    wait until page contains  Navigation
    sleep  5s

Impersonate Buyer
    click element  css=#navigation > li:nth-child(3) > a:nth-child(1) > span:nth-child(2)
    wait until page contains  Group
    sleep  5s
    click element  ${SEARCHBAR}
    sleep  2s
    input text  ${SEARCHBAR}   travis.firmin
    click element  xpath=/html/body/div[1]/div[2]/section/section/div/div/div/section/div[2]/div/table/tbody/tr/td[9]/a
    sleep  8s
    click element  ${IMPERSONATE}
    wait until element is visible  xpath=/html/body/div[1]/div/div/div[3]/button[1]
    click element  xpath=/html/body/div[1]/div/div/div[3]/button[1]
    sleep  5s


Impersonate Seller
    sleep  2s
    click element  xpath=//*[@id="navigation"]/li[2]/a/span
    wait until page contains  City
    sleep  3s
    click element  xpath=/html/body/div[1]/div[2]/section/section/div/div/div/section/div[2]/div/div[1]/div[2]/div/label/input
    sleep  1s
    input text  xpath=/html/body/div[1]/div[2]/section/section/div/div/div/section/div[2]/div/div[1]/div[2]/div/label/input  travis.firmin
    sleep  1s
    click element  xpath=//*[@id="DataTables_Table_2"]/tbody/tr/td[8]/a
    sleep  8s
    click element  ${IMPERSONATE}
    wait until element is visible  ${YES}
    click element  ${YES}
    sleep  5s


Log In To DeeperDeals As Seller
    click element  ${LOGINSELLERBTN}
    click element  ${LOGINBTN}
    wait until page contains  Navigation
    sleep  5s

Log In To DeeperDeals As Buyer
    click element  ${LOGINBUYERBTN}
    click element  ${LOGINBTN}
    wait until page contains  start sourcing
    sleep  5s

Create Test Product
    ${RANDOM}  Generate Random String  8  [NUMBERS][LETTERS]
    click element  xpath=/html/body/div[1]/div[1]/aside/div/div/uib-accordion/div/div/div[2]/div/ul/li[3]/a/span
    sleep  7s
    click element  xpath=/html/body/div[1]/div[2]/section/section/div/div/div[2]/section/div[1]/ul/li[2]/a
    sleep  4s
    click element  xpath=//*[@id="productName"]
    input text  xpath=//*[@id="productName"]  Test Mattress
    click element  xpath=//*[@id="productShortDescription"]
    input text  xpath=//*[@id="productShortDescription"]  Short Description
    click element  xpath=//*[@id="productLongDescription"]
    input text  xpath=//*[@id="productLongDescription"]  Long Description
    click element  xpath=//*[@id="productType"]
    click element  xpath=/html/body/div[1]/div[2]/section/section/div/div/div[1]/div/section/div[2]/div/form/div[2]/div[5]/select/option[2]
    click element  xpath=//*[@id="productLotId"]
    input text  xpath=//*[@id="productLotId"]  ${RANDOM}
    click element  xpath=//*[@id="productSealNumber"]
    input text  xpath=//*[@id="productSealNumber"]  ${RANDOM}
    click element  xpath=//*[@id="productPrice"]
    input text  xpath=//*[@id="productPrice"]  500
    click element  xpath=//*[@id="productDiscountPrice"]
    input text  xpath=//*[@id="productDiscountPrice"]  450
    click element  xpath=//*[@id="productRetailValue"]
    input text  xpath=//*[@id="productRetailValue"]  475
    click element  xpath=//*[@id="productQtyAvailable"]
    input text  xpath=//*[@id="productQtyAvailable"]  10
    click element  xpath=//*[@id="productApproxUnits"]
    input text  xpath=//*[@id="productApproxUnits"]  5
    click element  xpath=//*[@id="productWeight"]
    input text  xpath=//*[@id="productWeight"]  150
    sleep  1s
    click element  xpath=/html/body/div[1]/div[2]/section/section/div/div/div[1]/div/section/div[2]/div/form/div[3]/div/div
    choose file  xpath=/html/body/div[1]/div[2]/section/section/div/div/div[1]/div/section/div[2]/div/form/div[3]/div/div  ${MANIFEST}
    sleep  2s
    click element  xpath=/html/body/div[1]/div[2]/section/section/div/div/div[1]/div/section/div[2]/div/form/div[4]/div/div
    choose file  xpath=/html/body/div[1]/div[2]/section/section/div/div/div[1]/div/section/div[2]/div/form/div[4]/div/div  ${MATTRESSPIC}
    sleep  4s
    click element  xpath=/html/body/div[1]/div[2]/section/section/div/div/div[1]/div/section/div[2]/div/form/div[6]/div/button

Delete Test Product
    click element  xpath=/html/body/div[1]/div[1]/aside/div/div/uib-accordion/div/div/div[2]/div/ul/li[3]/a/span

Restore Admin
    click element  ${RESTOREADMIN}

Add Item to Cart
    click element  xpath=/html/body/div[1]/div[1]/aside/div/div/uib-accordion/div/div/div[2]/div/ul/li[2]/a
    sleep  5s
    click element  xpath=/html/body/div[1]/div[2]/section/section/div/div[1]/a[1]
    sleep  4s
    click element  xpath=/html/body/div[1]/div[2]/section/section/div/div[1]/product-list-item[3]/div/div[2]/div[4]/a
    sleep  4s
    click element  xpath=/html/body/div[1]/div[2]/section/section/div/div/section[1]/div[2]/div[3]/div[2]/button
    sleep  2s
    click element  xpath=/html/body/div[1]/div[2]/section/section/div/div/div[1]/section/div/div/div[2]/div[9]/form/button[2]
    sleep  7s
    click element  xpath=/html/body/div[1]/section/header/ul[2]/li[3]/a
    click element  xpath=/html/body/div[1]/section/header/ul[2]/li[3]/ul/li/a
    sleep  3s
    click element  xpath=/html/body/div[1]/div[2]/section/section/div/div/aside/section/form/table/tbody/tr[5]/td[2]/label/i
    click element  xpath=/html/body/div[1]/div[2]/section/section/div/div/aside/section/form/button
    click element  xpath=/html/body/div[1]/div/div/div[3]/button[1]






*** Keywords ***
