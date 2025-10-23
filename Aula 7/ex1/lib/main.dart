Future<String> reportUserRole() async {
  final role = await fetchRole();
  return 'Função do usuário: $role';
}

Future<String> reportLogins() async {
  final count = await fetchLoginAmount();
  return 'Número total de logins: $count';
}

Future<String> fetchRole() =>
    Future.delayed(_halfSecond, () => _role);
Future<int> fetchLoginAmount() =>
    Future.delayed(_halfSecond, () => _logins);

const _role = 'administrador';
const _logins = 42;
const _halfSecond = Duration(milliseconds: 500);

void main() async {
  print(await reportUserRole());
  print(await reportLogins());
}
