Dado("que estou na home do site Neon") do
  visit 'https://www.banconeon.com.br/'
end

Quando("acessar a opção Quem somos") do
    click_link('quem somos')
end

Então("devo visualizar o texto de apresentação do Banco Neon") do
  page.execute_script "window.scrollBy(0,2000)"
  sleep 3
  assert_text('Somos um grupo de jovens')
  assert_text('insatisfeitos com a mesmice dos grandes bancos.')
  assert_text('Nós somos Neon. Tipo um banco, só que totalmente diferente.')
end
