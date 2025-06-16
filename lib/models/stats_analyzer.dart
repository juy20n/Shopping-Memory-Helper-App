class SpendingData {
  final String label;
  final double amount;

  SpendingData(this.label, this.amount);
}

class statsanalyzer {
  List<SpendingData> weeklyData = [];
  List<SpendingData> monthlyData = [];
  List<SpendingData> categoryData = [];
  List<SpendingData> customRangeData = [];

  void analyzeWeeklySpending() {
    weeklyData = [
      SpendingData("월", 12000),
      SpendingData("화", 15000),
      SpendingData("수", 8000),
      SpendingData("목", 18000),
      SpendingData("금", 22000),
      SpendingData("토", 5000),
      SpendingData("일", 10000),
    ];
    print("주간 소비 분석 완료");
  }

  void analyzeMonthlySpending() {
    monthlyData = [
      SpendingData("1주차", 45000),
      SpendingData("2주차", 52000),
      SpendingData("3주차", 60000),
      SpendingData("4주차", 49000),
    ];
    print("월간 소비 분석 완료");
  }

  void analyzeCustomRangeSpending(DateTime start, DateTime end) {
    customRangeData = [
      SpendingData(
          "${start.month}/${start.day}~${end.month}/${end.day}", 125000),
    ];
    print("사용자 설정 기간 소비 분석 완료");
  }

  void analyzeCategorySpending() {
    categoryData = [
      SpendingData("식료품", 72000),
      SpendingData("카페", 15000),
      SpendingData("의류", 30000),
      SpendingData("기타", 12000),
    ];
    print("카테고리별 소비 분석 완료");
  }
}
