*** Settings ***
Library    SeleniumLibrary    # SeleniumLibrary'i kullanarak tarayıcı otomasyonu sağlanır

*** Test Cases ***

ScrollingTest
    open browser    https://www.countries-ofthe-world.com/flags-of-the-world.html    chrome    # Chrome tarayıcısıyla verilen siteyi aç
    execute javascript    window.scrollTo(0,document.body.scrollHeight)    # Sayfanın en altına otomatik olarak kaydır
    scroll element into view    xpath://*[@id="ct-list"]/table[2]/tbody/tr[96]/td[1]/img    # Belirtilen bayrak elementine (örneğin Vietnam) ekranı kaydır
    sleep    1    # 1 saniye bekle (gözlemlemek için)




