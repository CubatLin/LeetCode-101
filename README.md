# 算法筆記
  
  這裡是自己對算法的直觀理解，若要進一步探討算法的詳細作法與內容，推薦臺師大資工系所建立的網站：http://web.ntnu.edu.tw/~algo/index.html
  
  如果有從頭啃完的童鞋們，還請留下聯絡方式，小弟會找你要簽名的。
  
## 基礎算法

### 直觀理解

  小弟目前對算法可以理解成兩個部分:
  
  1. 依資料結構設計的算法。
  
  2. 依數學問題特性而設計的算法。
  
  掌握這兩個概念，學習算法應該會少走些冤枉路，畢竟算法的概念就兩個: **算過的不要再算。**、**能算一次的就不要算兩次。**

### 1. 依資料結構設計算法

  **"很多問題不需計算，只需一個好的儲存方式..."**
  
  資料結構是演算法的基石，算法有很大一部份不是"怎麼算答案"，而是"怎麼找答案"。
  
  - 記憶法 - 直接查找:

	- 陣列:

		```
		Ex:對序列 S 排序。

		//計數排序法
		for-loop: 陣列 A 紀錄 S 中元素 s 的個數。
		for-loop: 陣列 A 中依統計資訊提取 s (由小到大)。
		```

	- 雜湊表:

		```
		Ex: 給定多個字串 S1, S2, ... , Sn 並儲存起來。

		func_hash_(S):
		    //自訂義字串對數字的轉換
		    return S2Num
		main():
		    S = "abcde"
		    data_index = func_hash_(S)
		    Array[data_index]=1
		```
    
  - 順序處理法:
    
	- 佇列:先進先出

		```
		String S = "abcde"
		array A
		for-loop:A.push_left(S[i])
		for-loop:A.pop_right()
		```

	- 堆疊:後進先出

		```
		String S = "abcde"
		array A
		for-loop:A.push_left(S[i])
		for-loop:A.pop_left()
		```

### 2. 依數學問題特行設計算法

**"凡是能用數字表示的問題，都是數學問題。"**

- 枚舉法(注意!不是窮舉法):
  
	**從口袋掏出一把鑰匙與鑰匙孔配對，成了進門，不成換一把。 -> (窮舉法是最笨的枚舉法 )**

	Ex:尋找陣列 A 之中的數字 a ，A 陣列已經由小到大排序
	```
	while len(A)>0:
	    if A[mid]<a: A = A 的左半部
	    elif A[mid]>a: A = A 的右半部
	    else: 輸出 A[mid]
	```

- 遞迴法:

	**大問題由小問題組成，小問題的形式大問題一樣，拆解大問題，專注於小問題。**

	Ex:輾轉相除法
	```
	func_(a, b):
	    if (b == 0): return a;
	    else: return func_(b, a % b);
	```

- 遞推法:

	**大問題由小問題組成，小問題的形式大問題一樣，處理小問題，解決大問題。**

	Ex:字串變整數
	
	```
	A = "26962869"
	for-loop: sum += A[i] * pow(10,len(A)-i-1)
	```

	遞推法和遞迴法一體兩面，在實作上有些許差異:

	Start:試著解最小問題->

	1. 尋找小問題組成大問題的方法 -> 遞推法。

	2. 尋找大問題拆成小問題的方法 -> 遞迴法。

- 迭代法:

	**不斷利用目前求得的數值，再求得新數值。**

	Ex:字串變整數
	
	```
	A = "26962869"
	sum = 0
	for-loop: sum += sum * 10 + A[i]
	```

- 貪心法:

	**十歲受誘於餅乾；二十歲受誘於情人；三十歲受誘於快樂；四十歲受誘於野心；五十歲受誘於貪婪，人~到底何年何月才會只追求睿智？**

	兩種策略:

	1. 每個小問題都選擇最好的答案，那大問題答案也一定最好。 -> 你是小朋友嗎?

	2. 排除不可能的選項，那離真相就更進一步。 -> 名偵探柯南似尼?

	Ex:求函數最小值 -> 梯度下降法


## 延伸算法:

當我們熟悉了上述的基礎算法後，我們把多個算法的特長進行融合、延伸、推廣，從而產生比較複雜的算法。

- 拆分法:

	**大問題由不同小問題組成，將大問題拆成小問題，專注小問題。**

	"拆分法" 是 "遞推(迴)法" 更大的框架，不要求大問題與小問題的數學形式一致。

	Ex:快速排序法
	
	```
	func_sort_(list)
	    pivot = 從 list 取出一基準點
		var less, greater, result
	    for-loop:
		if list[i] > pivot: greater.add(list[i])
		else: less.add(list[i])
		result.add(func_sort_(less))
		result.add(pivot)
		result.add(func_sort_(greater))
		return result;
	```

- 回朔法(Backtracking):http://web.ntnu.edu.tw/~algo/Backtracking.html#1

	**下一步選擇跟上一步有關，逐步枚舉，失敗就返回上一步。 -> 反悔能解決人生所犯下的錯誤，如果不能，那就反悔兩次。**

	回朔法是"枚舉法"跟"迭代法"的結合算法，框架如下：

	第n維度枚舉一數，進行計算:

	1. 符合枚舉條件：紀錄從 1 到 n 的結果，進行第 n+1 維度枚舉。

	2. 不符合枚舉條件：枚舉下一數。

	3. 枚舉完所有可能了：返回第 n-1 維度枚舉。
	
	```
	void backtrack(int n, int w)
	{
	    if (condition_of_n > bounding): return answer;
	    if (condition_of_n)
	    {
		Record the solution[n].
		backtrack(n+1, condition_of_n+1 );
	    }

	    Record the solution[n].
	    backtrack(n+1, condition_of_n+1 );
	}
	```

### 20201231 update: [Leetcode collections](https://github.com/CubatLin/LeetCode-101/blob/master/Essential%20Leetcode%20Collection.xlsx)
