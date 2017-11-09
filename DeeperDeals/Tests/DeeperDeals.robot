
*** Settings ***
Resource  ../Resources/DeeperDeals.robot
Resource  ../Resources/Common.robot
Test Setup  Begin Test
Test Teardown  End Test


*** Test Cases ***

Impersonate Buyer
    [Documentation]  Admin user impersonates buyer.
    [Tags]  Smoke
    DeeperDeals.Log In To DeeperDeals As Admin
    DeeperDeals.Impersonate Buyer

Impersonate Seller
    [Documentation]  Admin user impersonates seller.
    [Tags]  Smoke
    DeeperDeals.Log In To DeeperDeals As Admin
    DeeperDeals.Impersonate Seller

Log In As Seller
    [Documentation]  Logs in as a seller.
    [Tags]  Smoke
    DeeperDeals.Log In To DeeperDeals As Seller


Log In As Buyer
    [Documentation]  Logs in as a buyer.
    [Tags]  Smoke
    DeeperDeals.Log In To DeeperDeals As Buyer

Create Test Product
    [Documentation]  Impersonates a seller then creates new product.
    [Tags]  Product
    DeeperDeals.Log In To DeeperDeals As Admin
    DeeperDeals.Impersonate Seller
    DeeperDeals.Create Test Product

Cart Checkout
    [Documentation]  Adds item to buyers cart and checks out.
    [Tags]  Product Regression
    DeeperDeals.Log In To DeeperDeals As Admin
    DeeperDeals.Impersonate Buyer
    DeeperDeals.Add Item to Cart

Cart Checkout Using Credit
    [Documentation]  Adds item to buyers cart and checks out.
    [Tags]  Product Regression
    DeeperDeals.Log In To DeeperDeals As Admin
    DeeperDeals.Impersonate Buyer





*** Keywords ***
