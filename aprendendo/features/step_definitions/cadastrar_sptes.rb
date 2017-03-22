

Dado(/^que eu abrir o site$/) do                                              
  visit "https://enterprise-demo.orangehrmlive.com/" 
end  

Quando(/^realizar o cadastro de usuario$/) do                                   
  
  fill_in('txtUsername', :with => 'Admin')
  #sleep 10
  fill_in('txtPassword', :with => 'admin')

  find(:id, 'btnLogin').click
  sleep 1

  find(:id, 'menu_pim_viewPimModule').click

  find(:id, 'menu_pim_addEmployee').click

  fill_in('firstName', :with => 'Aprendendo')
  
  fill_in('middleName', :with => 'Chegaremos')
 
  fill_in('lastName', :with => 'La')
  
  #attach_file('photofile', 'C:\Users\Inmetrics\Pictures\Camera Roll\Documento1.jpg')
  
  check('chkLogin')

  fill_in('user_name', :with => 'Ligeiro')
  sleep 1

  fill_in('user_password', :with => 'Eio7203$')
  sleep 1 

  fill_in('re_password', :with => 'Eio7203$')
  sleep 1

  select('Disabled',:from =>'status')
  sleep 1

  select('New York Sales Office',:from =>'location')
  sleep 2

  find(:id, 'btnSave').click

end                                                                             
     
Entao(/^usuario cadastrado$/) do                                                
  
  find(:id, 'personal_txtEmpFirstName')
  sleep 1
  
  find(:id, 'welcome').click
  sleep 1
  
  click_link('Logout')
  sleep 2

end

#Passos para realizar alteracao de cadastro========================================

Dado(/^Logar para alterar o usuario$/) do                                              
  visit "https://enterprise-demo.orangehrmlive.com/" 
end 

Quando(/^realizar alteração de usuario$/) do
  
  fill_in('txtUsername', :with => 'Admin')
  sleep 1
  fill_in('txtPassword', :with => 'admin')

  find(:id, 'btnLogin').click
  sleep 1

  find(:id, 'menu_pim_viewPimModule').click
 
  find(:id, 'menu_pim_viewEmployeeList').click
 
  select('Finance Manager',:from =>'empsearch_job_title')
  sleep 1

  click_button('searchBtn')
  sleep 1

  click_link('1002')
  sleep 1

  click_button('btnSave')

  fill_in('personal_txtEmpNickName', :with => 'Teste')

  fill_in('personal_txtMilitarySer', :with => 'alteracao')

end

Entao(/^cadastro de usuario alterado$/) do

   click_button('btnSave')

end
