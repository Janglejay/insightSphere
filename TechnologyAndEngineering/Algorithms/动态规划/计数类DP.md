# 整数划分

$$
看成是：有一个容量为n的背包，物品的体积有[1,n]，每个物品可以选任意次，即完全背包
$$

$$
求恰好装满背包的方案数
$$

$$
f(i,j)：从[1,i]中选恰好装满容量为j的背包的方案数
$$

$$
f(i,j)=f(i-1,j)+f(i-1,j-i)+\dots+f(i-1,j-k\times i)(0<=k<=\frac{j}{i})\tag1
$$

$$
易得:f(i,j-i)=f(i-1,j-i)+f(i-1,j-2\times i)+\dots+f(i-1,j-k\times i)(1<=k<=\frac{j}{i})\tag2
$$

$$
结合(1)(2)式可得：f(i,j)=f(i-1,j)+f(i,j-i)
$$

$$
第二种定义状态的方式：
$$

$$
f(i,j)：所有总和是i,并且恰好表示成j个数的和的方案数
$$

$$
可以将所有的方案按最小值是否是1分成两部分s_1、s_2
$$

$$
s_1方案数可以由所有和为i-1,j-1个数的方案加上一个1变成即：f(i-1,j-1)
$$

$$
s_2方案数可以由和为i,有j个数的方案每个数减去1变成即:f(i-j,j)
$$

$$
f(i,j)=f(i-1,j-1)+f(i-j,j)
$$

$$
res = f(n,1)+f(n,2)+\dots+f(n,n)
$$

## AcWing 900. 整数划分   [原题链接](https://www.acwing.com/problem/content/902/)

一个正整数nn可以表示成若干个正整数之和，形如：n=n1+n2+…+nkn=n1+n2+…+nk，其中n1≥n2≥…≥nk,k≥1n1≥n2≥…≥nk,k≥1。

我们将这样的一种表示称为正整数n的一种划分。

现在给定一个正整数n，请你求出n共有多少种不同的划分方法。

#### 输入格式

共一行，包含一个整数n。

#### 输出格式

共一行，包含一个整数，表示总划分数量。

由于答案可能很大，输出结果请对109+7109+7取模。

#### 数据范围

1≤n≤10001≤n≤1000

#### 输入样例:

```
5
```

#### 输出样例：

```
7
```

朴素写法：

```java
    private static void function1() {
        int mod = (int) (1e9 + 7);
        int n = in.nextInt();
        int[][] dp = new int[n + 1][n + 1];
        for (int i = 0; i < n + 1; i++) dp[i][0] = 1;
        for (int i = 1; i < n + 1; i++) {
            for (int j = 1; j < n + 1; j++) {
                if (j - i >= 0)
                    dp[i][j] = (dp[i - 1][j] + dp[i][j - i]) % mod;
                else dp[i][j] = dp[i - 1][j] % mod;
            }
        }
        out.println(dp[n][n]);
        out.flush();
        out.close();
    }
```

空间优化写法：

```java
    private static void function2() {
        int mod = (int) (1e9 + 7);
        int n = in.nextInt();
        int[] dp = new int[n + 1];
        dp[0] = 1;
        for (int i = 1; i < n + 1; i++) {
            for (int j = i; j < n + 1; j++) {
                    dp[j] = (dp[j] + dp[j - i]) % mod;
            }
        }
        out.println(dp[n]);
        out.flush();
        out.close();
    }
```

解法2：

```java
    private static void function3() {
        int mod = (int) (1e9 + 7);
        int n = in.nextInt();
        int[][] dp = new int[n + 1][n + 1];
        dp[0][0] = 1;
        for (int i = 1; i < n + 1; i++) {
            for (int j = 1; j < n + 1; j++) {
                if (i >= j)
                    dp[i][j] = (dp[i - 1][j - 1] + dp[i - j][j]) % mod;
                else dp[i][j] = dp[i - 1][j - 1] % mod;
            }
        }
        int res = 0;
        for (int i = 1; i < n + 1; i++) res = (res + dp[n][i]) % mod;
        out.println(res);
        out.flush();
        out.close();
    }
```


背包问题