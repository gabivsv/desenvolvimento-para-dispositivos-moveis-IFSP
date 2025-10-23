Future<String> fetchNewUsername() =>
    Future.delayed(const Duration(milliseconds: 500), () => throw UserError());

class UserError implements Exception {
  @override
  String toString() => 'Novo nome de usuário é inválido';
}

Future<String> changeUsername() async {
  try {
    final username = await fetchNewUsername();
    return username;
  } catch (error) {
    return error.toString();
  }
}

void main() async {
  final result = await changeUsername();
  print(result);  
}
