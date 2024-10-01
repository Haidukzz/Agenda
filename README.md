![image](https://github.com/user-attachments/assets/3b773454-1663-4512-b0e2-4e6fa3535854)📅 Aplicativo de Agenda Pessoal
Este é um aplicativo de agenda pessoal desenvolvido em Flutter, permitindo ao usuário adicionar, visualizar e gerenciar compromissos diários e futuros, utilizando uma interface intuitiva e moderna. A paleta de cores e o layout foram pensados para proporcionar uma boa experiência visual e funcionalidade eficiente.

🚀 Tecnologias Utilizadas
Flutter
O aplicativo foi desenvolvido utilizando Flutter, um framework de desenvolvimento de aplicativos móveis com foco em performance e design moderno. O Flutter possibilita criar interfaces elegantes e responsivas, além de permitir a execução em múltiplas plataformas (Android, iOS, etc.).

Packages Utilizados
intl - Utilizado para a formatação de datas e horas de maneira consistente em todo o aplicativo.
table_calendar - Utilizado para exibir um calendário interativo, que facilita a visualização e organização dos compromissos.
dart
- Biblioteca padrão do Dart para uso de temporizadores, que pode ser implementada para funcionalidades como cronômetros e timers no aplicativo.
  
🎨 Paleta de Cores
A paleta de cores escolhida proporciona uma experiência visual agradável, com transições suaves entre diferentes tons de azul e verde, criando um ambiente calmo e funcional. A seguir estão os principais códigos de cores utilizados:

#1693A5 - Utilizada como cor principal, predominante na AppBar e em outras áreas de destaque.
#7ECECA - Usada como cor secundária, complementando a cor principal e criando uma harmonia entre os elementos visuais.
#C7EDE8 - Aplicada como uma cor de fundo em áreas menos proeminentes, ajudando a criar contraste com os elementos principais.
Essas cores foram escolhidas para garantir que o aplicativo tenha uma aparência profissional e moderna, mantendo a acessibilidade visual e um design coerente entre as telas.

✨ Funcionalidades
1. Sistema de Login e Registro
Tela inicial de login, onde os usuários podem inserir suas credenciais para acessar a agenda.
Sistema de registro para novos usuários, mantendo a consistência visual com a tela de login.
2. Gerenciamento de Compromissos
O usuário pode adicionar compromissos com data, hora e descrição. Há também a possibilidade de escolher uma categoria (ex: Médico, Estudo, etc.).
Os compromissos são organizados em três categorias:
Compromissos de Hoje: Exibe os compromissos do dia atual.
Compromissos Futuros: Exibe compromissos que ocorrerão a partir de amanhã.
Compromissos Atrasados: Exibe compromissos que não foram concluídos no tempo devido.
Visualização de compromissos em formato de lista e calendário.
3. Calendário Interativo
Através do widget TableCalendar, o usuário pode visualizar os compromissos organizados por data, permitindo uma navegação fácil entre diferentes dias e semanas.
Cada data com compromissos é marcada no calendário, facilitando a identificação de dias ocupados.
4. Timer/Cronômetro
Implementação de temporizadores para controle de tempo, como cronômetro Pomodoro, permitindo que o usuário acompanhe o tempo dedicado a atividades específicas.
6. Drawer (Menu Lateral)
Um menu lateral personalizável, onde o usuário pode acessar rapidamente opções como "Hoje", "Futuros", "Atrasados", "Configurações" e "Perfil".
Visual intuitivo com ícones e contador de compromissos para cada seção.
7. Navegação Fácil
Navegação simples e fluida entre as telas de login, registro, compromissos, configurações e perfil.

🔧 Configuração do Projeto
Clone o repositório:

bash
Copiar código
git clone https://github.com/seu-repositorio/aplicativo-agenda.git
Instale as dependências do Flutter:

bash
Copiar código
flutter pub get
Execute o aplicativo:

bash
Copiar código
flutter run

📷 Capturas de Tela
Tela de Login: Uma tela inicial com uma interface de usuário limpa e um fundo em degradê.
![image](https://github.com/user-attachments/assets/ee7aff90-4dcb-4d82-8df4-065378843a07)
![image](https://github.com/user-attachments/assets/d6f01173-2778-4c89-9604-18d29a8df449)

Tela Principal (Caixa de Entrada): Exibe os compromissos organizados por hoje, futuros e atrasados.
![image](https://github.com/user-attachments/assets/462d93ab-4192-4a4f-a2d5-e6bc98ecf4ff)
![image](https://github.com/user-attachments/assets/a9eb0b1e-2387-4845-83c7-916b0786bee1)
![image](https://github.com/user-attachments/assets/c3ec2f19-6a58-4683-9fea-a5fddd8a07cb)

Calendário de Compromissos: Permite ao usuário visualizar compromissos futuros em um calendário interativo.
![image](https://github.com/user-attachments/assets/b1f41cfe-3707-4559-ba70-5300ef4464cf)

Timer de pomordoro: Permite o usuário determinar um tempo para realizar suas tarefas através de um cronômetro.
![image](https://github.com/user-attachments/assets/1adb071f-632a-4969-976e-b698d17d4beb)

Configurações: Uma tela para configurar o perfil e mudar algumas informações do app.
![image](https://github.com/user-attachments/assets/eb634d6c-8cc2-4dba-92d4-062a0e91d77c)

Com essas funcionalidades, o aplicativo de agenda pessoal é uma solução prática e eficiente para ajudar os usuários a organizarem suas tarefas e compromissos de maneira simples e intuitiva.

Se você tiver alguma dúvida ou sugestão, sinta-se à vontade para contribuir com o projeto!

