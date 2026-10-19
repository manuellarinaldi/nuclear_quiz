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
  // ---------------- SAÚDE ----------------
  Conteudo(
    categoriaId: 1,
    titulo: 'Medicina nuclear',
    resumo: 'Imagens do corpo com radiofármacos.',
    paragrafos: [
      'A medicina nuclear permite ver como um órgão funciona, e não apenas como ele é por fora. '
          'Para isso, o paciente recebe um radiofármaco: uma substância que leva um radioisótopo '
          'até o órgão que será estudado, como coração, tireoide, rins ou ossos.',
      'O radioisótopo emite radiação, que é captada por câmeras especiais (como a cintilografia '
          'e o PET). O equipamento transforma esses sinais em imagens, e o médico consegue '
          'identificar falhas no funcionamento do órgão em fases iniciais de uma doença.',
      'As quantidades usadas são pequenas e o material perde a atividade rapidamente, '
          'sendo eliminado pelo próprio organismo em pouco tempo. Um dos radioisótopos '
          'mais usados em diagnóstico é o tecnécio-99m.',
    ],
    curiosidade: 'Parte dos radiofármacos usados nos hospitais brasileiros é produzida no país, '
        'por instituições como o IPEN, em São Paulo.',
  ),
  Conteudo(
    categoriaId: 1,
    titulo: 'Radioterapia',
    resumo: 'Radiação no combate ao câncer.',
    paragrafos: [
      'Na radioterapia, uma radiação de alta energia é direcionada ao tumor. Ela danifica o DNA '
          'das células tumorais, que perdem a capacidade de se multiplicar e acabam morrendo.',
      'O tratamento é planejado com muita precisão: exames de imagem definem o formato e a '
          'posição do tumor, e os aparelhos (como os aceleradores lineares) direcionam o feixe '
          'para proteger ao máximo os tecidos saudáveis ao redor.',
      'Em geral, a dose total é dividida em várias sessões ao longo de dias ou semanas. '
          'Isso dá tempo para as células saudáveis se recuperarem entre uma sessão e outra. '
          'Existe também a braquiterapia, em que a fonte de radiação é colocada bem próxima ao tumor.',
    ],
    curiosidade: 'Uma parcela grande dos pacientes com câncer faz radioterapia em algum momento '
        'do tratamento, sozinha ou combinada com cirurgia e quimioterapia.',
  ),
  Conteudo(
    categoriaId: 1,
    titulo: 'Esterilização por radiação',
    resumo: 'Materiais seguros sem usar calor.',
    paragrafos: [
      'Seringas, luvas, gazes, bolsas e até próteses precisam chegar aos hospitais livres de '
          'micro-organismos. Muitos desses materiais não suportam altas temperaturas, '
          'e a radiação ionizante resolve esse problema.',
      'Os produtos já embalados passam por uma sala blindada e recebem uma dose controlada '
          'de radiação gama (como a do cobalto-60) ou de feixes de elétrons. '
          'A radiação elimina bactérias e vírus sem aquecer o material.',
      'Como o processo ocorre com o produto já embalado, ele permanece estéril até ser aberto.',
    ],
    curiosidade: 'O material esterilizado por radiação não fica radioativo: a radiação apenas '
        'passa por ele, como a luz passa por um vidro.',
  ),

  // ---------------- AGRICULTURA ----------------
  Conteudo(
    categoriaId: 2,
    titulo: 'Irradiação de alimentos',
    resumo: 'Mais tempo de validade, mais segurança.',
    paragrafos: [
      'A irradiação de alimentos consiste em expor frutas, grãos, especiarias e carnes a uma '
          'dose controlada de radiação. O objetivo é reduzir micro-organismos, eliminar insetos '
          'e prolongar o tempo em que o alimento fica próprio para consumo.',
      'Ela também pode impedir o brotamento de batatas e cebolas e retardar o amadurecimento '
          'de algumas frutas, reduzindo desperdício durante o transporte e o armazenamento.',
      'O processo é regulamentado, e a embalagem deve informar que o alimento foi tratado por '
          'irradiação. Se for bem aplicada, ela mantém boa parte das características do alimento.',
    ],
    curiosidade: 'O alimento irradiado não se torna radioativo, assim como uma bagagem '
        'não fica radioativa depois de passar pelo raio-X do aeroporto.',
  ),
  Conteudo(
    categoriaId: 2,
    titulo: 'Técnica do inseto estéril',
    resumo: 'Controle de pragas sem inseticida.',
    paragrafos: [
      'Algumas pragas, como certas moscas-das-frutas, causam grandes prejuízos às lavouras. '
          'A técnica do inseto estéril combate esse problema sem espalhar veneno no ambiente.',
      'Os insetos machos são criados em grande quantidade e recebem uma dose de radiação que '
          'os esteriliza. Depois, são soltos no campo. Quando acasalam com fêmeas selvagens, '
          'não há descendentes, e a população da praga diminui geração após geração.',
      'Como a técnica atua apenas sobre a espécie-alvo, ela preserva insetos benéficos, '
          'como as abelhas, e reduz a necessidade de agrotóxicos.',
    ],
    curiosidade: 'No Brasil, a técnica é usada contra a mosca-das-frutas em regiões produtoras, '
        'como o Vale do São Francisco.',
  ),
  Conteudo(
    categoriaId: 2,
    titulo: 'Melhoramento de plantas',
    resumo: 'Sementes mais fortes e produtivas.',
    paragrafos: [
      'Para criar plantas mais resistentes, os cientistas podem irradiar sementes. '
          'A radiação provoca pequenas mudanças genéticas (mutações) ao acaso, '
          'que também acontecem na natureza, mas de forma muito mais lenta.',
      'Depois, os pesquisadores plantam essas sementes e selecionam as plantas com '
          'características úteis: mais resistência a pragas e secas, ciclo mais curto, '
          'maior produtividade ou melhor qualidade do grão.',
      'Esse processo é um método de melhoramento, e as plantas escolhidas seguem '
          'para testes antes de chegarem aos produtores.',
    ],
    curiosidade: 'Milhares de variedades de plantas cultivadas no mundo foram obtidas '
        'com ajuda de mutação induzida por radiação.',
  ),

  // ---------------- INDÚSTRIA ----------------
  Conteudo(
    categoriaId: 3,
    titulo: 'Gamagrafia industrial',
    resumo: 'Inspeção sem destruir a peça.',
    paragrafos: [
      'Como saber se a solda de um gasoduto ou de uma caldeira tem defeitos por dentro, '
          'sem cortar a peça? A gamagrafia resolve isso: uma fonte radioativa fica de um lado, '
          'um filme ou detector do outro, e a imagem mostra rachaduras e falhas internas.',
      'É um tipo de ensaio não destrutivo, ou seja, a peça é avaliada sem ser danificada. '
          'Ele é muito usado em petróleo e gás, construção naval, aviação e fábricas de estruturas metálicas.',
      'A segurança é parte essencial do trabalho: a fonte fica em um equipamento blindado, '
          'a área é isolada e sinalizada, e a atividade é feita por profissionais '
          'treinados e autorizados.',
    ],
    curiosidade: 'No Brasil, o uso de fontes radioativas na indústria é licenciado e '
        'fiscalizado pela CNEN (Comissão Nacional de Energia Nuclear).',
  ),
  Conteudo(
    categoriaId: 3,
    titulo: 'Medidores nucleares',
    resumo: 'Nível, espessura e densidade sem contato.',
    paragrafos: [
      'Em uma fábrica de papel, de aço ou de alumínio, a espessura do material precisa ser '
          'controlada o tempo todo. Medidores nucleares fazem isso medindo quanto da radiação '
          'atravessa o material: quanto mais espesso, menos radiação passa.',
      'O mesmo princípio serve para medir o nível de líquidos dentro de tanques fechados, '
          'a densidade de misturas e a umidade de materiais, sem abrir nem tocar no processo.',
      'As fontes usadas são seladas e de baixa atividade, o que permite o uso contínuo '
          'e seguro em linhas de produção.',
    ],
    curiosidade: 'Esses medidores permitem monitorar tanques e linhas de produção '
        'em tempo real, mesmo em ambientes muito quentes ou perigosos.',
  ),
  Conteudo(
    categoriaId: 3,
    titulo: 'Traçadores radioativos',
    resumo: 'Seguindo o caminho de fluidos.',
    paragrafos: [
      'Um traçador radioativo é uma pequena quantidade de material marcado que é '
          'misturada a um fluido, como água, óleo ou gás. Detectores colocados do lado '
          'de fora acompanham por onde esse material passa.',
      'Com isso, é possível descobrir vazamentos em tubulações enterradas sem escavar, '
          'medir a velocidade e a vazão de líquidos e avaliar o desgaste interno de equipamentos.',
      'Como a radiação é detectável mesmo em quantidades muito pequenas, '
          'basta uma dose mínima para obter bons resultados.',
    ],
    curiosidade: 'Traçadores também ajudam a estudar o movimento de rios, sedimentos e '
        'águas subterrâneas.',
  ),

  // ---------------- ENERGIA ----------------
  Conteudo(
    categoriaId: 4,
    titulo: 'Como funciona uma usina nuclear',
    resumo: 'Do átomo de urânio à tomada.',
    paragrafos: [
      'Em uma usina nuclear, o calor é produzido pela fissão: o núcleo de um átomo de urânio '
          'se divide e libera energia. Isso acontece de forma controlada dentro do reator, '
          'onde ficam as varetas com o combustível.',
      'Esse calor aquece a água e produz vapor, que movimenta uma turbina ligada a um gerador. '
          'O gerador transforma o movimento em eletricidade, que segue para as linhas de transmissão.',
      'Nas usinas de Angra 1 e Angra 2, o reator é do tipo PWR (água pressurizada). '
          'A água que passa pelo reator fica em um circuito fechado, separado da água que gera o vapor.',
    ],
    curiosidade: 'Uma pequena pastilha de combustível nuclear libera muito mais energia '
        'do que a mesma massa de carvão.',
  ),
  Conteudo(
    categoriaId: 4,
    titulo: 'A usina nuclear no Brasil',
    resumo: 'O complexo de Angra dos Reis.',
    paragrafos: [
      'As usinas nucleares brasileiras ficam na Central Nuclear Almirante Álvaro Alberto, '
          'em Angra dos Reis, no litoral do Rio de Janeiro. Estão em operação Angra 1 e Angra 2, '
          'operadas pela Eletronuclear.',
      'Angra 1 começou a operar comercialmente em 1985, e Angra 2, em 2001. '
          'Juntas, elas fornecem parte da energia elétrica consumida pelo país, '
          'incluindo a região Sudeste. Angra 3 é um projeto previsto para o mesmo complexo.',
      'O Brasil também tem grandes reservas de urânio e domina etapas importantes '
          'do ciclo do combustível nuclear.',
    ],
    curiosidade: 'As usinas nucleares funcionam de forma contínua, '
        'e por isso ajudam a manter o fornecimento de energia estável.',
  ),
  Conteudo(
    categoriaId: 4,
    titulo: 'Segurança, rejeitos e clima',
    resumo: 'Vantagens e desafios da energia nuclear.',
    paragrafos: [
      'A segurança de uma usina é pensada em camadas: o combustível fica em pastilhas '
          'de cerâmica, dentro de varetas metálicas, dentro de um vaso de pressão de aço, '
          'dentro de um prédio de contenção de concreto.',
      'Na geração de eletricidade, a usina praticamente não emite CO₂, '
          'o que a torna uma fonte importante em estratégias de baixo carbono.',
      'Por outro lado, existem desafios: o combustível usado precisa ser armazenado com '
          'segurança por muito tempo, e a construção de usinas exige grandes investimentos. '
          'Por isso, o tema é debatido por cientistas, governos e sociedade.',
    ],
    curiosidade: 'O combustível usado fica inicialmente em piscinas de resfriamento '
        'dentro da própria usina, antes de ser armazenado de outras formas.',
  ),

  // ---------------- PESQUISA E PNM ----------------
  Conteudo(
    categoriaId: 5,
    titulo: 'Programa Nuclear da Marinha',
    resumo: 'Tecnologia nacional desde 1979.',
    paragrafos: [
      'O Programa Nuclear da Marinha (PNM) é desenvolvido desde 1979 e é conduzido pelo '
          'Centro Tecnológico da Marinha em São Paulo (CTMSP). Seu foco é dominar as '
          'tecnologias do ciclo do combustível nuclear e desenvolver uma planta de '
          'geração de energia elétrica.',
      'Parte desse trabalho acontece no Centro Experimental Aramar, em Iperó (SP), onde '
          'foram desenvolvidas, por exemplo, ultracentrífugas para o enriquecimento de urânio.',
      'As tecnologias desenvolvidas têm aplicação militar e civil. '
          'Elas fortalecem a inovação, a indústria nacional e a autonomia tecnológica do Brasil.',
    ],
    curiosidade: 'Além da defesa, a Marinha do Brasil tem papel importante no '
        'desenvolvimento científico e tecnológico do país.',
  ),
  Conteudo(
    categoriaId: 5,
    titulo: 'Datação por carbono-14',
    resumo: 'Descobrindo a idade de fósseis.',
    paragrafos: [
      'Os seres vivos absorvem carbono durante a vida, e uma pequena parte dele é o '
          'carbono-14, que é radioativo. Quando o organismo morre, ele deixa de absorver '
          'carbono, e o carbono-14 vai diminuindo em um ritmo conhecido.',
      'Esse ritmo é medido pela meia-vida: a cada cerca de 5.730 anos, '
          'metade do carbono-14 de uma amostra desaparece. Medindo o que sobrou, '
          'os cientistas calculam a idade do material.',
      'A técnica serve para madeira, ossos, tecidos e carvão, e é muito usada em '
          'arqueologia e paleontologia.',
    ],
    curiosidade: 'A datação por carbono-14 é útil para amostras de até algumas dezenas '
        'de milhares de anos.',
  ),
  Conteudo(
    categoriaId: 5,
    titulo: 'Reatores de pesquisa',
    resumo: 'Ciência, saúde e novos materiais.',
    paragrafos: [
      'Reatores de pesquisa são diferentes dos reatores de usinas: eles não geram '
          'eletricidade, mas produzem partículas e radiação para uso em ciência e na produção '
          'de radioisótopos.',
      'No Brasil, um exemplo é o reator IEA-R1, no IPEN, em São Paulo, em operação desde 1957. '
          'Ele apoia pesquisas e a produção de radioisótopos usados na saúde e na indústria.',
      'Também existe o projeto do Reator Multipropósito Brasileiro (RMB), '
          'pensado para ampliar a produção nacional de radioisótopos e apoiar pesquisas.',
    ],
    curiosidade: 'Radioisótopos produzidos em reatores de pesquisa são a base de '
        'muitos exames de medicina nuclear.',
  ),
];

const perguntas = <Pergunta>[
  // ---------------- SAÚDE ----------------
  Pergunta(
    categoriaId: 1,
    enunciado: 'Qual área usa radiofármacos para gerar imagens do funcionamento dos órgãos?',
    opcoes: ['Ultrassonografia', 'Medicina nuclear', 'Endoscopia', 'Fisioterapia'],
    correta: 1,
    explicacao: 'A medicina nuclear detecta a radiação emitida pelos radiofármacos.',
  ),
  Pergunta(
    categoriaId: 1,
    enunciado: 'Por que a dose da radioterapia costuma ser dividida em várias sessões?',
    opcoes: [
      'Para o aparelho esfriar',
      'Para as células saudáveis se recuperarem entre as sessões',
      'Porque a radiação some em um dia',
      'Para o tratamento ficar mais caro',
    ],
    correta: 1,
    explicacao: 'O intervalo dá tempo para o tecido saudável se recuperar.',
  ),
  Pergunta(
    categoriaId: 1,
    enunciado: 'Como seringas e luvas podem ser esterilizadas sem calor?',
    opcoes: ['Radiação ionizante', 'Água gelada', 'Luz de lâmpada comum', 'Ventilação'],
    correta: 0,
    explicacao: 'A radiação elimina micro-organismos sem aquecer o material.',
  ),
  Pergunta(
    categoriaId: 1,
    enunciado: 'Um material esterilizado por radiação fica radioativo?',
    opcoes: ['Sim, para sempre', 'Sim, por uma semana', 'Não', 'Só se for de plástico'],
    correta: 2,
    explicacao: 'A radiação apenas atravessa o material, sem deixá-lo radioativo.',
  ),
  // ---------------- AGRICULTURA ----------------
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
  Pergunta(
    categoriaId: 2,
    enunciado: 'Por que sementes são irradiadas no melhoramento de plantas?',
    opcoes: [
      'Para produzir mutações das quais se escolhem as plantas mais úteis',
      'Para deixá-las brilhantes',
      'Para que não germinem',
      'Para aumentar o peso da casca',
    ],
    correta: 0,
    explicacao: 'As mutações aleatórias permitem selecionar plantas mais resistentes ou produtivas.',
  ),
  // ---------------- INDÚSTRIA ----------------
  Pergunta(
    categoriaId: 3,
    enunciado: 'A gamagrafia industrial serve para:',
    opcoes: ['Pintar peças', 'Inspecionar soldas sem destruí-las', 'Cortar metais', 'Resfriar máquinas'],
    correta: 1,
    explicacao: 'Funciona como um raio-X para peças e estruturas.',
  ),
  Pergunta(
    categoriaId: 3,
    enunciado: 'Como um medidor nuclear determina a espessura de uma chapa?',
    opcoes: [
      'Pela cor da chapa',
      'Pela quantidade de radiação que atravessa o material',
      'Pelo peso da chapa',
      'Pelo barulho que ela faz',
    ],
    correta: 1,
    explicacao: 'Quanto mais espesso o material, menos radiação o atravessa.',
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
    enunciado: 'Qual órgão licencia e fiscaliza o uso de fontes radioativas no Brasil?',
    opcoes: ['CNEN', 'IBGE', 'ANATEL', 'INMETRO'],
    correta: 0,
    explicacao: 'A CNEN é a Comissão Nacional de Energia Nuclear.',
  ),
  // ---------------- ENERGIA ----------------
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
    enunciado: 'O que movimenta a turbina de uma usina nuclear?',
    opcoes: ['Vento', 'Vapor de água', 'Chuva', 'Raios solares'],
    correta: 1,
    explicacao: 'O calor da fissão produz vapor, que gira a turbina ligada ao gerador.',
  ),
  Pergunta(
    categoriaId: 4,
    enunciado: 'Na geração de eletricidade, uma usina nuclear emite praticamente:',
    opcoes: ['Muito CO₂', 'Nenhum CO₂', 'Só metano', 'Fumaça preta'],
    correta: 1,
    explicacao: 'Por isso é considerada uma fonte de baixo carbono.',
  ),
  // ---------------- PESQUISA E PNM ----------------
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
  Pergunta(
    categoriaId: 5,
    enunciado: 'Os reatores de pesquisa servem principalmente para:',
    opcoes: [
      'Abastecer cidades com energia',
      'Pesquisas e produção de radioisótopos',
      'Aquecer casas',
      'Dessalinizar o oceano',
    ],
    correta: 1,
    explicacao: 'Eles não geram eletricidade: apoiam a ciência e produzem radioisótopos.',
  ),
];