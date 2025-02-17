# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Language.create!(name: "English", acronym: "en", default: true)
Language.create!(name: "Português", acronym: "pt")
Language.create!(name: "Español", acronym: "es")

phone = PersonalInfo.create!(label: "phone")
PersonalInfoTranslation.create!(personal_info: phone, language: Language.find_by(acronym: "en"), title: "Phone", description: "+61 041 587 0376 | +55 61 981050880")
PersonalInfoTranslation.create!(personal_info: phone, language: Language.find_by(acronym: "pt"), title: "Telefone", description: "+61 041 587 0376 | +55 61 981050880")
PersonalInfoTranslation.create!(personal_info: phone, language: Language.find_by(acronym: "es"), title: "Teléfono", description: "+61 041 587 0376 | +55 61 981050880")

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
