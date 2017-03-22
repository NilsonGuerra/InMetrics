

Dado(/^que eu abrir o site$/) do                                              
  visit "https://enterprise-demo.orangehrmlive.com/" 
end  

Dado(/^realizar o login com Admin$/) do     

  fill_in('txtUsername', :with => 'Admin')
  #sleep 10
  fill_in('txtPassword', :with => 'admin')

  find(:id, 'btnLogin').click
end                                                                          
                                                                             
Dado(/^selecionar para abrir a pagina para cadastrar um novo usuário$/) do   
  
    find(:id, 'menu_pim_viewPimModule').click
    find(:id, 'menu_pim_addEmployee').click
end                                                                                                                                                  
                                                                              
Dado(/^realizar o cadastro de um novo usuario$/) do
  fill_in('firstName', :with => 'Aprendendo')
  
  fill_in('middleName', :with => 'Chegaremos')
 
  fill_in('lastName', :with => 'La')
  
 attach_file('photofile', 'C:\Users\Inmetrics\Pictures\Camera Roll\Documento1.jpg')
   sleep 1

  check('chkLogin')

  fill_in('user_name', :with => 'Ligeiro')
  sleep 1

  fill_in('user_password', :with => 'Eio7203$')
  sleep 1	

  fill_in('re_password', :with => 'Eio7203$')
  sleep 1

  select('Disabled',:from =>'status')
  sleep 1

  select('Australian Regional HQ',:from =>'location')
  sleep 1
  
  select('New York Sales Office',:from =>'location')
  sleep 1

  find(:id, 'btnSave').click
end    

Dado(/^cadastro realizado$/) do
  find(:id, 'personal_txtEmpFirstName')
  sleep 1
end

Entao(/^Alterar cadastro de usuário$/) do
  
  find(:id, 'welcome').click
 sleep 1
  click_link('Logout')
sleep 2
end

#Passos para realizar alteracao de cadastro========================================

Dado(/^Logar para alterar o usuario$/) do                                              
  visit "https://enterprise-demo.orangehrmlive.com/" 
end 

Dado(/^login com Admin$/)do     

  fill_in('txtUsername', :with => 'Admin')
  sleep 1
  fill_in('txtPassword', :with => 'admin')

  find(:id, 'btnLogin').click
  sleep 1
end                                                                          
     
Dado(/^entrar no menu de alteracao$/) do                                      
   find(:id, 'menu_pim_viewPimModule').click
    find(:id, 'menu_pim_viewEmployeeList').click
end                                                                                                                                                        

Dado(/^selecionar o titulo da Profissao$/) do
  select('Finance Manager',:from =>'empsearch_job_title')
  sleep 1
end

Dado(/^realizar a pesquisa$/) do
  click_button('searchBtn')
  sleep 1
end

Dado(/^entrar no cadastro do usuario$/) do
  click_link('1002')
  sleep 1
end

Dado(/^selecionar a opcao de editar o cadastro$/) do
  click_button('btnSave')
end

Quando(/^realizar alteracao no cadastro do funcionario$/) do
  fill_in('personal_txtEmpNickName', :with => 'Teste')
  fill_in('personal_txtMilitarySer', :with => 'alteracao')
end

Entao(/^salvar alteraca realizada$/) do
  click_button('btnSave')
end
