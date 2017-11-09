*** Settings ***
Library  Selenium2Library
Library  String
Resource  Common.robot

*** Variables ***

${MANIFEST}  C:\\Users\\Travis\\PycharmProjects\\Development\\robot-scripts\\DeeperDeals\\Resources\\UploadFiles\\Manifest.jpeg
${MATTRESSPIC}  C:\\Users\\Travis\\PycharmProjects\\Development\\robot-scripts\\DeeperDeals\\Resources\\UploadFiles\\Mattress.jpeg
${RESTOREADMIN}  xpath=/html/body/div[1]/section/header/ul[2]/li[1]/a
${LOGINBTN}  xpath=/html/body/div[1]/div/section/section/div[2]/form/div[3]/button
${DEEPERDEALS}  http://staging-app.deeperdeals.com/#!/auth/login
${LOGINSELLERBTN}  xpath=/html/body/div[1]/div/section/section/div[2]/div/p/a[3]
${LOGINBUYERBTN}  xpath=/html/body/div[1]/div/section/section/div[2]/div/p/a[4]
${SEARCHBAR}  xpath=/html/body/div[1]/div[2]/section/section/div/div/div/section/div[2]/div/div[1]/div[2]/div/label/input
${IMPERSONATE}  xpath=/html/body/div[1]/div[2]/section/section/div/div/div[1]/section/div[1]/ul/li[1]/a
${YES}  xpath=/html/body/div[1]/div/div/div[3]/button[1]