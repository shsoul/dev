Node? swap(Node? head) {
  if (head == null || head.next == null) {
    return head;
  }
  final ans = head.next;
  dfs(null, head, head.next, head.next?.next);
  return ans;
}

void dfs(Node? last, Node? left, Node? right, Node? next) {
  if (left == null || right == null) {
    return;
  }
  if (last != null) {
    last.next = right;
  }
  right.next = left;
  left.next = next;
  dfs(
    left,
    left.next,
    left.next?.next,
    left.next?.next?.next,
  );
}