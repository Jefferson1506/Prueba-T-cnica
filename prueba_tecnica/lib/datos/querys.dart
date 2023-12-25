


const String loginQuery = r'''
  query Login($id: String!, $pass: String!) {
    login(id: $id, pass: $pass)
  }
''';