import 'package:flutter/material.dart';

class TodoListPage extends StatefulWidget {
  const TodoListPage({super.key});

  @override
  State<TodoListPage> createState() => _TodoListPageState();
}

class _TodoListPageState extends State<TodoListPage> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController inputController = TextEditingController();

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Card(
                child: Column(
                  children: [
                    TextField(
                      controller: inputController,
                      // obscureText: true,
                      // obscuringCharacter: 'x',
                      // keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        // prefixText: 'R\$ ',
                        // suffixText: ':D',
                        hintText: 'Beber água',
                        labelText: 'O que precisa fazer?',
                        border: OutlineInputBorder(),
                      ),
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.deepPurple,
                      ),
                    ),
                    Text(inputController.text),
                    TextButton(
                      onPressed: () {},
                      child: const Text('Adicionar'),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
