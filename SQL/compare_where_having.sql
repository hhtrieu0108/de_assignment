use kaggle_samplebanking_aDuong;

------------------------- Check Data ------------------------

select * from dbo.sample_bank_transaction;

------------------------- Where ------------------------

set statistics time on

select TransactionID,CustGender,TransactionTime,count(*)
from dbo.sample_bank_transaction
where TransactionTime < 100000
group by TransactionID,CustGender,TransactionTime;

set statistics time off

------------------------- Having ------------------------

set statistics time on

select TransactionID,CustGender,TransactionTime,count(*)
from dbo.sample_bank_transaction
group by TransactionID,CustGender,TransactionTime
having TransactionTime < 100000;

set statistics time off

------------------------- End ------------------------