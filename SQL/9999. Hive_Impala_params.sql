With tmp_table as (
    SELECT * FROM db.tmp_table
)

SELECT base.*
  FROM db.main_table base
  LEFT JOIN tmp_table tmp
    ON base.key = tmp.key
 WHERE SNAP_DATE = '${DATE = YYYYMM}'


-- time 處理
to_date(timestamp) > '20201101'
snap_yyyymmdd(string) > '20201101'

-- str to timestamp(Impala)
to_timestamp(concat('202210','01'),'yyyyMMdd')
add_months(to_timestamp(concat('202210','01'),'yyyyMMdd'), -12)
from_unixtime(unixtimestamp(add_months(to_timestamp(concat('202210','01'),'yyyyMMdd'), -12)))

-- Hive
WHERE DATE_YYYYMM = DATE_FORMAT(ADD_MONTHS(FROM_UNIXTIME(UNIX_TIMESTAMP(CONCAT('${yyyyMM}','01'), 'yyyyMMdd')), -5), 'yyyyMM')

-- timestamp加日期
FROM_UNIXTIME(UNIX_TIMESTAMP(DATE_ADD(CURRENT_DATE(),-7)), 'yyyyMMdd')
FROM_UNIXTIME(UNIX_TIMESTAMP(DATE_ADD('2022-01-20 00:00:00',-7)), 'yyyyMMdd')