CREATE TABLE fornecedores (
    id SERIAL PRIMARY KEY,
    descricao TEXT NOT NULL,
    categoria VARCHAR(50),
    contato VARCHAR(100) NOT NULL,
    nome_anunciante VARCHAR(80) NOT NULL,
    cpf_cnpj VARCHAR(14) NOT NULL,
    hora_inicio TIME NOT NULL,
    hora_fim TIME NOT NULL,
    data_criacao TIMESTAMPTZ DEFAULT NOW(),
    ativo BOOLEAN DEFAULT TRUE
);


INSERT INTO fornecedores
(descricao, categoria, contato, nome_anunciante, cpf_cnpj, hora_inicio, hora_fim, ativo)
VALUES
('Aulas particulares de lógica de programação', 'Educação', 'prof.lucas@example.com', 'Lucas Andrade', '12345678901', '08:00', '12:00', TRUE),
('Manutenção de notebooks e PCs', 'Tecnologia', '55 11999990001', 'Carla Mendes', '98765432100', '09:00', '18:00', TRUE),
('Design de logos e identidade visual', 'Design', 'studio@criativo.com', 'Estúdio Criativo', '11222333000181', '10:00', '16:00', TRUE),
('Consultoria de marketing digital', 'Marketing', 'mkt@agenciagrowth.com', 'Agência Growth', '22333444000162', '09:30', '17:30', TRUE),
('Serviço de jardinagem residencial', 'Casa e Jardim', '11 98888-0002', 'Pedro Silva', '45678912345', '07:00', '11:00', TRUE),
('Conserto de eletrodomésticos', 'Serviços Gerais', 'consertafacil@example.com', 'Conserta Fácil', '33444555000143', '08:30', '17:00', TRUE),
('Aulas de inglês online', 'Educação', 'teacher.ana@example.com', 'Ana Paula', '32165498700', '18:00', '21:00', TRUE),
('Desenvolvimento de sites simples', 'Tecnologia', 'web@devsimples.com', 'Dev Simples', '44555666000124', '13:00', '18:00', TRUE),
('Fotografia de eventos', 'Eventos', 'fotos@momentos.com', 'Momentos Fotografias', '55666777000105', '14:00', '22:00', TRUE),
('Buffet para festas pequenas', 'Gastronomia', 'contato@festabuffet.com', 'Festa Buffet', '66777888000196', '10:00', '20:00', TRUE),
('Aulas de violão iniciante', 'Educação', 'prof.renato@example.com', 'Renato Dias', '74185296300', '15:00', '19:00', TRUE),
('Passeio e cuidado de pets', 'Pets', 'cuidadodepets@example.com', 'Bruna Costa', '85236974100', '08:00', '12:00', TRUE),
('Edição de vídeo básica', 'Audiovisual', 'edita@videoexpress.com', 'Video Express', '77888999000177', '09:00', '15:00', TRUE),
('Reformas e pequenos reparos', 'Construção', 'tiago.reformas@example.com', 'Tiago Moreira', '96325874100', '08:00', '17:00', TRUE),
('Consultoria financeira pessoal', 'Consultoria', 'financas@planob.com', 'Plano B Consultoria', '88999000000158', '10:00', '18:00', TRUE),
('Criação de artes para redes sociais', 'Design', 'social@midiaarte.com', 'MidiaArte', '90001111000139', '11:00', '19:00', TRUE),
('Aulas de matemática para ENEM', 'Educação', 'prof.marina@example.com', 'Marina Alves', '15975348620', '18:30', '21:30', TRUE),
('Programação de automações com Python', 'Tecnologia', 'py@automatiza.ai', 'Automatiza.AI', '91112222000110', '13:30', '17:30', TRUE),
('Consultoria em UX básica', 'Design', 'ux@experiencia.co', 'Experiência Co', '92223333000101', '09:00', '13:00', TRUE),
('Tradução PT-EN', 'Línguas', 'traducao@fasttranslate.com', 'Fast Translate', '93334444000182', '10:00', '16:00', TRUE),
('Aulas de HTML/CSS para iniciantes', 'Educação', 'curso.front@example.com', 'Curso Front', '24681357901', '19:00', '21:00', TRUE),
('Serviço de babá eventual', 'Serviços Gerais', 'baba@confiavel.com', 'Baba Confiável', '94445555000163', '08:00', '14:00', TRUE),
('Criação de chatbots simples', 'Tecnologia', 'bot@dialogos.tech', 'Diálogos Tech', '95556666000144', '10:00', '18:00', TRUE),
('Consultoria LGPD básica', 'Consultoria', 'lgpd@privacycare.com', 'Privacy Care', '96667777000125', '09:00', '12:00', TRUE),
('Assessoria de imprensa', 'Comunicação', 'press@midiarelacoes.com', 'Mídia Relações', '97778888000106', '10:00', '17:00', TRUE),
('Personal trainer iniciante', 'Saúde', 'treino@fitstart.com', 'Fit Start', '36925814702', '06:00', '10:00', TRUE),
('Manutenção de redes domésticas', 'Tecnologia', 'rede@netfix.com', 'NetFix', '98889999000187', '09:00', '18:00', TRUE),
('Ilustração para livros infantis', 'Design', 'ilustra@colorarte.com', 'ColorArte', '99900011000168', '11:00', '17:00', TRUE),
('Diagramação de e-books', 'Editorial', 'ebook@diagramax.com', 'Diagramax', '00011122000149', '13:00', '19:00', TRUE),
('Consultoria para TCC', 'Educação', 'tcc@orientaedu.com', 'Orienta EDU', '11122233000120', '14:00', '20:00', TRUE);

INSERT INTO fornecedores
(descricao, categoria, contato, nome_anunciante, cpf_cnpj, hora_inicio, hora_fim, ativo)
VALUES
-- 1
('Aulas de redação para vestibular', 'Educação', 'redacao@escrevemais.com', 'Clara Menezes', '12312312311', '18:00', '21:00', TRUE),
-- 2
('Consultoria em gestão de redes sociais', 'Marketing', 'gestao@socialup.com', 'Social Up', '23423423422', '09:00', '17:00', TRUE),
-- 3
('Serviço de manicure a domicílio', 'Beleza', 'manicure@belezaemcasa.com', 'Fernanda Lopes', '34534534533', '14:00', '20:00', TRUE),
-- 4
('Treinamento funcional em grupo', 'Esporte', 'treino@funcionalfit.com', 'Funcional Fit', '45645645644', '07:00', '09:00', TRUE),
-- 5
('Conserto de bicicletas', 'Serviços Gerais', 'bike@reparabike.com', 'Repara Bike', '56756756755', '10:00', '18:00', TRUE),
-- 6
('Serviço de delivery de marmitas fitness', 'Gastronomia', 'marmita@fitfood.com', 'Fit Food', '67867867866', '09:00', '15:00', TRUE),
-- 7
('Consultoria em investimentos básicos', 'Consultoria', 'invest@finup.com', 'FinUp', '78978978977', '10:00', '18:00', TRUE),
-- 8
('Revisão de textos acadêmicos', 'Editorial', 'revisao@textual.com', 'Textual Revisões', '89089089088', '13:00', '19:00', TRUE),
-- 9
('Aulas de dança de salão', 'Educação', 'danca@passoslivres.com', 'Passos Livres', '90190190199', '19:00', '22:00', TRUE),
-- 10
('Criação de convites digitais para festas', 'Design', 'convite@artefest.com', 'Arte Fest', '11211211210', '10:00', '16:00', TRUE),
-- 11
('Montagem e instalação de móveis planejados', 'Construção', 'moveis@montaexpress.com', 'Monta Express', '22322322321', '08:00', '17:00', TRUE),
-- 12
('Aulas de costura iniciante', 'Moda', 'costura@oficinadaslinhas.com', 'Oficina das Linhas', '33433433432', '15:00', '19:00', TRUE),
-- 13
('Serviço de personal stylist', 'Moda', 'stylist@lookideal.com', 'Look Ideal', '44544544543', '11:00', '17:00', TRUE),
-- 14
('Consultoria em organização de ambientes', 'Consultoria', 'organiza@harmonia.com', 'Harmonia Consultoria', '55655655654', '09:00', '15:00', TRUE),
-- 15
('Serviço de passeador de cães', 'Pets', 'passeio@doghappy.com', 'Dog Happy', '66766766765', '07:00', '11:00', TRUE),
-- 16
('Serviço de buffet infantil', 'Eventos', 'buffet@alegriakids.com', 'Alegria Kids', '77877877876', '11:00', '19:00', TRUE),
-- 17
('Produção musical básica', 'Audiovisual', 'studio@beatmaker.com', 'Beat Maker Studio', '88988988987', '13:00', '20:00', TRUE),
-- 18
('Criação de blogs pessoais', 'Tecnologia', 'blog@webfast.com', 'WebFast', '99099099098', '10:00', '17:00', TRUE),
-- 19
('Serviço de transporte escolar', 'Transporte', 'escolar@buskids.com', 'Bus Kids', '10110110119', '06:00', '12:00', TRUE),
-- 20
('Aulas de culinária básica', 'Educação', 'culinaria@chefaprenda.com', 'Chef Aprenda', '12112112121', '14:00', '18:00', TRUE),
-- 21
('Atendimento psicológico online', 'Saúde', 'psico@menteviva.com', 'Mente Viva', '13113113131', '09:00', '20:00', TRUE),
-- 22
('Tradução de artigos acadêmicos', 'Línguas', 'traducao@academica.com', 'Academica Traduções', '14114114141', '10:00', '16:00', TRUE),
-- 23
('Manutenção de ar-condicionado', 'Serviços Gerais', 'clima@gelartech.com', 'GelarTech', '15115115151', '08:00', '18:00', TRUE),
-- 24
('Treinamento de corrida em grupo', 'Esporte', 'corrida@vemcorrer.com', 'Vem Correr', '16116116161', '06:00', '09:00', TRUE),
-- 25
('Consultoria em marketing de conteúdo', 'Marketing', 'conteudo@inspire.com', 'Inspire Marketing', '17117117171', '09:00', '17:00', TRUE),
-- 26
('Aulas de espanhol para iniciantes', 'Educação', 'idioma@holaespanol.com', 'Hola Español', '18118118181', '19:00', '21:00', TRUE),
-- 27
('Decoração de festas infantis', 'Eventos', 'decor@sonhoinfantil.com', 'Sonho Infantil', '19119119191', '10:00', '20:00', TRUE),
-- 28
('Serviço de cabeleireiro em domicílio', 'Beleza', 'hair@cortedom.com', 'Corte Dom', '20220220202', '09:00', '18:00', TRUE),
-- 29
('Aulas de fotografia básica', 'Educação', 'foto@aprendefoto.com', 'Aprende Foto', '21221221212', '15:00', '19:00', TRUE),
-- 30
('Serviço de consultoria jurídica inicial', 'Consultoria', 'juridico@orienta.com', 'Orienta Jurídico', '22222222222', '10:00', '16:00', TRUE);


INSERT INTO fornecedores
(descricao, categoria, contato, nome_anunciante, cpf_cnpj, hora_inicio, hora_fim, ativo)
VALUES
-- 31
('Consultoria em gestão de carreira', 'Consultoria', 'carreira@profuturo.com', 'Pro Futuro', '23232323232', '09:00', '17:00', TRUE),
-- 32
('Aulas de piano iniciante', 'Educação', 'piano@musicaliza.com', 'Musicaliza', '24242424242', '15:00', '19:00', TRUE),
-- 33
('Serviço de fisioterapia domiciliar', 'Saúde', 'fisio@reabilita.com', 'Reabilita Saúde', '25252525252', '08:00', '12:00', TRUE),
-- 34
('Consultoria em e-commerce', 'Marketing', 'ecom@vendasmais.com', 'Vendas Mais', '26262626262', '10:00', '18:00', TRUE),
-- 35
('Aulas de reforço em química', 'Educação', 'quimica@aprendefacil.com', 'Aprende Fácil', '27272727272', '18:00', '21:00', TRUE),
-- 36
('Serviço de lavagem ecológica de carros', 'Serviços Gerais', 'eco@lavagemverde.com', 'Lavagem Verde', '28282828282', '09:00', '17:00', TRUE),
-- 37
('Criação de caricaturas digitais', 'Design', 'caricatura@artfun.com', 'ArtFun', '29292929292', '13:00', '19:00', TRUE),
-- 38
('Organização de eventos corporativos', 'Eventos', 'corp@eventpro.com', 'Event Pro', '30303030303', '09:00', '18:00', TRUE),
-- 39
('Aulas de yoga online', 'Saúde', 'yoga@zenmove.com', 'Zen Move', '31313131313', '07:00', '09:00', TRUE),
-- 40
('Serviço de DJ para festas', 'Eventos', 'dj@somtotal.com', 'Som Total', '32323232323', '20:00', '02:00', TRUE),
-- 41
('Assessoria para concursos públicos', 'Educação', 'concursos@aprovamais.com', 'Aprova Mais', '33333333333', '14:00', '20:00', TRUE),
-- 42
('Aulas de desenho artístico', 'Educação', 'desenho@criart.com', 'Criart Escola', '34343434343', '16:00', '20:00', TRUE),
-- 43
('Serviço de buffet vegetariano', 'Gastronomia', 'buffet@vegdelicia.com', 'Veg Delícia', '35353535353', '11:00', '19:00', TRUE),
-- 44
('Consultoria em SEO básico', 'Marketing', 'seo@otimizasite.com', 'Otimiza Site', '36363636363', '09:00', '17:00', TRUE),
-- 45
('Serviço de encanador emergencial', 'Construção', 'agua@encanadorja.com', 'Encanador Já', '37373737373', '00:00', '23:59', TRUE),
-- 46
('Aulas de francês para iniciantes', 'Línguas', 'frances@bonjour.com', 'Bonjour Idiomas', '38383838383', '19:00', '21:00', TRUE),
-- 47
('Consultoria para pequenos negócios', 'Consultoria', 'negocios@startuphelp.com', 'Startup Help', '39393939393', '10:00', '18:00', TRUE),
-- 48
('Serviço de buffet de bolos artesanais', 'Gastronomia', 'bolos@deliciacaseira.com', 'Delícia Caseira', '40404040404', '09:00', '17:00', TRUE),
-- 49
('Aulas de canto iniciante', 'Educação', 'canto@vozativa.com', 'Voz Ativa', '41414141414', '17:00', '20:00', TRUE),
-- 50
('Serviço de segurança para eventos', 'Eventos', 'seguranca@protegefest.com', 'Protege Fest', '42424242424', '18:00', '02:00', TRUE),
-- 51
('Serviço de marcenaria sob medida', 'Construção', 'marcenaria@woodart.com', 'Wood Art', '43434343434', '08:00', '17:00', TRUE),
-- 52
('Consultoria de branding pessoal', 'Marketing', 'branding@imagemtop.com', 'Imagem Top', '44444444444', '09:00', '15:00', TRUE),
-- 53
('Aulas de Excel básico', 'Educação', 'excel@planilhasfacil.com', 'Planilhas Fácil', '45454545454', '18:00', '20:00', TRUE),
-- 54
('Serviço de guia turístico local', 'Turismo', 'guia@descubracidade.com', 'Descubra Cidade', '46464646464', '08:00', '18:00', TRUE),
-- 55
('Treinamento de musculação personalizado', 'Esporte', 'musculacao@fitmax.com', 'Fit Max', '47474747474', '07:00', '11:00', TRUE),
-- 56
('Serviço de manicure e pedicure express', 'Beleza', 'unhas@expressnails.com', 'Express Nails', '48484848484', '13:00', '19:00', TRUE),
-- 57
('Aulas de oratória para iniciantes', 'Educação', 'oratoria@falebem.com', 'Fale Bem', '49494949494', '18:00', '21:00', TRUE),
-- 58
('Serviço de confeitaria para casamentos', 'Gastronomia', 'confeitaria@docemomento.com', 'Doce Momento', '50505050505', '10:00', '18:00', TRUE),
-- 59
('Manutenção preventiva de computadores', 'Tecnologia', 'manutencao@pcsafe.com', 'PC Safe', '51515151515', '09:00', '17:00', TRUE),
-- 60
('Aulas de artes marciais mistas', 'Esporte', 'mma@fightclub.com', 'Fight Club', '52525252525', '19:00', '22:00', TRUE),
-- 61
('Serviço de contabilidade básica', 'Consultoria', 'contabil@contafacil.com', 'Conta Fácil', '53535353535', '09:00', '17:00', TRUE),
-- 62
('Serviço de passeador de gatos', 'Pets', 'gatos@meupetfeliz.com', 'Meu Pet Feliz', '54545454545', '08:00', '12:00', TRUE),
-- 63
('Aulas de fotografia avançada', 'Educação', 'foto@proclick.com', 'ProClick', '55555555555', '15:00', '19:00', TRUE),
-- 64
('Serviço de transporte executivo', 'Transporte', 'executivo@blackcar.com', 'Black Car', '56565656565', '06:00', '22:00', TRUE),
-- 65
('Criação de podcasts', 'Audiovisual', 'podcast@vozmedia.com', 'Voz Media', '57575757575', '10:00', '18:00', TRUE),
-- 66
('Serviço de diarista residencial', 'Serviços Gerais', 'faxina@limpezarapida.com', 'Limpeza Rápida', '58585858585', '08:00', '16:00', TRUE),
-- 67
('Aulas de marketing digital prático', 'Educação', 'mkt@aprendamais.com', 'Aprenda Mais', '59595959595', '19:00', '21:00', TRUE),
-- 68
('Serviço de cabelereiro infantil', 'Beleza', 'corte@infantilhair.com', 'Infantil Hair', '60606060606', '09:00', '18:00', TRUE),
-- 69
('Produção de vídeos institucionais', 'Audiovisual', 'video@corpmedia.com', 'Corp Media', '61616161616', '09:00', '17:00', TRUE),
-- 70
('Consultoria em finanças empresariais', 'Consultoria', 'financeiro@bizup.com', 'Biz Up', '62626262626', '10:00', '18:00', TRUE),
-- 71
('Serviço de entregas rápidas', 'Transporte', 'entregas@rapida.com', 'Rápida Entregas', '63636363636', '08:00', '20:00', TRUE),
-- 72
('Aulas de história para reforço escolar', 'Educação', 'historia@ensinamais.com', 'Ensina Mais', '64646464646', '18:00', '21:00', TRUE),
-- 73
('Serviço de consultoria ambiental', 'Consultoria', 'ambiental@ecohelp.com', 'Eco Help', '65656565656', '09:00', '15:00', TRUE),
-- 74
('Treinamento de pilates em grupo', 'Saúde', 'pilates@equilibrio.com', 'Equilíbrio Pilates', '66666666666', '07:00', '11:00', TRUE),
-- 75
('Serviço de buffet de pizzas artesanais', 'Gastronomia', 'pizza@fornapleno.com', 'Forno a Pleno', '67676767676', '18:00', '23:00', TRUE),
-- 76
('Consultoria em exportação de produtos', 'Consultoria', 'exporta@worldtrade.com', 'World Trade', '68686868686', '09:00', '17:00', TRUE),
-- 77
('Aulas de canto coral', 'Educação', 'coral@vozesunidas.com', 'Vozes Unidas', '69696969696', '17:00', '20:00', TRUE),
-- 78
('Serviço de fotógrafos newborn', 'Eventos', 'newborn@momentos.com', 'Momentos Studio', '70707070707', '09:00', '15:00', TRUE),
-- 79
('Serviço de corte de grama residencial', 'Casa e Jardim', 'grama@verdevida.com', 'Verde Vida', '71717171717', '07:00', '11:00', TRUE),
-- 80
('Consultoria para startups iniciais', 'Consultoria', 'startup@lancheco.com', 'Launch Eco', '72727272727', '10:00', '16:00', TRUE),
-- 81
('Aulas de teatro amador', 'Educação', 'teatro@expressarte.com', 'ExpressArte', '73737373737', '19:00', '21:00', TRUE),
-- 82
('Serviço de massagem relaxante', 'Saúde', 'massagem@relaxbem.com', 'Relax Bem', '74747474747', '09:00', '20:00', TRUE),
-- 83
('Consultoria em TI para pequenas empresas', 'Tecnologia', 'ti@suportecorp.com', 'Suporte Corp', '75757575757', '09:00', '18:00', TRUE),
-- 84
('Serviço de cuidador de idosos', 'Saúde', 'cuidador@vidaplus.com', 'Vida Plus', '76767676767', '08:00', '18:00', TRUE),
-- 85
('Aulas de robótica para crianças', 'Educação', 'robotica@inovakids.com', 'Inova Kids', '78787878787', '14:00', '18:00', TRUE),
-- 86
('Serviço de buffet de comida japonesa', 'Gastronomia', 'japa@orientalfood.com', 'Oriental Food', '79797979797', '18:00', '23:00', TRUE),
-- 87
('Treinamento funcional ao ar livre', 'Esporte', 'funcional@openfit.com', 'Open Fit', '80808080808', '07:00', '09:00', TRUE),
-- 88
('Serviço de guia para trilhas ecológicas', 'Turismo', 'trilhas@aventuraverde.com', 'Aventura Verde', '81818181818', '08:00', '14:00', TRUE),
-- 89
('Aulas de programação mobile', 'Educação', 'mobile@devsmart.com', 'Dev Smart', '82828282828', '19:00', '21:00', TRUE),
-- 90
('Serviço de motorista particular', 'Transporte', 'motorista@vipdrive.com', 'Vip Drive', '83838383838', '06:00', '22:00', TRUE),
-- 91
('Consultoria em análise de dados', 'Tecnologia', 'dados@insightdata.com', 'Insight Data', '84848484848', '09:00', '18:00', TRUE),
-- 92
('Aulas de costura avançada', 'Moda', 'costura@altaescola.com', 'Alta Escola de Costura', '85858585858', '15:00', '19:00', TRUE),
-- 93
('Serviço de buffet para casamentos', 'Eventos', 'casamento@grandbuffet.com', 'Grand Buffet', '86868686868', '11:00', '23:00', TRUE),
-- 94
('Consultoria em segurança digital', 'Tecnologia', 'seguranca@cybercare.com', 'Cyber Care', '87878787878', '09:00', '18:00', TRUE),
-- 95
('Serviço de higienização de estofados', 'Serviços Gerais', 'sofa@cleanhouse.com', 'Clean House', '88888888888', '08:00', '16:00', TRUE),
-- 96
('Aulas de escrita criativa', 'Educação', 'escrita@palavraslivres.com', 'Palavras Livres', '89898989898', '18:00', '21:00', TRUE),
-- 97
('Serviço de manicure artística', 'Beleza', 'nail@artnails.com', 'Art Nails', '90909090909', '13:00', '19:00', TRUE),
-- 98
('Treinamento de surf para iniciantes', 'Esporte', 'surf@ondasvivas.com', 'Ondas Vivas', '91919191919', '07:00', '11:00', TRUE),
-- 99
('Serviço de buffet vegano', 'Gastronomia', 'vegano@greenbuffet.com', 'Green Buffet', '92929292929', '11:00', '20:00', TRUE),
-- 100
('Consultoria em inteligência artificial', 'Tecnologia', 'ia@futuremind.com', 'Future Mind', '93939393939', '10:00', '18:00', TRUE);

