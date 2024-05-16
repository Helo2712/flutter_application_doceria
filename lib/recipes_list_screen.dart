import 'package:flutter/material.dart';
import 'recipe_detail_screen.dart';

class RecipesListScreen extends StatelessWidget {
  static const routeName = '/recipes';

  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context)!.settings.arguments as String;
    final recipes = getRecipesForCategory(category); // Função mock para obter receitas

    return Scaffold(
      appBar: AppBar(
        title: Text('Receitas de $category'),
      ),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (ctx, index) {
          return ListTile(
            title: Text(recipes[index]['title']!),
            onTap: () {
              Navigator.of(context).pushNamed(
                RecipeDetailScreen.routeName,
                arguments: recipes[index],
              );
            },
          );
        },
      ),
    );
  }

  List<Map<String, String>> getRecipesForCategory(String category) {
    // Retorne uma lista de receitas mock para a categoria fornecida
    return [
      {'title': 'doce', 'description': 'Pré-aqueça o forno a 180°C; Unte e enfarinhe duas formas de bolo redondas de 23cm; Peneire 2 1/2 xícaras de farinha de trigo, 1 1/2 xícara de açúcar, 1 colher de chá de bicarbonato de sódio, 1 colher de chá de fermento em pó, 1 colher de chá de cacau em pó e 1 colher de chá de sal em uma tigela grande; Em outra tigela grande, bata 2 ovos até ficarem leves e fofos, adicione 1 1/2 xícara de óleo vegetal, 1 xícara de buttermilk, 2 colheres de chá de extrato de baunilha e 1-2 colheres de sopa de corante alimentar vermelho, misture bem; Adicione os ingredientes secos aos ingredientes úmidos em três partes, misturando bem após cada adição; Misture 1 colher de chá de vinagre branco ou de maçã com 1 colher de chá de bicarbonato de sódio em uma tigela pequena e incorpore rapidamente à massa do bolo; Divida a massa igualmente entre as formas preparadas e alise a superfície com uma espátula; Asse por 25-30 minutos; Deixe esfriar por 10 minutos nas formas, depois transfira para uma gradinha para esfriar completamente; Para o cream cheese frosting: Bata 250g de cream cheese e 1/2 xícara de manteiga até ficar homogêneo, adicione 2 1/2 xícaras de açúcar de confeiteiro e 1 colher de chá de extrato de baunilha e bata até obter uma consistência leve e fofa; Espalhe o frosting entre os bolos e cubra com o restante; Decore e sirva!'},
      {'title': 'Pão', 'description': 'Em uma tigela grande, misture 500g de farinha de trigo, 1 colher de chá de sal e 1 colher de chá de açúcar; Dissolva 1 envelope (10g) de fermento biológico seco em 300ml de água morna e adicione à mistura de farinha; Amasse a massa até ficar homogênea e elástica, adicionando mais farinha se necessário; Cubra a tigela com um pano úmido e deixe a massa descansar em um local quente por cerca de 1 hora, ou até dobrar de tamanho; Pré-aqueça o forno a 200°C; Amasse a massa novamente para remover o ar e modele-a em um formato de pão; Coloque o pão em uma assadeira untada e deixe descansar por mais 30 minutos; Faça cortes superficiais na superfície do pão com uma faca afiada; Asse o pão no forno pré-aquecido por 30-40 minutos, ou até que fique dourado e oco ao bater na parte inferior; Deixe esfriar em uma gradinha antes de cortar e servir. Aproveite seu pão caseiro!'},
      {'title': 'Massa', 'description': 'Em uma tigela grande, misture 3 1/2 xícaras de farinha de trigo, 1 colher de chá de sal e 1 colher de sopa de açúcar; Em uma xícara de água morna, dissolva 1 envelope (10g) de fermento biológico seco e deixe descansar por 5 minutos; Adicione a mistura de fermento à farinha, junto com 2 colheres de sopa de azeite de oliva extra virgem; Misture bem até formar uma massa homogênea; Transfira a massa para uma superfície enfarinhada e sove por cerca de 5 minutos, até que fique macia e elástica; Forme uma bola com a massa e coloque-a em uma tigela untada com azeite, cobrindo-a com um pano úmido; Deixe a massa descansar em um local quente por 1-2 horas, ou até dobrar de tamanho; Após o tempo de descanso, divida a massa em duas partes e abra cada uma em formato de disco com a espessura desejada; Coloque os discos de massa em uma assadeira ou pedra para pizza levemente enfarinhada; Adicione o molho e os ingredientes de sua preferência, e asse em um forno pré-aquecido a 230°C por cerca de 12-15 minutos, ou até a massa ficar dourada e crocante. Aproveite sua deliciosa pizza caseira'},
    ];
  }
}
