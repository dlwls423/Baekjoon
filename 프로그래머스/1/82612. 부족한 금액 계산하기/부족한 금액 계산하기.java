class Solution {
    public long solution(int price, int money, int count) {
        long sum = 0;
        for(int i=1;i<=count;i++) sum += i;
        sum *= price;
        if(sum <= money) return 0;
        return sum - money;
    }
}