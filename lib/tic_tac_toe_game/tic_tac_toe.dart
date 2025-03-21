import 'package:flutter/material.dart';

class TicTacToe extends StatefulWidget {
  const TicTacToe({super.key});

  @override
  State<TicTacToe> createState() => _TicTacToeState();
}

class _TicTacToeState extends State<TicTacToe> {
  List<String> board = List.filled(9, '', growable: false);
  String currentPlayer = 'X';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tic Tac Toe'),
      ),
      body: GridView.builder(
          itemCount: board.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemBuilder: (context, index){
            return GestureDetector(
              onTap: () => _markCell(index),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                ),
                child: Center(
                  child: Text(
                    board[index],
                    style: TextStyle(fontSize: 40),
                  ),
                ),
              ),
            );
          }),
    );
  }

  void _markCell(int index){
    if(board[index] == ''){
      setState(() {
        board[index] = currentPlayer;
        currentPlayer = currentPlayer == 'X' ? '0' : 'X';
      });
    }
  }

}
