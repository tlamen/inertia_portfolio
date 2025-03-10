# Languages
Language.create!(name: "English", acronym: "en", default: true)
Language.create!(name: "Português", acronym: "pt")
Language.create!(name: "Español", acronym: "es")

# Personal Info
phone = PersonalInfo.create!(label: "phone")
PersonalInfoTranslation.create!(personal_info: phone, language: Language.find_by(acronym: "en"), title: "Phone", description: "+61 041 587 0376")
PersonalInfoTranslation.create!(personal_info: phone, language: Language.find_by(acronym: "pt"), title: "Telefone", description: "+55 61 981050880")
PersonalInfoTranslation.create!(personal_info: phone, language: Language.find_by(acronym: "es"), title: "Teléfono", description: "+55 61 981050880")

email = PersonalInfo.create!(label: "email")
PersonalInfoTranslation.create!(personal_info: email, language: Language.find_by(acronym: "en"), title: "Email", description: "bernardolobo3@gmail.com")
PersonalInfoTranslation.create!(personal_info: email, language: Language.find_by(acronym: "pt"), title: "E-mail", description: "bernardolobo3@gmail.com")
PersonalInfoTranslation.create!(personal_info: email, language: Language.find_by(acronym: "es"), title: "Correo electrónico", description: "bernardolobo3@gmail.com")

title = PersonalInfo.create!(label: "title")
PersonalInfoTranslation.create!(personal_info: title, language: Language.find_by(acronym: "en"), title: "Title", description: "Computer Engineer | Full-stack Developer")
PersonalInfoTranslation.create!(personal_info: title, language: Language.find_by(acronym: "pt"), title: "Título", description: "Engenheiro de Computação | Desenvolvedor Full-stack")
PersonalInfoTranslation.create!(personal_info: title, language: Language.find_by(acronym: "es"), title: "Título", description: "Ingeniero Informático | Desarrollador Full-stack")

description = PersonalInfo.create!(label: "description")
PersonalInfoTranslation.create!(personal_info: description, language: Language.find_by(acronym: "en"), title: "Description", description: "Hello World! My name is Bernardo Lobo, I'm a Computer Engineering graduate with a passion for building things that make a difference. Whether it's crafting clean, efficient code or diving into the nitty-gritty of databases and systems, I love solving problems and turning ideas into reality.\nI've got hands-on experience in full-stack development, database optimization, and project management, and I've had the chance to contribute to high-quality software solutions in my previous roles. I'm really excited to work with new technologies and being part of engaged, collaborative teams where I can keep learning and growing.\nRight now, I'm on the lookout for an entry-level IT role where I can contribute to innovative projects, gain international experience, and make a real impact in a dynamic, global environment. If you're working on something cool and need a motivated, detail-oriented team player, let's chat!")
PersonalInfoTranslation.create!(personal_info: description, language: Language.find_by(acronym: "pt"), title: "Descrição", description: "Olá mundo! Eu sou Bernardo Lobo, sou estudante de Engenharia de Computação e amo construir coisas que façam a diferença. Adoro resolver problemas e transformar ideias em realidade a partir de códigos limpos e eficientes, ou mergulhando nos detalhes de bancos de dados e sistemas.\nTenho experiência prática em desenvolvimento full-stack, otimização de banco de dados e gerenciamento de projetos, e tive a oportunidade de contribuir com soluções de software de alta qualidade no passado. Procuro trabalhar com novas tecnologias e fazer parte de equipes engajadas e colaborativas, onde posso continuar aprendendo e crescendo.\nNo momento, estou em busca de uma função de TI de nível básico, onde possa contribuir para projetos inovadores, ganhar experiência internacional e causar um impacto real em um ambiente dinâmico e global. Se você tem algum projeto em mente e precisa de um desenvolvedor motivado e eficiente, entre em contato!")
PersonalInfoTranslation.create!(personal_info: description, language: Language.find_by(acronym: "es"), title: "Descripción", description: "¡Hola mundo! Mi nombre es Bernardo Lobo, soy graduado de Ingeniería Informática y tengo pasión por construir cosas que marquen la diferencia. Me encanta resolver problemas y convertir ideas en realidad, sea creando código limpio y eficiente o sumergiéndome en los detalles de la cuestión de bases de datos y sistemas, .\nTengo experiencia práctica en desarrollo full-stack, optimización de bases de datos y gestión de proyectos, y he tenido la oportunidad de contribuir a soluciones de software de alta calidad en mis funciones anteriores. Espero trabajar con nuevas tecnologías y ser parte de equipos colaborativos y comprometidos donde puedo seguir aprendiendo y creciendo.\nEn este momento, estoy buscando un puesto de TI de nivel básico donde pueda contribuir a proyectos innovadores, obtener experiencia internacional y generar un impacto real en un entorno global dinámico. Si estás trabajando en algo interesante y necesitas un desarollador motivado y eficiente, ¡Contactame!")

# Experiences
experience1 = Experience.create!
ExperienceTranslation.create!(experience: experience1, language: Language.find_by(acronym: "en"), company: "Struct", role: "Executive President, developer and Project Manager", start_date: "Jul 2021", end_date: "Dec 2023", description: "Company formed by undergraduate students focused in developing projects for real life clients to develop students skills. Managed and developed software projects, applying SCRUM and agile methodologies, and achieved great networking, recruiting, and event organization skills, as well as managing resources through microsoft office and google workspace")
ExperienceTranslation.create!(experience: experience1, language: Language.find_by(acronym: "pt"), company: "Struct", role: "Presidente Executivo, Desenvolvedor e Gerente de Projetos", start_date: "Jul 2021", end_date: "Dez 2023", description: "Empresa formada por alunos de graduação com foco no desenvolvimento de projetos para clientes da vida real para desenvolver habilidades dos alunos. Gerenciei e desenvolvi projetos de software, aplicando SCRUM e metodologias ágeis, e obtive ótimas habilidades de networking, recrutamento e organização de eventos, bem como gerenciamento de recursos através do Microsoft Office e Google Workspace.")
ExperienceTranslation.create!(experience: experience1, language: Language.find_by(acronym: "es"), company: "Struct", role: "Presidente Ejecutivo, Desarrollador y Gerente de Proyectos", start_date: "Jul 2021", end_date: "Dic 2023", description: "Empresa formada por estudiantes de pregrado enfocada en desarrollar proyectos para clientes reales para desarrollar habilidades de los estudiantes. Gestioné y desarrollé proyectos de software, aplicando SCRUM y metodologías ágiles, y logré grandes habilidades para networking, reclutamiento y organización de eventos, asi como gestión de recursos a través de microsoft office y google workspace.")

experience2 = Experience.create!
ExperienceTranslation.create!(experience: experience2, language: Language.find_by(acronym: "en"), company: "Switch Dreams", role: "FullStack developer intern", start_date: "Aug 2023", end_date: "Dec 2024", description: "Startup focused on high quality software. Developed full-stack applications using ruby on rails and react js, integrated large APIs and external systems, including payment and mailing systems, and developed great database creation and optimization skills")
ExperienceTranslation.create!(experience: experience2, language: Language.find_by(acronym: "pt"), company: "Switch Dreams", role: "Estagio em Desenvolvimento Full-Stack", start_date: "Ago 2023", end_date: "Dez 2024", description: "Startup focada em software de alta qualidade. Desenvolvi aplicações full-stack usando ruby on rails e react js, integrei grandes APIs e sistemas externos, incluindo sistemas de pagamento e mailing, e desenvolvi habilidades de criação e otimização de banco de dados")
ExperienceTranslation.create!(experience: experience2, language: Language.find_by(acronym: "es"), company: "Switch Dreams", role: "Pasante de Desarrollo Full-stack", start_date: "Ago 2023", end_date: "Dic 2024", description: "Startup enfocada en software de alta calidad. Desarrollé aplicaciones de pila completa utilizando Ruby on Rails y React JS, integré grandes API y sistemas externos, incluidos sistemas de pago y correo, y desarrollé excelentes habilidades de optimización y creación de bases de datos.")

# Projects
project1 = Project.create!(stakeholder: "Switch Dreams", url: "https://eduqbrasil.com.br/", public: false)
ProjectTranslation.create!(project: project1, language: Language.find_by(acronym: "en"), title: "EduQ Brasil", description: "Educational platform for Brazilian schools built in ruby on rails and turbo hotwire. Includes dashboards, spreadsheets automatization, complex and efficient database relations and a trash folder system")
ProjectTranslation.create!(project: project1, language: Language.find_by(acronym: "pt"), title: "EduQ Brasil", description: "Plataforma educativa para escolas brasileiras desenvolvido em ruby on rails com turbo hotwire. Inclui dashboards, integração e automação de planilhas, base de dados complexa e eficiente, e sistema de lixeira")
ProjectTranslation.create!(project: project1, language: Language.find_by(acronym: "es"), title: "EduQ Brasil", description: "Plataforma educativa para escuelas brasilenas desarrollado con ruby on rails y turbo hotwire. Incluye dashboards, integración y automatización de planillas, base de datos compleja y eficiente y sistema de basura")

project2 = Project.create!(stakeholder: "Switch Dreams", url: "https://geedee.com.br/", public: false)
ProjectTranslation.create!(project: project2, language: Language.find_by(acronym: "en"), title: "GeeDee", description: "GeeDee is a technology company in the energy sector that manages consumers and photovoltaic plants. The system was built with ruby on rails and react JS, and includes several API integrations and webhooks to automatize the process of measuring and charging energy consumption")
ProjectTranslation.create!(project: project2, language: Language.find_by(acronym: "pt"), title: "GeeDee", description: "GeeDee é uma empresa tecnológica no setor energético que gerencia consumidores e plantas fotovoltaicas. O sistema foi desenvolvido com ruby on rails e react JS, e inclui varias integrações de API e webhooks para automatizar o processo de medição e cobrança do consumo de energia")
ProjectTranslation.create!(project: project2, language: Language.find_by(acronym: "es"), title: "GeeDee", description: "GeeDee es una empresa tecnológica en el sector energético que gestiona consumidores y plantas fotovoltaicas. El sistema fue desarrollado con ruby on rails y react JS, y incluye varias integraciones de API y webhooks para automatización del proceso de medición y cobranza del consumo de energía")

project3 = Project.create!(stakeholder: "Switch Dreams", url: "https://zenmobi.com.br/", public: false)
ProjectTranslation.create!(project: project3, language: Language.find_by(acronym: "en"), title: "ZenMobi", description: "System for managing post sales operations in custom furniture stores, built using ruby on rails and react JS. It includes graphical dashboards, automated pdf reading and generation, and mailing services")
ProjectTranslation.create!(project: project3, language: Language.find_by(acronym: "pt"), title: "ZenMobi", description: "Sistema para gerenciamento de operações de pós-venda em lojas de móveis planejados, desenvolvido com ruby on rails e react JS. Inclui dashboards gráficos, sistemas de leitura e geração automática de pdfs e serviços de mailing")
ProjectTranslation.create!(project: project3, language: Language.find_by(acronym: "es"), title: "ZenMobi", description: "Sistema para gestionar operaciones de postventa en tiendas de muebles a medida, desarrollado con ruby on rails y react JS. Incluye dashboards gráficos, sistemas de lectura y generación automática de pdfs y servicios de mailing")

project4 = Project.create!(stakeholder: "Switch Dreams", url: "https://scalador.com.br/", public: false)
ProjectTranslation.create!(project: project4, language: Language.find_by(acronym: "en"), title: "Scalador", description: "Platform for connecting freelancers and employers in hospitality services. It was built with ruby on rails and react JS, and includes a check-in system and automated payment services")
ProjectTranslation.create!(project: project4, language: Language.find_by(acronym: "pt"), title: "Scalador", description: "Plataforma para conectar freelancers e empregados em servicos de food&service. Foi desenvolvido com ruby on rails e react JS, e inclui um sistema de check-in e serviços de pagamento automatizados")
ProjectTranslation.create!(project: project4, language: Language.find_by(acronym: "es"), title: "Scalador", description: "Plataforma para conectar freelancers y empleados en servicios de food&service. Fue desarrollado con ruby on rails y react JS, y incluye un sistema de check-in y servicios de pago automatizados")

project5 = Project.create!(stakeholder: "Switch Dreams", url: "https://viaconsultas.com.br/", public: false)
ProjectTranslation.create!(project: project5, language: Language.find_by(acronym: "en"), title: "ViaConsultas", description: "Platform for capturing clients for private consultations with medical clinics. It was built with ruby on rails and react JS, and includes search and appointment management systems")
ProjectTranslation.create!(project: project5, language: Language.find_by(acronym: "pt"), title: "ViaConsultas", description: "Plataforma para captação de clientes para consultas privadas com clínicas médicas. Desenvolvido com ruby on rails e react JS, possui sistemas de busca e gerenciamento de agendamentos")
ProjectTranslation.create!(project: project5, language: Language.find_by(acronym: "es"), title: "ViaConsultas", description: "Plataforma para captura de clientes para consultas privadas con clinicas medicas. Fue desarrollado con ruby on rails y react JS, y incluye sistemas de busqueda y gestión de citas")

# Public Projects
project6 = Project.create!(stakeholder: "Switch Dreams", url: "https://github.com/SwitchDreams/switch-ui", public: true)
ProjectTranslation.create!(project: project6, language: Language.find_by(acronym: "en"), title: "Switch UI", description: "Switch Dreams' UI library built with react JS and tailwind css. I've contributed by improving error loging, documentation and helping in a few components' implementation")
ProjectTranslation.create!(project: project6, language: Language.find_by(acronym: "pt"), title: "Switch UI", description: "Biblioteca UI de Switch Dreams construida com react JS e tailwind css. Participei com melhorias no log de erros, documentação e ajudando na implementação de alguns componentes")
ProjectTranslation.create!(project: project6, language: Language.find_by(acronym: "es"), title: "Switch UI", description: "Biblioteca UI de Switch Dreams construida con react JS y tailwind css. Participé con mejoras en el log de errores, documentación y ayudando en la implementación de algunos componentes")

project7 = Project.create!(stakeholder: "Switch Dreams", url: "https://github.com/SwitchDreams/react-scheduler", public: true)
ProjectTranslation.create!(project: project7, language: Language.find_by(acronym: "en"), title: "React Scheduler", description: "React-Scheduler branch for Switch Dreams. I've contributed by improving Calendar and scheduler components, with new functions and support for more complex integrations")
ProjectTranslation.create!(project: project7, language: Language.find_by(acronym: "pt"), title: "React Scheduler", description: "Branch do React-Scheduler para a Switch Dreams. Aprimorei os componentes de calendário e agendamento, com novas funções e suporte para integrações mais complexas")
ProjectTranslation.create!(project: project7, language: Language.find_by(acronym: "es"), title: "React Scheduler", description: "Branch de React-Scheduler para Switch Dreams. Mejoré los componentes de calendario y agendamiento, con nuevas funciones y soporte para integraciones más complejas")

project8 = Project.create!(stakeholder: "STRUCT", url: "https://struct.unb.br/", public: true)
ProjectTranslation.create!(project: project8, language: Language.find_by(acronym: "en"), title: "STRUCT - website", description: "Participated as consultant and reviewer for STRUCT's new website, using ruby on rails and react JS, while mentoring new members on how to use our frameworks")
ProjectTranslation.create!(project: project8, language: Language.find_by(acronym: "pt"), title: "STRUCT - site institucional", description: "Participei como consultor e revisor no novo site institucional da STRUCT, construído com ruby on rails e react JS, enquanto ensinava novos membros a usar nosso framework")
ProjectTranslation.create!(project: project8, language: Language.find_by(acronym: "es"), title: "STRUCT - sitio institucional", description: "Participé como consultor y revisor del nuevo sítio institucional de STRUCT, desarrollado con ruby on rails y react JS, mientras instruya nuevos miembros a usar nuestro framework")

project9 = Project.create!(stakeholder: "Bernardo M Lobo", url: "", public: true)
ProjectTranslation.create!(project: project9, language: Language.find_by(acronym: "en"), title: "Personal Portfolio", description: "This portfolio you're visiting right now! Built with ruby on rails and react JS through inertia. Built to be a website with dynamic content where I can showcase my previous work")
ProjectTranslation.create!(project: project9, language: Language.find_by(acronym: "pt"), title: "Portfólio Pessoal", description: "Este portfólio que você está visitando agora! Construído com ruby on rails e react JS atraves do inertia. Construído para ser um site com conteúdo dinâmico onde posso mostrar meu trabalho anterior")
ProjectTranslation.create!(project: project9, language: Language.find_by(acronym: "es"), title: "Portafolio Personal", description: "Este portafolio que está visitando ahora! Construido con ruby on rails y react JS a través de inertia. Construido para ser un sitio con contenido dinámico donde puedo mostrar mi trabajo anterior")

skill1 = Skill.create!(rating: 5)
SkillTranslation.create!(skill: skill1, language: Language.find_by(acronym: "en"), title: "Ruby on Rails")
SkillTranslation.create!(skill: skill1, language: Language.find_by(acronym: "pt"), title: "Ruby on Rails")
SkillTranslation.create!(skill: skill1, language: Language.find_by(acronym: "es"), title: "Ruby on Rails")

skill2 = Skill.create!(rating: 4)
SkillTranslation.create!(skill: skill2, language: Language.find_by(acronym: "en"), title: "React JS")
SkillTranslation.create!(skill: skill2, language: Language.find_by(acronym: "pt"), title: "React JS")
SkillTranslation.create!(skill: skill2, language: Language.find_by(acronym: "es"), title: "React JS")

skill3 = Skill.create!(rating: 4)
SkillTranslation.create!(skill: skill3, language: Language.find_by(acronym: "en"), title: "Python")
SkillTranslation.create!(skill: skill3, language: Language.find_by(acronym: "pt"), title: "Python")
SkillTranslation.create!(skill: skill3, language: Language.find_by(acronym: "es"), title: "Python")

skill4 = Skill.create!(rating: 3)
SkillTranslation.create!(skill: skill4, language: Language.find_by(acronym: "en"), title: "C/C++")
SkillTranslation.create!(skill: skill4, language: Language.find_by(acronym: "pt"), title: "C/C++")
SkillTranslation.create!(skill: skill4, language: Language.find_by(acronym: "es"), title: "C/C++")

skill5 = Skill.create!(rating: 4)
SkillTranslation.create!(skill: skill5, language: Language.find_by(acronym: "en"), title: "Rest API")
SkillTranslation.create!(skill: skill5, language: Language.find_by(acronym: "pt"), title: "Rest API")
SkillTranslation.create!(skill: skill5, language: Language.find_by(acronym: "es"), title: "Rest API")

skill6 = Skill.create!(rating: 4)
SkillTranslation.create!(skill: skill6, language: Language.find_by(acronym: "en"), title: "SQL and databases")
SkillTranslation.create!(skill: skill6, language: Language.find_by(acronym: "pt"), title: "SQL e bancos de dados")
SkillTranslation.create!(skill: skill6, language: Language.find_by(acronym: "es"), title: "SQL y bases de datos")

skill7 = Skill.create!(rating: 5)
SkillTranslation.create!(skill: skill7, language: Language.find_by(acronym: "en"), title: "Git")
SkillTranslation.create!(skill: skill7, language: Language.find_by(acronym: "pt"), title: "Git")
SkillTranslation.create!(skill: skill7, language: Language.find_by(acronym: "es"), title: "Git")

skill8 = Skill.create!(rating: 2)
SkillTranslation.create!(skill: skill8, language: Language.find_by(acronym: "en"), title: "Linux Operating systems")
SkillTranslation.create!(skill: skill8, language: Language.find_by(acronym: "pt"), title: "Sistemas Operacionais Linux")
SkillTranslation.create!(skill: skill8, language: Language.find_by(acronym: "es"), title: "Sistemas Operativos Linux")

skill9 = Skill.create!(rating: 1)
SkillTranslation.create!(skill: skill9, language: Language.find_by(acronym: "en"), title: "Docker")
SkillTranslation.create!(skill: skill9, language: Language.find_by(acronym: "pt"), title: "Docker")
SkillTranslation.create!(skill: skill9, language: Language.find_by(acronym: "es"), title: "Docker")

skill10 = Skill.create!(rating: 4)
SkillTranslation.create!(skill: skill10, language: Language.find_by(acronym: "en"), title: "Office 365")
SkillTranslation.create!(skill: skill10, language: Language.find_by(acronym: "pt"), title: "Pacote Office 365")
SkillTranslation.create!(skill: skill10, language: Language.find_by(acronym: "es"), title: "Office 365")

skill11 = Skill.create!(rating: 1)
SkillTranslation.create!(skill: skill11, language: Language.find_by(acronym: "en"), title: "IP network")
SkillTranslation.create!(skill: skill11, language: Language.find_by(acronym: "pt"), title: "Rede IP")
SkillTranslation.create!(skill: skill11, language: Language.find_by(acronym: "es"), title: "Red IP")

skill12 = Skill.create!(rating: 1)
SkillTranslation.create!(skill: skill12, language: Language.find_by(acronym: "en"), title: "Embeeded systems")
SkillTranslation.create!(skill: skill12, language: Language.find_by(acronym: "pt"), title: "Sistemas embarcados")
SkillTranslation.create!(skill: skill12, language: Language.find_by(acronym: "es"), title: "Sistemas embarcados")

User.create!(email: credentials_or_env["EMAIL"], password: credentials_or_env["PASSWORD"], admin: true)