List<String> solve(String? dig) {
  final Map<String, String> map = {
    "2": "abc",
    "3": "def",
    "4": "ghi",
    "5": "jkl",
    "6": "mno",
    "7": "pqrs",
    "8": "tuv",
    "9": "wxyz",
  };
  if (dig == null || dig.isEmpty) {
    return [];
  }
  final List<String> ans = [];
  makeAns(ans, dig, "", 0, dig.length, map);
  return ans;
}

void makeAns(
  List<String> ans,
  String dig,
  String str,
  int index,
  int n,
  Map<String, String> map,
) {
  if (index == n) {
    ans.add(str);
    return;
  }
  String cur = map[dig[index]]!;
  for (int i = 0; i < cur.length; i++) {
    makeAns(ans, dig, str + cur[i], index + 1, n, map);
  }
}