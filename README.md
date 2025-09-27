# RottenPotatoes

 Aprimoramento do Ro9enPotatoes, Parte #1 
- Faça com que o Título do Filme e a Data de Lançamento sejam links clicáveis usando 
link_to. 
- Capture params[:sort] no controller. 
- Altere a ordem usando o método order do ActiveRecord. 
- Destaque a coluna ordenada com CSS. 
No seu URL, você deve usar a rota que leva para index.html, ação index. (use rails routes 
para ver a tabela de rotas) Dentro do URL, passe um hash que tenha um símbolo como chave 
e uma string como valor (por exemplo: :sort_by => ‘title') Fazendo isso, no controller, você 
pode usar params[:sort_by] e obter ‘title'. O link também deve ter um id associado a ele. O id 
deve ser um símbolo. Isso deve ser atribuído a 'title_header' ou 'release_date_header'. 
Neste ponto, recarregue sua página no navegador — você deverá ter 2 links no cabeçalho da 
tabela. Fique atento a erros reportados pelo servidor Rails! Se houver erros de sintaxe, eles 
começarão a aparecer ali. 
b. Agora, edite seu controller 
Se você clicar em um dos links, observe como o URL muda. As informações após o '?' são 
acessíveis via params. Por exemplo, se o URL diz '?sort="title"', você pode olhar 
params[:sort] para obter 'title'. 
c. Para a ordenação 
Tenha em mente que você não está atualizando a tabela — você está apenas alterando o 
comando find. No código original, você tem Movie.all. Isso retorna todos os filmes. 
Especificamente, você quer alterar a ordem. Existem várias maneiras de fazer isso. 
 
Primeiro: https://apidock.com/rails/v7.1.3.2/ActiveRecord/FinderMethods/find 
Observe a parte sobre como alterar a ordem. Uma forma mais simples é aproveitar a 
metaprogramação usando o método order. 
d. VERIFIQUE SEU TRABALHO! 
Recarregue seu site: localhost:3000/movies.  Se estiver funcionando, faça git commit e 
depois git push. Caso contrário, depure! 
Submeta o link do seu repositório no GitHub com a versão estendida da 
aplicação Ro9enPotatoes que você implementou. 
