import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';
import 'dart:async'; // Para o temporizador

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
      theme: ThemeData(
        primaryColor: Color(0xFF1693A5), // Cor Primária
        fontFamily: 'Roboto',
      ),
    );
  }
}

// Tela de Login
class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF1693A5),
              Color(0xFF7ECECA),
              Color(0xFFC7EDE8),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 100),
              const Text(
                'Bem-vindo de volta!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Faça login para continuar',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 50),
              _buildTextField(Icons.email, 'Email', false),
              const SizedBox(height: 20),
              _buildTextField(Icons.lock, 'Senha', true),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: () {
                      // Lógica para esqueci minha senha
                    },
                    child: const Text(
                      'Esqueceu sua senha?',
                      style: TextStyle(color: Colors.white70),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              _buildLoginButton(context),
              const SizedBox(height: 30),
              _buildSignUpOption(context),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(IconData icon, String hint, bool obscureText) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: TextField(
        obscureText: obscureText,
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
          prefixIcon: Icon(icon, color: Colors.white),
          hintText: hint,
          hintStyle: const TextStyle(color: Colors.white70),
          filled: true,
          fillColor: Colors.white.withOpacity(0.2),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(color: Colors.white, width: 2),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(color: Colors.white70, width: 1),
          ),
        ),
      ),
    );
  }

  Widget _buildLoginButton(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navega para a página da caixa de entrada após login
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomeScreen()),
        );
      },
      child: Container(
        height: 50,
        width: 200,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Color(0xFF1693A5), Color(0xFF7ECECA)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              offset: const Offset(0, 4),
              blurRadius: 10,
            ),
          ],
        ),
        child: const Center(
          child: Text(
            'Login',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSignUpOption(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navega para a tela de cadastro de novo usuário
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SignUpScreen()),
        );
      },
      child: const Text(
        'Ainda não tem uma conta? Cadastre-se',
        style: TextStyle(color: Colors.white70),
      ),
    );
  }
}

// Tela de Registro de Novo Usuário
class SignUpScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF1693A5),
              Color(0xFF7ECECA),
              Color(0xFFC7EDE8),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 100),
              const Text(
                'Crie sua Conta',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Cadastre-se para começar!',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 50),
              _buildTextField(Icons.person, 'Nome', false),
              const SizedBox(height: 20),
              _buildTextField(Icons.email, 'Email', false),
              const SizedBox(height: 20),
              _buildTextField(Icons.lock, 'Senha', true),
              const SizedBox(height: 40),
              _buildSignUpButton(context),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(IconData icon, String hint, bool obscureText) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: TextField(
        obscureText: obscureText,
        style: const TextStyle(color: Colors.white),
        decoration: InputDecoration(
          prefixIcon: Icon(icon, color: Colors.white),
          hintText: hint,
          hintStyle: const TextStyle(color: Colors.white70),
          filled: true,
          fillColor: Colors.white.withOpacity(0.2),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(color: Colors.white, width: 2),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: const BorderSide(color: Colors.white70, width: 1),
          ),
        ),
      ),
    );
  }

  Widget _buildSignUpButton(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Após registro, redireciona para a Caixa de Entrada (ou faça lógica de registro)
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomeScreen()),
        );
      },
      child: Container(
        height: 50,
        width: 200,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Color(0xFF1693A5), Color(0xFF7ECECA)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.3),
              offset: const Offset(0, 4),
              blurRadius: 10,
            ),
          ],
        ),
        child: const Center(
          child: Text(
            'Registrar-se',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

// Caixa de Entrada (Página Principal após login)
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, dynamic>> tasks = [];
  DateTime _selectedDay = DateTime.now();
  DateTime _focusedDay = DateTime.now();

  // Lista de categorias e seus ícones
  final List<Map<String, dynamic>> categories = [
    {'name': 'Médico', 'icon': Icons.local_hospital},
    {'name': 'Reunião', 'icon': Icons.event_note},
    {'name': 'Aniversário', 'icon': Icons.cake},
    {'name': 'Trabalho', 'icon': Icons.work},
    {'name': 'Estudo', 'icon': Icons.school},
  ];

  String? _selectedCategory;

  void _addTask() {
    TextEditingController taskController = TextEditingController();
    DateTime? selectedDate;
    TimeOfDay? selectedTime;

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          title: const Text('Adicionar novo evento'),
          content: StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  TextField(
                    controller: taskController,
                    decoration: const InputDecoration(
                      hintText: 'Descrição do compromisso',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.text_fields),
                    ),
                  ),
                  const SizedBox(height: 10),
                  DropdownButton<String>(
                    value: _selectedCategory,
                    hint: const Text('Selecione a Categoria'),
                    isExpanded: true,
                    items: categories.map((category) {
                      return DropdownMenuItem<String>(
                        value: category['name'],
                        child: Row(
                          children: [
                            Icon(category['icon']),
                            const SizedBox(width: 10),
                            Text(category['name']),
                          ],
                        ),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        _selectedCategory = value;
                      });
                    },
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () async {
                      selectedDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2100),
                      );
                      setState(() {});
                    },
                    child: Text(
                      selectedDate == null
                          ? 'Escolher Data'
                          : 'Data: ${DateFormat('dd/MM/yyyy').format(selectedDate!)}',
                    ),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () async {
                      selectedTime = await showTimePicker(
                        context: context,
                        initialTime: TimeOfDay.now(),
                      );
                      setState(() {});
                    },
                    child: Text(
                      selectedTime == null
                          ? 'Escolher Hora'
                          : 'Hora: ${selectedTime!.format(context)}',
                    ),
                  ),
                ],
              );
            },
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Cancelar'),
            ),
            TextButton(
              onPressed: () {
                if (taskController.text.isNotEmpty &&
                    selectedDate != null &&
                    selectedTime != null &&
                    _selectedCategory != null) {
                  DateTime fullDate = DateTime(
                    selectedDate!.year,
                    selectedDate!.month,
                    selectedDate!.day,
                    selectedTime!.hour,
                    selectedTime!.minute,
                  );
                  setState(() {
                    tasks.add({
                      'description': taskController.text,
                      'date': fullDate,
                      'category': _selectedCategory,
                      'isCompleted': false, // Inicialmente, não concluído
                    });
                  });
                  Navigator.pop(context);
                }
              },
              child: const Text('Adicionar'),
            ),
          ],
        );
      },
    );
  }

  @override
Widget build(BuildContext context) {
  DateTime today = DateTime.now();
  DateTime tomorrow = DateTime(today.year, today.month, today.day + 1); // Próximo dia (amanhã)

  // Função para normalizar a data (remover horas, minutos e segundos)
  DateTime normalizeDate(DateTime date) {
    return DateTime(date.year, date.month, date.day);
  }

  // Compromissos de hoje
  List<Map<String, dynamic>> todayTasks = tasks.where((task) {
    DateTime taskDate = normalizeDate(task['date']);
    return taskDate == normalizeDate(today); // Compara apenas a data
  }).toList();

  // Compromissos futuros (qualquer data após o dia de hoje)
  List<Map<String, dynamic>> futureTasks = tasks.where((task) {
    DateTime taskDate = normalizeDate(task['date']);
    return taskDate.isAfter(normalizeDate(today)); // Inclui todos os compromissos futuros
  }).toList();

    List<Map<String, dynamic>> overdueTasks = tasks.where((task) {
      return task['date'].isBefore(today) && !task['isCompleted'];
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Caixa de Entrada',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xFF1693A5),
        centerTitle: true,
        elevation: 1,
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.menu, color: Colors.white),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
      ),
      drawer: Drawer(
  child: Container(
    decoration: const BoxDecoration(
      gradient: LinearGradient(
        colors: [
          Color(0xFF1693A5),
          Color(0xFF7ECECA),
          Color(0xFFC7EDE8),
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ),
    ),
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        ListTile(
          leading: Icon(Icons.inbox, color: Colors.white),
          title: const Text(
            'Hoje',
            style: TextStyle(color: Colors.white),
          ),
          trailing: Text(
            todayTasks.length.toString(),
            style: TextStyle(color: Colors.white),
          ),
        ),
        ListTile(
          leading: Icon(Icons.calendar_today, color: Colors.white),
          title: const Text(
            'Futuros',
            style: TextStyle(color: Colors.white),
          ),
          trailing: Text(
            futureTasks.length.toString(),
            style: TextStyle(color: Colors.white),
          ),
        ),
        ListTile(
          leading: Icon(Icons.warning, color: Colors.white),
          title: const Text(
            'Atrasados',
            style: TextStyle(color: Colors.white),
          ),
          trailing: Text(
            overdueTasks.length.toString(),
            style: TextStyle(color: Colors.white),
          ),
        ),
        Divider(color: Colors.white54),
        ListTile(
          leading: Icon(Icons.settings, color: Colors.white),
          title: const Text(
            'Configurações',
            style: TextStyle(color: Colors.white),
          ),
          onTap: () {
            // Lógica para navegar para a página de Configurações
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SettingsScreen()),
            );
          },
        ),
        ListTile(
          leading: Icon(Icons.account_circle, color: Colors.white),
          title: const Text(
            'Perfil',
            style: TextStyle(color: Colors.white),
          ),
          onTap: () {
            // Lógica para navegar para a página de Perfil
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProfileScreen()),
            );
          },
        ),
        ListTile(
          leading: Icon(Icons.logout, color: Colors.white),
          title: const Text(
            'Sair',
            style: TextStyle(color: Colors.white),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginScreen()),
            );
          },
        ),
      ],
    ),
  ),
),


      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF1693A5),
              Color(0xFF7ECECA),
              Color(0xFFC7EDE8),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: ListView(
          padding: EdgeInsets.all(16),
          children: [
            const Padding(
              padding: EdgeInsets.only(bottom: 8.0),
              child: Text(
                'Compromissos de Hoje',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            for (var i = 0; i < todayTasks.length; i++)
              _buildTaskCard(todayTasks[i], i),
            const Divider(),
            const Padding(
              padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
              child: Text(
                'Compromissos Futuros',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            for (var i = 0; i < futureTasks.length; i++)
              _buildTaskCard(futureTasks[i], i),
            const Divider(),
            const Padding(
              padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
              child: Text(
                'Compromissos Atrasados',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.red),
              ),
            ),
            for (var i = 0; i < overdueTasks.length; i++)
              _buildTaskCard(overdueTasks[i], i, isOverdue: true),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addTask,
        backgroundColor: Color(0xFF1693A5),
        child: const Icon(Icons.add, color: Colors.white),
      ),
      bottomNavigationBar: BottomNavigationBar(
  backgroundColor: Color(0xFF7ECECA),
  type: BottomNavigationBarType.fixed,
  selectedItemColor: Colors.white,
  unselectedItemColor: Colors.black54,
  items: const [
    BottomNavigationBarItem(
      icon: Icon(Icons.calendar_today),
      label: '',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.timer), // Ícone de cronômetro
      label: '',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.settings),
      label: '',
    ),
  ],
  onTap: (index) {
    if (index == 0) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => CalendarScreen(events: tasks)),
      );
    } else if (index == 1) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => TimerScreen(tasks: tasks)),  // Navega para a tela do cronômetro
      );
    } else if (index == 2) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SettingsScreen()),  // Navega para a tela de configurações
      );
    }
  },
),


    );
  }

    Widget _buildTaskCard(Map<String, dynamic> task, int index, {bool isOverdue = false}) {
    final category = categories.firstWhere(
      (cat) => cat['name'] == task['category'],
      orElse: () => {'icon': Icons.event},
    );

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: task['isCompleted']
            ? Colors.green[100]
            : (isOverdue ? Colors.red[50] : Colors.white),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            offset: const Offset(0, 4),
            blurRadius: 8,
          ),
        ],
      ),
      child: ListTile(
        leading: Icon(category['icon'], color: isOverdue ? Colors.red : Colors.blueAccent),
        title: Text(
          task['description'],
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            decoration: task['isCompleted'] ? TextDecoration.lineThrough : null,
            color: isOverdue ? Colors.red : Colors.black87,
          ),
        ),
        subtitle: Text(DateFormat('dd/MM/yyyy – HH:mm').format(task['date']),
            style: TextStyle(color: isOverdue ? Colors.red[400] : Colors.grey)),
        trailing: Checkbox(
          value: task['isCompleted'],
          onChanged: (value) {
            setState(() {
              task['isCompleted'] = value;
            });
          },
        ),
      ),
    );
  }
}

// Nova tela para o cronômetro com compromissos
// Tela do Timer Pomodoro
class TimerScreen extends StatefulWidget {
  final List<Map<String, dynamic>> tasks;

  TimerScreen({required this.tasks});

  @override
  _TimerScreenState createState() => _TimerScreenState();
}

class _TimerScreenState extends State<TimerScreen> {
  Timer? _timer;
  int _timeInSeconds = 1500; // Valor padrão de 25 minutos (Pomodoro)
  bool isRunning = false;
  Map<String, dynamic>? _selectedTask;
  TextEditingController _timeController = TextEditingController();

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  void _startTimer() {
    if (_timer != null) {
      _timer!.cancel();
    }

    setState(() {
      isRunning = true;
    });

    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (mounted) {
        setState(() {
          if (_timeInSeconds > 0) {
            _timeInSeconds--;
          } else {
            _timer?.cancel();
            isRunning = false;
          }
        });
      }
    });
  }

  void _stopTimer() {
    if (_timer != null) {
      _timer!.cancel();
    }
    setState(() {
      isRunning = false;
    });
  }

  String get _formattedTime {
    final minutes = (_timeInSeconds ~/ 60).toString().padLeft(2, '0');
    final seconds = (_timeInSeconds % 60).toString().padLeft(2, '0');
    return '$minutes:$seconds';
  }

  void _setTime() {
    final int? enteredTime = int.tryParse(_timeController.text);
    if (enteredTime != null && enteredTime > 0) {
      setState(() {
        _timeInSeconds = enteredTime * 60;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pomodoro Timer'),
        backgroundColor: Color(0xFF1693A5),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF1693A5),
              Color(0xFF7ECECA),
              Color(0xFFC7EDE8),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Dropdown para selecionar o compromisso
              DropdownButton<Map<String, dynamic>>(
                hint: Text('Selecione um compromisso'),
                value: _selectedTask,
                isExpanded: true,
                items: widget.tasks.map((task) {
                  return DropdownMenuItem<Map<String, dynamic>>(
                    value: task,
                    child: Text(task['description']),
                  );
                }).toList(),
                onChanged: (value) {
                  setState(() {
                    _selectedTask = value;
                  });
                },
              ),
              const SizedBox(height: 30),

              // Campo para o usuário inserir o tempo
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  controller: _timeController,
                  keyboardType: TextInputType.number,
                  style: TextStyle(fontSize: 18),
                  decoration: InputDecoration(
                    labelText: 'Defina o tempo (minutos)',
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 10, 
                      horizontal: 20
                    ),
                    labelStyle: TextStyle(color: Colors.black54),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Color(0xFF7ECECA),
                        width: 2,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Color(0xFF1693A5),
                        width: 2,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),

              ElevatedButton(
                onPressed: _setTime,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF7ECECA),
                  padding: EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 15,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  elevation: 10,
                ),
                child: const Text(
                  'Definir Tempo',
                  style: TextStyle(fontSize: 16),
                ),
              ),
              const SizedBox(height: 40),

              // Timer com círculo ao redor
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Color(0xFF1693A5),
                    width: 4,
                  ),
                ),
                padding: const EdgeInsets.all(40),
                child: Text(
                  _formattedTime,
                  style: TextStyle(
                    fontSize: 60, 
                    fontWeight: FontWeight.bold, 
                    color: Colors.black87,
                  ),
                ),
              ),
              const SizedBox(height: 40),

              // Botões de controle
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: isRunning ? _stopTimer : _startTimer,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: isRunning ? Colors.redAccent : Color(0xFF1693A5),
                      padding: EdgeInsets.symmetric(
                        horizontal: 40,
                        vertical: 15,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      elevation: 10,
                    ),
                    child: Text(
                      isRunning ? 'Parar' : 'Iniciar',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  const SizedBox(width: 20),

                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _timeInSeconds = 1500; // Reinicia para 25 minutos
                        isRunning = false;
                        _timer?.cancel();
                      });
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey,
                      padding: EdgeInsets.symmetric(
                        horizontal: 40,
                        vertical: 15,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      elevation: 10,
                    ),
                    child: const Text('Reiniciar', style: TextStyle(fontSize: 16)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


// Nova tela para o calendário
class CalendarScreen extends StatefulWidget {
  final List<Map<String, dynamic>> events;

  CalendarScreen({required this.events});

  @override
  _CalendarScreenState createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  DateTime _focusedDay = DateTime.now();
  DateTime _selectedDay = DateTime.now();

  List<Map<String, dynamic>> _getEventsForDay(DateTime day) {
    return widget.events.where((task) {
      return task['date'].day == day.day &&
          task['date'].month == day.month &&
          task['date'].year == day.year;
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> selectedEvents = _getEventsForDay(_selectedDay);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Calendário de Compromissos'),
        backgroundColor: Color(0xFF1693A5),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF1693A5), // Primeiro tom da cor
              Color(0xFF7ECECA), // Segundo tom da cor
              Color(0xFFC7EDE8), // Terceiro tom da cor
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            TableCalendar(
              firstDay: DateTime(2000),
              lastDay: DateTime(2100),
              focusedDay: _focusedDay,
              selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
              onDaySelected: (selectedDay, focusedDay) {
                setState(() {
                  _selectedDay = selectedDay;
                  _focusedDay = focusedDay;
                  selectedEvents = _getEventsForDay(_selectedDay); // Atualiza os eventos
                });
              },
              calendarStyle: CalendarStyle(
                selectedDecoration: BoxDecoration(
                  color: Color(0xFF1693A5), // Cor do dia selecionado
                  shape: BoxShape.circle,
                ),
                todayDecoration: BoxDecoration(
                  color: Color(0xFF7ECECA), // Cor do dia atual
                  shape: BoxShape.circle,
                ),
              ),
              eventLoader: _getEventsForDay,
            ),
            const SizedBox(height: 20),
            Expanded(
              child: selectedEvents.isEmpty
                  ? const Center(child: Text('Nenhum evento para este dia.'))
                  : ListView.builder(
                      itemCount: selectedEvents.length,
                      itemBuilder: (context, index) {
                        final event = selectedEvents[index];
                        return Card(
                          child: ListTile(
                            title: Text(event['description']),
                            subtitle: Text(DateFormat('dd/MM/yyyy – HH:mm').format(event['date'])),
                            leading: Icon(Icons.event),
                          ),
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Configurações'),
        backgroundColor: Color(0xFF1693A5),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          ListTile(
            leading: Icon(Icons.brightness_6),
            title: Text('Tema Escuro'),
            trailing: Switch(
              value: false, // Aqui você pode armazenar o estado do tema
              onChanged: (value) {
                // Lógica para alternar entre temas claro e escuro
              },
            ),
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Notificações'),
            trailing: Switch(
              value: true, // Aqui você pode armazenar o estado das notificações
              onChanged: (value) {
                // Lógica para ativar/desativar notificações
              },
            ),
          ),
          ListTile(
            leading: Icon(Icons.language),
            title: Text('Idioma'),
            subtitle: Text('Português'), // Idioma atual
            onTap: () {
              // Lógica para mudar o idioma
            },
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Gerenciar Conta'),
            onTap: () {
              // Navegar para a tela de gerenciamento de conta ou logout
            },
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('Sobre o Aplicativo'),
            onTap: () {
              // Mostrar informações sobre o aplicativo
              showAboutDialog(
                context: context,
                applicationName: 'Meu Aplicativo',
                applicationVersion: '1.0.0',
                applicationLegalese: '© 2024 Minha Empresa',
                children: [
                  Text('Este é um aplicativo de  para gerenciar suas tarefas.'),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil'),
        backgroundColor: Color(0xFF1693A5),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF1693A5),
              Color(0xFF7ECECA),
              Color(0xFFC7EDE8),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Foto de perfil (usando a imagem veiga.jfif)
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/veiga.jfif'), // Imagem local
              ),
              SizedBox(height: 20),
              // Nome do usuário
              Text(
                'Raphael Veiga',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
              SizedBox(height: 10),
              // Email do usuário
              Text(
                'raphinhaveiga@gmail.com',
                style: TextStyle(fontSize: 16, color: Colors.white70),
              ),
              SizedBox(height: 20),
              // Botão de editar perfil
              ElevatedButton(
                onPressed: () {
                  // Lógica para editar perfil
                },
                child: Text('Editar Perfil'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF1693A5),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
