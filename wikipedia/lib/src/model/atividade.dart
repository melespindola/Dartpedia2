import 'title_set.dart';

class Atividade {
  Atividade({
    required this.titulo,
    this.adicionar,
    this.valor,
    required this.descricao,
    required this.quantidade,
    required this.tonalidade,
    required this.avaliacao,
    required this.precaucao,
    required this.demonstracao,
    required this.categorias,
    this.usuario,
    this.carrinho,
    this.pesquisa,
    required this.contato,
    this.imagem,
    required this.logotipo,
  });

  String titulo;        
  String? adicionar;    
  int? valor;           
  String descricao;     
  int quantidade;       
  String tonalidade;    
  String avaliacao;     
  String precaucao;     
  String demonstracao;  
  String categorias;    
  String? usuario;      
  String? carrinho;     
  String? pesquisa;     
  String contato;       
  String? imagem;       
  String logotipo;      
}