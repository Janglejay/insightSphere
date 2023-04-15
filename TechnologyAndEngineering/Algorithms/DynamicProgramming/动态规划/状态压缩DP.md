---
tags:
- DP
---
---

## AcWing 291. 蒙德里安的梦想   [原题链接](https://www.acwing.com/problem/content/293/)

求把N*M的棋盘分割成若干个1*2的的长方形，有多少种方案。

例如当N=2，M=4时，共有5种方案。当N=2，M=3时，共有3种方案。

如下图所示：

![2411_1.jpg](19_4dd1644c20-2411_1.jpg)

#### 输入格式

输入包含多组测试用例。

每组测试用例占一行，包含两个整数N和M。

当输入用例N=0，M=0时，表示输入终止，且该用例无需处理。

#### 输出格式

每个测试用例输出一个结果，每个结果占一行。  

#### 数据范围

1≤N,M≤111≤N,M≤11

#### 输入样例：

```
1 2
1 3
1 4
2 2
2 3
2 4
2 11
4 11
0 0
```

#### 输出样例：

```
1
0
1
2
3
5
144
51205
```

## 题目思路

$$
可知：当我们放好横向小方格时，纵向小方格的摆放方式是唯一的，即所有的方案数与横向小方格的方案数相同
$$

$$
对于每种方案，可以按列来看，每一列内部所有连续的空着的小方块需要是偶数个方案才合法
$$

$$
f(i,j)表示已经将前i-1列摆好，且从第i-1列伸出到第i列的状态是j的所有方案数
$$

$$
设第i列状态为j,第i-1列状态为k
$$

$$
f(i,j)是符合要求的方案数，需要帮助两点要求
$$

$$
第i-1列伸出到第i列的同时不能有第i-2列伸出到第i-1列即j\&k=0 \tag1
$$

$$
在计算f(i,j)时，i-1列的状态k必须符合要求，即状态(k|j)需要满足连续的0数量为偶数\tag2
$$

$$
初始时f(0,0)=1：由于第0列之前没有别的列，所以状态只可能为0，不存在非0状态即前面有伸出
$$

$$
所以第0列放不了横着的，所以不放就是唯一的方案
$$

$$
结束时f(m,0):第m列不能有伸出的状态，不然就超出了矩形范围
$$

$$
矩形的真正区域是[0,m-1]列，第m列是为了枚举第m-1列
$$

```java
    public static void main(String[] args) {
        int n;
        int m;
        long[][] dp;
        boolean[] st;
        while ((n = in.nextInt()) != 0 && (m = in.nextInt()) != 0) {
            dp = new long[m + 1][1 << n];
            st = new boolean[1 << n];
            for (int i = 0; i < (1 << n); i++) {
                int count = 0;
                boolean isValid = true;
                for (int j = 0; j < n; j++) {
                    if (((i >> j) & 1) == 1) {
                        if ((count & 1) == 1) {
                            isValid = false;
                            break;
                        }
                        count = 0;
                    }else {
                        count++;
                    }
                }
                if ((count & 1) == 1) isValid = false;
                st[i] = isValid;
            }
            dp[0][0] = 1;
            for (int i = 1; i <= m; i++) {
                for (int j = 0; j < (1 << n); j++) {
                    for (int k = 0; k < (1 << n); k++) {
                        if ((j & k) == 0 && st[j | k]) {
                            dp[i][j] += dp[i - 1][k];
                        }
                    }
                }
            }
            out.println(dp[m][0]);
        }
        out.flush();
        out.close();
    }
```

## AcWing 91. 最短Hamilton路径   [原题链接](https://www.acwing.com/problem/content/93/)

给定一张 nn 个点的带权无向图，点从 0~n-1 标号，求起点 0 到终点 n-1 的最短Hamilton路径。 Hamilton路径的定义是从 0 到 n-1 不重不漏地经过每个点恰好一次。

#### 输入格式

第一行输入整数nn。

接下来nn行每行nn个整数，其中第ii行第jj个整数表示点ii到jj的距离（记为a[i,j]）。

对于任意的x,y,zx,y,z，数据保证 a[x,x]=0，a[x,y]=a[y,x] 并且 a[x,y]+a[y,z]>=a[x,z]。

#### 输出格式

输出一个整数，表示最短Hamilton路径的长度。

#### 数据范围

1≤n≤201≤n≤20
0≤a[i,j]≤1070≤a[i,j]≤107

#### 输入样例：

```
5
0 2 4 5 1
2 0 6 5 3
4 6 0 8 3
5 5 8 0 5
1 3 3 5 0
```

#### 输出样例：

```
18
```

## 题目思路

$$
f(i,j)：所有从0走到j，走过的路径状态为i的所有路径的距离最小值
$$

$$
f(i,j)=min(f((i除去第j个点),k)+d_{kj})(0<=k<=n-1且k\neq j)
$$

$$
计算f(i,j)时需要满足两点条件:
$$

$$
i>>j\&1=1:需要经过j这个点，不然走不到j这个点
$$

$$
i-(1<<j)>>k\&1=1:去除第j位需要经过k这个点(k是指倒数第二步走到的点)
$$

$$
初始状态f(1,0)：i=1只有第0位为1即经过0这个点，j=0表示到达0这个点，从0到0距离为0
$$

```java
    public static void main(String[] args) {
        int n = in.nextInt();
        int[][] arr = new int[n][n];
        for (int i = 0; i < n; i++) in.nextIntegerArray(arr[i]);
        int[][] dp = new int[1 << n][n];
        for (int i = 0; i < 1 << n; i++) Arrays.fill(dp[i], Integer.MAX_VALUE / 2);
        dp[1][0] = 0;
        for (int i = 0; i < 1 << n; i++) {
            for (int j = 0; j < n; j++) {
                if ((i >> j & 1) == 1) {
                    for (int k = 0; k < n; k++) {
                        if ((((i - (1 << j)) >> k) & 1) == 1) {
                            dp[i][j] = Math.min(dp[i][j], dp[i - (1 << j)][k] + arr[k][j]);
                        }
                    }
                }
            }
        }
        out.println(dp[(1 << n) - 1][n - 1]);
        out.flush();
        out.close();
    }
```

