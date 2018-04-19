Dado("que estou na home do site OrangeHRM") do
  visit 'http://opensource.demo.orangehrmlive.com/'
  @orange = Orange.new
end

Quando("realizo o fluxo de cadastro de um usuário") do
  fill_in('txtUsername',:with=>'admin')
  fill_in('txtPassword',:with=>'admin')
  @orange.login.click
  #achar uma forma de usar mouseover, eu não consegui
  @orange.pim.click
  @orange.add_employee.click
  @orange.check_login_details.click
  @orange.first_name.set Faker::Name.first_name
  @orange.middle_name.set Faker::Name.first_name
  @orange.last_name.set Faker::Name.last_name
  @orange.user_name.set Faker::Pokemon.name
  fill_in('user_password',:with=>'marimba123')
  fill_in('re_password',:with=>'marimba123')
  @orange.button_save.click
end

Então("devo visualizar que o usuário foi cadastrado com sucesso") do
  assert_text ('Personal Details')
  assert_text ('Full Name')
end
