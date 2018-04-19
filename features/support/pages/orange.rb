class Orange < SitePrism::Page
  element :login, :id,'btnLogin'
  element :pim, :id,'menu_pim_viewPimModule'
  element :add_employee, :id,'menu_pim_addEmployee'
  element :check_login_details, :id,'chkLogin'
  element :first_name, :id,'firstName'
  element :middle_name, :id,'middleName'
  element :last_name, :id,'lastName'
  element :user_name, :id,'user_name'
  element :button_save, :id,'btnSave'
end
