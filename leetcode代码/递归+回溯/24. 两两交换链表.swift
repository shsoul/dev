class Node {
    var val: Int = 0
    var next: Node?
}

func swapLinkedList(head: Node?) -> Node? {
    if (head == nil || head!.next == nil) {
        return head
    }
    let ans = head?.next
    dfs(last: nil, left: head, right: head?.next, next: head?.next?.next)
    return ans
}

func dfs(last: Node?, left: Node?, right: Node?, next: Node?) -> Void {
    if (left == nil || right == nil) {
        return
    }
    if (last != nil) {
        last?.next = right
    }
    right?.next = left
    left?.next = next
    dfs(last: left, left: left?.next, right: left?.next?.next, next: left?.next?.next?.next)
}