class AuthExceptions implements Exception {
  static const Map<String, String> errors = {
    'EMAIL_EXISTS': 'E-mail já cadastrado',
    'OPERATION_NOT_ALLOWED': 'Operação nãoo permitida',
    'TOO_MANY_ATTEMPTS_TRY_LATER':
        'Acesso bloquedao temporariamente. Tente mais tarde',
    'EMAIL_NOT_FOUND': 'E-mail não encontrado ',
    'INVALID_PASSWORD': 'Senha informada não confere',
    'USER_DISABLED': 'A conta do usuário foi desabilitada',
  };

  final String key;

  AuthExceptions(this.key);

  @override
  String toString() {
    return errors[key] ?? 'Ocorreu um erro no processo de autenticação';
  }
}
