select ftd_date,
	client_name,
    client_id,
	brand_name,
	client_id_brand,
	age,
	work,
	gender,
	status,
	deposit,
	broker,
    "1",
    "2",
    "3",
	"4",
    "5",
    "6",
    "7",
    "8",
    "9",
    "10",
    "11",
    "12",
    "13",
    "14",
    "15",
    "16",
    "17",
	"18",
    "19",
    "20",
    "21",
    "22",
    "23",
    "24",
    "25",
    "26",
    "27",
    "28",
	"29",
    "30",
    "31"
from sales_marketing.calls_per_month
UNION ALL
select * from sales_uticen.uticen_calls_per_month