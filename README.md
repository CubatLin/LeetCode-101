# 算法筆記
  
  這裡是自己對算法的直觀理解，若要進一步探討算法的詳細作法與內容，推薦臺師大資工系所建立的網站：http://web.ntnu.edu.tw/~algo/index.html
  
  如果有從頭啃完的童鞋們，還請留下聯絡方式，小弟會找你要簽名的。
  
## 算法基礎的直觀理解

  小弟目前對算法可以理解成兩個部分 - "依資料結構設計的算法" 和 "依數學問題特性而設計的算法"，掌握這兩個概念，學習算法應該會少走些冤枉路，畢竟算法的概念就兩個:
  
  1. 算過的不要再算。
  2. 能計算一次的就不要計算兩次。

### 依資料結構設計算法

  **"很多問題不需計算，只需一個好的儲存方式..."**
  
  資料結構是演算法的基石，算法有很大一部份不是"怎麼算答案"，而是"怎麼找答案"。
  
  - 記憶法: 
  
  Ex:對序列 S 排序。
  
  ```
    //統計排序法
    for-loop: 陣列 A 紀錄 S 中元素 s 的個數。
    for-loop: 陣列 A 中依統計資訊提取 s (由小到大)。
  ```
  
### 依數學問題特行設計算法
  
  **"凡是能用數字表示的問題，都是數學問題。"**
  
  算法往往能解決的只有"一個數學問題"，我們往往必須把現實任務拆解成多個數學問題，然後一一解決。

  - 遞增問題(更喜歡說"迭代問題")
  
    對於當問題只能 "逐個運算" 時，Ex: x(t+1) = x(t) + 1, x(10) = ?

    ```
    x=0
    for (i=0; x<10; i++)
      x+=1
    ```
    
  - 
