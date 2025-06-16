class BudgetManager {
  double monthlyBudget;
  double currentSpending;
  DateTime budgetStartDate;
  DateTime budgetEndDate;
  List<_SpendingRecord> _records = [];

  BudgetManager({
    required this.monthlyBudget,
    required this.currentSpending,
    required this.budgetStartDate,
    required this.budgetEndDate,
  });

  // 소비 내역 추가
  void addSpending(double amount, DateTime date) {
    _records.add(_SpendingRecord(amount: amount, date: date));
    currentSpending += amount;
  }

  // 소비 내역 전체 초기화
  void resetBudget() {
    currentSpending = 0;
    _records.clear();
  }

  // 기간별 소비 내역 조회
  double getSpendingBetween(DateTime start, DateTime end) {
    return _records
        .where((record) => record.date.isAfter(start.subtract(const Duration(days: 1))) &&
        record.date.isBefore(end.add(const Duration(days: 1))))
        .fold(0.0, (sum, record) => sum + record.amount);
  }

  // 주간 소비 내역 확인
  double getWeeklySpending(DateTime referenceDate) {
    final startOfWeek = referenceDate.subtract(Duration(days: referenceDate.weekday - 1));
    final endOfWeek = startOfWeek.add(const Duration(days: 6));
    return getSpendingBetween(startOfWeek, endOfWeek);
  }

  // 월간 소비 내역 확인
  double getMonthlySpending(DateTime referenceDate) {
    final startOfMonth = DateTime(referenceDate.year, referenceDate.month, 1);
    final endOfMonth = DateTime(referenceDate.year, referenceDate.month + 1, 0);
    return getSpendingBetween(startOfMonth, endOfMonth);
  }

  // 현재까지 사용한 금액 확인
  double getCurrentSpending() => currentSpending;
}

// 내부 소비 내역 기록용 클래스
class _SpendingRecord {
  double amount;
  DateTime date;

  _SpendingRecord({required this.amount, required this.date});
}
