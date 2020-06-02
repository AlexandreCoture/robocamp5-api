***Settings***
Documentation       POST /auth
...                 Testes do serviço de autorização

Resource                ../../resources/services.robot


***Test Cases***
Successfuly Login
        [Tags]  success
         
        ${resp}=        Post Token      papito@ninjapixel.com   pwd123    
        Status Should Be        200             ${resp}
        
Incorrect Password
        [Tags]  not_authorized

        ${resp}=        Post Token      papito@ninjapixel.com   abc123     
        Status Should Be        401             ${resp}