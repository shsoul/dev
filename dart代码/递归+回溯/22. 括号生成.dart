void main(List<String> arguments) {
  List<String> ans = [];
  final now = DateTime.now();
  int n = 8;
  solve(n * 2, "", ans, 0, 0, n);
  print(DateTime.now().difference(now));
  print(ans);
}

bool isAns(String str) {
  if (str.length % 2 == 1) {
    return false;
  }
  List<String> stack = [];
  for (int i = 0; i < str.length; i++) {
    if (str[i] == '(') {
      stack.add(str[i]);
    } else if (str[i] == ')') {
      if (stack.isEmpty) {
        return false;
      } else {
        stack.removeLast();
      }
    }
  }
  if (stack.isEmpty) {
    return true;
  } else {
    return false;
  }
}

void solve(
    int n, String str, List<String> ans, int countl, int countr, int half) {
  if (n == 0) {
    if (isAns(str)) {
      ans.add(str);
    }
    return;
  }
  if (countl < half) {
    solve(n - 1, str + "(", ans, countl + 1, countr, half);
  }
  if (countr < half) {
    solve(n - 1, str + ")", ans, countl, countr + 1, half);
  }
}
