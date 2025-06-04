# Working with radio buttons and check boxes

*** Settings ***
Library    SeleniumLibrary    # SeleniumLibrary'i projeye dahil ediyoruz.




*** Variables ***
${browser}         chrome      # Kullanılacak tarayıcı
${url}             https://proleed.academy/exercises/selenium/automation-practice-form-with-radio-button-check-boxes-and-drop-down.php  # Test edilecek sayfa
${name_field}      id:firstname      # İsim input alanı
${surname_field}   id:lastname       # Soyisim input alanı
${father_name}     name:fathername   # Baba adı input alanı
${mother_name}     name:mothername   # Anne adı input alanı
${idnumber}        id:identity_number  # Kimlik numarası input alanı
${checkbox_id}     id:passport        # Pasaport checkbox alanı

*** Test Cases ***
Testing
    Open Browser    ${url}    ${browser}    # Siteyi açar ve tarayıcıyı başlatır
    Maximize Browser Window                 # Pencereyi tam ekran yapar
    Verify Name And Surname Fields          # İsim ve soyisim alanlarını kontrol eder
    Fill Personal Information               # İsim, soyisim, baba ve anne adı girilir
    Select Account Type And Passport        # Radio button seçilir, checkbox tıklanır
    Enter Identity Number                   # Kimlik numarası girilir
    Sleep    15                             # Sayfa görüntüleme süresi (test gözlemi için)

*** Keywords ***
Verify Name And Surname Fields
    Element Should Be Visible    ${name_field}       # İsim alanı görünür mü kontrol eder
    Element Should Be Enabled    ${name_field}       # İsim alanı aktif mi kontrol eder
    Element Should Be Visible    ${surname_field}    # Soyisim alanı görünür mü kontrol eder
    Element Should Be Enabled    ${surname_field}    # Soyisim alanı aktif mi kontrol eder

Fill Personal Information
    Input Text    ${name_field}     yusuf            # İsim girilir
    Input Text    ${surname_field}  er               # Soyisim girilir
    Input Text    ${father_name}    Bekir            # Baba adı girilir
    Input Text    ${mother_name}    Emel             # Anne adı girilir

Select Account Type And Passport
    Select Radio Button    accountype   saving        # Radio button seçilir (saving)
    Scroll Element Into View    ${checkbox_id}       # Checkbox görünür alana kaydırılır
    Select Checkbox    ${checkbox_id}                # Checkbox işaretlenir

Enter Identity Number
    Scroll Element Into View    ${idnumber}          # Kimlik numarası alanı görünür yapılır
    Input Text    ${idnumber}   323298               # Kimlik numarası girilir
