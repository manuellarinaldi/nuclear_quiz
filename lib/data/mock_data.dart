import 'package:flutter/material.dart';
import '../models/models.dart';

const categorias = <Categoria>[
  Categoria(id: 1, nome: 'Saúde', descricao: 'Diagnóstico e tratamento', icone: Icons.local_hospital, cor: Color(0xFFD64550)),
  Categoria(id: 2, nome: 'Agricultura', descricao: 'Alimentos e pragas', icone: Icons.agriculture, cor: Color(0xFF6A994E)),
  Categoria(id: 3, nome: 'Indústria', descricao: 'Inspeção e controle', icone: Icons.factory, cor: Color(0xFF457B9D)),
  Categoria(id: 4, nome: 'Energia', descricao: 'Usinas nucleares', icone: Icons.bolt, cor: Color(0xFFF4A261)),
  Categoria(id: 5, nome: 'Pesquisa e PNM', descricao: 'Ciência e Marinha', icone: Icons.science, cor: Color(0xFF6D597A)),
];

const conteudos = <Conteudo>[
  // Saúde
  Conteudo(
    categoriaId: 1,
    titulo: 'Medicina nuclear',
    resumo: 'Imagens do corpo com radiofármacos.',
    texto: 'Na medicina nuclear, o paciente recebe uma pequena quantidade de um radiofármaco. '
        'Equipamentos especiais detectam a radiação emitida e geram imagens que mostram '
        'como órgãos como coração, tireoide e ossos estão funcionando.',
  ),
  Conteudo(
    categoriaId: 1,
    titulo: 'Radioterapia',
    resumo: 'Radiação no combate ao câncer.',
    texto: 'A radioterapia usa radiação ionizante, de forma controlada e dirigida, '
        'para destruir células tumorais preservando ao máximo o tecido saudável ao redor.',
  ),
  // Agricultura
  Conteudo(
    categoriaId: 2,
    titulo: 'Irradiação de alimentos',
    resumo: 'Mais tempo de validade, mais segurança.',
    texto: 'Alimentos podem ser expostos a radiação para reduzir micro-organismos e '
        'retardar o amadurecimento. O alimento irradiado não se torna radioativo.',
  ),
  Conteudo(
    categoriaId: 2,
    titulo: 'Técnica do inseto estéril',
    resumo: 'Controle de pragas sem inseticida.',
    texto: 'Insetos machos são esterilizados por radiação e soltos no campo. '
        'Ao cruzar com fêmeas selvagens, não geram descendentes, reduzindo a praga ao longo do tempo.',
  ),
  // Indústria
  Conteudo(
    categoriaId: 3,
    titulo: 'Gamagrafia industrial',
    resumo: 'Inspeção sem destruir a peça.',
    texto: 'Semelhante a um raio-X, a gamagrafia permite verificar soldas e estruturas '
        'metálicas por dentro, sem cortá-las ou danificá-las.',
  ),
  Conteudo(
    categoriaId: 3,
    titulo: 'Traçadores e medidores',
    resumo: 'Vazamentos, nível e espessura.',
    texto: 'Traçadores radioativos ajudam a localizar vazamentos em tubulações, '
        'e medidores nucleares controlam nível e espessura de materiais em linhas de produção.',
  ),
  // Energia
  Conteudo(
    categoriaId: 4,
    titulo: 'Usinas de Angra',
    resumo: 'Energia nuclear no Brasil.',
    texto: 'As usinas nucleares brasileiras ficam em Angra dos Reis (RJ). '
        'Elas usam urânio como combustível para gerar calor, que produz vapor e move turbinas.',
  ),
  Conteudo(
    categoriaId: 4,
    titulo: 'Energia de baixo carbono',
    resumo: 'Geração sem emitir CO₂.',
    texto: 'Durante a geração de eletricidade, uma usina nuclear praticamente não emite CO₂, '
        'o que a torna uma fonte relevante em estratégias de baixo carbono.',
  ),
  // Pesquisa e PNM
  Conteudo(
    categoriaId: 5,
    titulo: 'Programa Nuclear da Marinha',
    resumo: 'Tecnologia nacional desde 1979.',
    texto: 'O PNM, conduzido pelo CTMSP, desenvolve tecnologias do ciclo do combustível nuclear '
        'e de geração de energia, com aplicações militares e civis e foco na autonomia tecnológica do país.',
  ),
  Conteudo(
    categoriaId: 5,
    titulo: 'Datação por carbono-14',
    resumo: 'Descobrindo a idade de fósseis.',
    texto: 'O carbono-14 decai em um ritmo conhecido. Medindo o que resta dele em materiais '
        'orgânicos, cientistas estimam a idade de fósseis e artefatos arqueológicos.',
  ),
];

const perguntas = <Pergunta>[
  // Saúde
  Pergunta(
    categoriaId: 1,
    enunciado: 'Qual área usa radiofármacos para gerar imagens do funcionamento dos órgãos?',
    opcoes: ['Ultrassonografia', 'Medicina nuclear', 'Endoscopia', 'Fisioterapia'],
    correta: 1,
    explicacao: 'A medicina nuclear detecta a radiação emitida pelos radiofármacos.',
  ),
  Pergunta(
    categoriaId: 1,
    enunciado: 'A radioterapia é usada principalmente no tratamento de qual doença?',
    opcoes: ['Gripe', 'Diabetes', 'Câncer', 'Asma'],
    correta: 2,
    explicacao: 'A radiação controlada destrói células tumorais.',
  ),
  Pergunta(
    categoriaId: 1,
    enunciado: 'Como seringas e luvas podem ser esterilizadas sem calor?',
    opcoes: ['Radiação ionizante', 'Água gelada', 'Luz de lâmpada comum', 'Ventilação'],
    correta: 0,
    explicacao: 'A radiação elimina micro-organismos sem aquecer o material.',
  ),
  // Agricultura
  Pergunta(
    categoriaId: 2,
    enunciado: 'Para que serve a irradiação de alimentos?',
    opcoes: ['Deixar o alimento radioativo', 'Aumentar a validade e a segurança', 'Mudar o sabor', 'Aumentar o peso'],
    correta: 1,
    explicacao: 'Ela reduz micro-organismos e retarda o amadurecimento.',
  ),
  Pergunta(
    categoriaId: 2,
    enunciado: 'Um alimento irradiado se torna radioativo?',
    opcoes: ['Sim, sempre', 'Sim, por 24 horas', 'Não', 'Só se for carne'],
    correta: 2,
    explicacao: 'A irradiação não deixa resíduo radioativo no alimento.',
  ),
  Pergunta(
    categoriaId: 2,
    enunciado: 'Na técnica do inseto estéril, o que acontece com os insetos soltos?',
    opcoes: ['Viram predadores', 'Não geram descendentes', 'Ficam maiores', 'Produzem mel'],
    correta: 1,
    explicacao: 'Eles são esterilizados e reduzem a população da praga.',
  ),
  // Indústria
  Pergunta(
    categoriaId: 3,
    enunciado: 'A gamagrafia industrial serve para:',
    opcoes: ['Pintar peças', 'Inspecionar soldas sem destruí-las', 'Cortar metais', 'Resfriar máquinas'],
    correta: 1,
    explicacao: 'Funciona como um raio-X para peças e estruturas.',
  ),
  Pergunta(
    categoriaId: 3,
    enunciado: 'Traçadores radioativos podem ajudar a encontrar:',
    opcoes: ['Vazamentos em tubulações', 'Erros de digitação', 'Sinal de Wi-Fi', 'Ferrugem na pintura'],
    correta: 0,
    explicacao: 'Eles permitem rastrear o fluxo e localizar vazamentos.',
  ),
  Pergunta(
    categoriaId: 3,
    enunciado: 'Medidores nucleares são usados para controlar:',
    opcoes: ['Temperatura do ambiente', 'Nível e espessura de materiais', 'Volume do som', 'Velocidade do vento'],
    correta: 1,
    explicacao: 'São comuns em linhas de produção industriais.',
  ),
  // Energia
  Pergunta(
    categoriaId: 4,
    enunciado: 'Em qual cidade ficam as usinas nucleares brasileiras?',
    opcoes: ['Angra dos Reis (RJ)', 'Manaus (AM)', 'Curitiba (PR)', 'Recife (PE)'],
    correta: 0,
    explicacao: 'O complexo de Angra fica no litoral do Rio de Janeiro.',
  ),
  Pergunta(
    categoriaId: 4,
    enunciado: 'Qual é o principal combustível das usinas nucleares?',
    opcoes: ['Carvão', 'Gás natural', 'Urânio', 'Etanol'],
    correta: 2,
    explicacao: 'A fissão do urânio gera o calor usado na produção de vapor.',
  ),
  Pergunta(
    categoriaId: 4,
    enunciado: 'Na geração de eletricidade, uma usina nuclear emite praticamente:',
    opcoes: ['Muito CO₂', 'Nenhum CO₂', 'Só metano', 'Fumaça preta'],
    correta: 1,
    explicacao: 'Por isso é considerada uma fonte de baixo carbono.',
  ),
  // Pesquisa e PNM
  Pergunta(
    categoriaId: 5,
    enunciado: 'Desde que ano o Programa Nuclear da Marinha é desenvolvido?',
    opcoes: ['1979', '1999', '1949', '2009'],
    correta: 0,
    explicacao: 'O PNM existe desde 1979.',
  ),
  Pergunta(
    categoriaId: 5,
    enunciado: 'Qual centro conduz o Programa Nuclear da Marinha?',
    opcoes: ['CTMSP', 'NASA', 'CERN', 'INPE'],
    correta: 0,
    explicacao: 'O Centro Tecnológico da Marinha em São Paulo.',
  ),
  Pergunta(
    categoriaId: 5,
    enunciado: 'A datação por carbono-14 é usada para estimar:',
    opcoes: ['A temperatura de estrelas', 'A idade de fósseis e artefatos', 'A profundidade do mar', 'O peso de rochas'],
    correta: 1,
    explicacao: 'Ela mede o carbono-14 restante em materiais orgânicos.',
  ),
];