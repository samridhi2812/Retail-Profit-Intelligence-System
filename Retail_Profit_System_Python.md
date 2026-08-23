```python
import pandas as pd
df=pd.read_csv("superstore.csv")
df.head()

```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>Row.ID</th>
      <th>Category</th>
      <th>City</th>
      <th>Country</th>
      <th>Customer.ID</th>
      <th>Customer.Name</th>
      <th>Discount</th>
      <th>Market</th>
      <th>Order.Date</th>
      <th>Order.ID</th>
      <th>...</th>
      <th>Sales</th>
      <th>Segment</th>
      <th>Ship.Date</th>
      <th>Ship.Mode</th>
      <th>Shipping.Cost</th>
      <th>State</th>
      <th>Sub.Category</th>
      <th>Year</th>
      <th>Market2</th>
      <th>weeknum</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>1</td>
      <td>Office Supplies</td>
      <td>Mexico City</td>
      <td>Mexico</td>
      <td>SC-205753</td>
      <td>Sonia Cooley</td>
      <td>0.0</td>
      <td>LATAM</td>
      <td>02-10-2014</td>
      <td>MX-2014-143658</td>
      <td>...</td>
      <td>13</td>
      <td>Consumer</td>
      <td>06-10-2014</td>
      <td>Standard Class</td>
      <td>1.033</td>
      <td>Distrito Federal</td>
      <td>Labels</td>
      <td>2014</td>
      <td>LATAM</td>
      <td>40</td>
    </tr>
    <tr>
      <th>1</th>
      <td>2</td>
      <td>Furniture</td>
      <td>Dos Quebradas</td>
      <td>Colombia</td>
      <td>KW-165703</td>
      <td>Kelly Williams</td>
      <td>0.0</td>
      <td>LATAM</td>
      <td>15-10-2012</td>
      <td>MX-2012-155047</td>
      <td>...</td>
      <td>252</td>
      <td>Consumer</td>
      <td>20-10-2012</td>
      <td>Standard Class</td>
      <td>13.449</td>
      <td>Risaralda</td>
      <td>Furnishings</td>
      <td>2012</td>
      <td>LATAM</td>
      <td>42</td>
    </tr>
    <tr>
      <th>2</th>
      <td>3</td>
      <td>Furniture</td>
      <td>Dos Quebradas</td>
      <td>Colombia</td>
      <td>KW-165703</td>
      <td>Kelly Williams</td>
      <td>0.0</td>
      <td>LATAM</td>
      <td>15-10-2012</td>
      <td>MX-2012-155047</td>
      <td>...</td>
      <td>193</td>
      <td>Consumer</td>
      <td>20-10-2012</td>
      <td>Standard Class</td>
      <td>9.627</td>
      <td>Risaralda</td>
      <td>Bookcases</td>
      <td>2012</td>
      <td>LATAM</td>
      <td>42</td>
    </tr>
    <tr>
      <th>3</th>
      <td>4</td>
      <td>Office Supplies</td>
      <td>Dos Quebradas</td>
      <td>Colombia</td>
      <td>KW-165703</td>
      <td>Kelly Williams</td>
      <td>0.0</td>
      <td>LATAM</td>
      <td>15-10-2012</td>
      <td>MX-2012-155047</td>
      <td>...</td>
      <td>35</td>
      <td>Consumer</td>
      <td>20-10-2012</td>
      <td>Standard Class</td>
      <td>1.371</td>
      <td>Risaralda</td>
      <td>Binders</td>
      <td>2012</td>
      <td>LATAM</td>
      <td>42</td>
    </tr>
    <tr>
      <th>4</th>
      <td>5</td>
      <td>Office Supplies</td>
      <td>Dos Quebradas</td>
      <td>Colombia</td>
      <td>KW-165703</td>
      <td>Kelly Williams</td>
      <td>0.0</td>
      <td>LATAM</td>
      <td>15-10-2012</td>
      <td>MX-2012-155047</td>
      <td>...</td>
      <td>72</td>
      <td>Consumer</td>
      <td>20-10-2012</td>
      <td>Standard Class</td>
      <td>3.787</td>
      <td>Risaralda</td>
      <td>Art</td>
      <td>2012</td>
      <td>LATAM</td>
      <td>42</td>
    </tr>
  </tbody>
</table>
<p>5 rows × 26 columns</p>
</div>




```python
df.info()
```

    <class 'pandas.core.frame.DataFrame'>
    RangeIndex: 51290 entries, 0 to 51289
    Data columns (total 26 columns):
     #   Column          Non-Null Count  Dtype  
    ---  ------          --------------  -----  
     0   Row.ID          51290 non-null  int64  
     1   Category        51290 non-null  object 
     2   City            51290 non-null  object 
     3   Country         51290 non-null  object 
     4   Customer.ID     51290 non-null  object 
     5   Customer.Name   51290 non-null  object 
     6   Discount        51290 non-null  float64
     7   Market          51290 non-null  object 
     8   Order.Date      51290 non-null  object 
     9   Order.ID        51290 non-null  object 
     10  Order.Priority  51290 non-null  object 
     11  Product.ID      51290 non-null  object 
     12  Product.Name    51290 non-null  object 
     13  Profit          51290 non-null  float64
     14  Quantity        51290 non-null  int64  
     15  Region          51290 non-null  object 
     16  Sales           51290 non-null  int64  
     17  Segment         51290 non-null  object 
     18  Ship.Date       51290 non-null  object 
     19  Ship.Mode       51290 non-null  object 
     20  Shipping.Cost   51290 non-null  float64
     21  State           51290 non-null  object 
     22  Sub.Category    51290 non-null  object 
     23  Year            51290 non-null  int64  
     24  Market2         51290 non-null  object 
     25  weeknum         51290 non-null  int64  
    dtypes: float64(3), int64(5), object(18)
    memory usage: 10.2+ MB
    


```python
df.isnull().sum()
```




    Row.ID            0
    Category          0
    City              0
    Country           0
    Customer.ID       0
    Customer.Name     0
    Discount          0
    Market            0
    Order.Date        0
    Order.ID          0
    Order.Priority    0
    Product.ID        0
    Product.Name      0
    Profit            0
    Quantity          0
    Region            0
    Sales             0
    Segment           0
    Ship.Date         0
    Ship.Mode         0
    Shipping.Cost     0
    State             0
    Sub.Category      0
    Year              0
    Market2           0
    weeknum           0
    dtype: int64




```python
df.describe()
df.duplicated().sum()
```




    np.int64(0)




```python
#Standardize the data
df=df.rename(columns={"Row.ID":"RowID", "weeknum":"Weeknum",
                      "Customer.ID":"CustomerID", "Customer.Name":"Customer_Name" , "Order.Date":"OrderDate" , "Order.ID":"OrderID" , 
                    "Ship.Date":"Ship_Date", "Product.Name": "Product_Name",
                      "Product.ID": "ProductID" ,
                      "Shipping.Cost":"Shipping_Cost",
                      "Ship.Mode":"Ship_Mode", 
                      "Order.Priority":"Order_Priority", 
                      "Sub.Category":"Sub_Category"
                      })
df.columns
```




    Index(['RowID', 'Category', 'City', 'Country', 'CustomerID', 'Customer_Name',
           'Discount', 'Market', 'OrderDate', 'OrderID', 'Order_Priority',
           'ProductID', 'Product_Name', 'Profit', 'Quantity', 'Region', 'Sales',
           'Segment', 'Ship_Date', 'Ship_Mode', 'Shipping_Cost', 'State',
           'Sub_Category', 'Year', 'Market2', 'Weeknum'],
          dtype='object')




```python
df["OrderDate"].head(20)
```




    0     02-10-2014
    1     15-10-2012
    2     15-10-2012
    3     15-10-2012
    4     15-10-2012
    5     15-10-2012
    6     27-09-2013
    7     27-09-2013
    8     27-09-2013
    9     27-09-2013
    10    27-09-2013
    11    05-03-2013
    12    05-03-2013
    13    24-09-2014
    14    18-10-2014
    15    18-10-2014
    16    26-06-2013
    17    26-06-2013
    18    26-06-2013
    19    26-06-2013
    Name: OrderDate, dtype: object




```python
df["OrderDate"]=pd.to_datetime(df["OrderDate"], dayfirst=True)
df["OrderDate"]
```




    0       2014-10-02
    1       2012-10-15
    2       2012-10-15
    3       2012-10-15
    4       2012-10-15
               ...    
    51285   2012-09-05
    51286   2012-09-05
    51287   2012-09-05
    51288   2012-09-05
    51289   2011-08-25
    Name: OrderDate, Length: 51290, dtype: datetime64[ns]




```python
df["Ship_Date"]=pd.to_datetime(df["Ship_Date"], dayfirst=True)
df["Ship_Date"]
```




    0       2014-10-06
    1       2012-10-20
    2       2012-10-20
    3       2012-10-20
    4       2012-10-20
               ...    
    51285   2012-09-07
    51286   2012-09-07
    51287   2012-09-07
    51288   2012-09-07
    51289   2011-08-29
    Name: Ship_Date, Length: 51290, dtype: datetime64[ns]




```python
df["CustomerID"].unique() 
#new column
df["Order_processing_time"]=df["Ship_Date"]-df["OrderDate"]
df["Order_processing_time"]
df.columns
```




    Index(['RowID', 'Category', 'City', 'Country', 'CustomerID', 'Customer_Name',
           'Discount', 'Market', 'OrderDate', 'OrderID', 'Order_Priority',
           'ProductID', 'Product_Name', 'Profit', 'Quantity', 'Region', 'Sales',
           'Segment', 'Ship_Date', 'Ship_Mode', 'Shipping_Cost', 'State',
           'Sub_Category', 'Year', 'Market2', 'Weeknum', 'Order_processing_time'],
          dtype='object')




```python
# Find total sales,profit and quantity overall. 
Total_sales = df['Sales'].sum()
print("Total sales:",Total_sales)
Total_profit = df['Profit'].sum()
print("Total Profit:",Total_profit)
Total_quantity = df["Quantity"].sum()
print("Total Quantity:",Total_quantity)
Customer_Count=df["CustomerID"].value_counts().sum()
print("Total Customers:",Customer_Count)
```

    Total sales: 12642905
    Total Profit: 1467457.29128
    Total Quantity: 178312
    Total Customers: 51290
    


```python
#top-10 products- total profit & total sales
df.groupby("Product_Name").agg(
    Total_Sales=("Sales", "sum"),
    Total_Profit=("Profit", "sum")
).sort_values(
    by="Total_Profit",
    ascending=False
).head(10)
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>Total_Sales</th>
      <th>Total_Profit</th>
    </tr>
    <tr>
      <th>Product_Name</th>
      <th></th>
      <th></th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>Canon imageCLASS 2200 Advanced Copier</th>
      <td>61600</td>
      <td>25199.9280</td>
    </tr>
    <tr>
      <th>Cisco Smart Phone, Full Size</th>
      <td>76441</td>
      <td>17238.5206</td>
    </tr>
    <tr>
      <th>Motorola Smart Phone, Full Size</th>
      <td>73159</td>
      <td>17027.1130</td>
    </tr>
    <tr>
      <th>Hoover Stove, Red</th>
      <td>31664</td>
      <td>11807.9690</td>
    </tr>
    <tr>
      <th>Sauder Classic Bookcase, Traditional</th>
      <td>39110</td>
      <td>10672.0730</td>
    </tr>
    <tr>
      <th>Harbour Creations Executive Leather Armchair, Adjustable</th>
      <td>50120</td>
      <td>10427.3260</td>
    </tr>
    <tr>
      <th>Nokia Smart Phone, Full Size</th>
      <td>71904</td>
      <td>9938.1955</td>
    </tr>
    <tr>
      <th>Cisco Smart Phone, with Caller ID</th>
      <td>43124</td>
      <td>9786.6408</td>
    </tr>
    <tr>
      <th>Nokia Smart Phone, with Caller ID</th>
      <td>47880</td>
      <td>9465.3257</td>
    </tr>
    <tr>
      <th>Belkin Router, USB</th>
      <td>23473</td>
      <td>8955.0180</td>
    </tr>
  </tbody>
</table>
</div>




```python
#loss-making categories
df.groupby("Category").agg(Total_Profit=("Profit","sum")).sort_values("Total_Profit").head()
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>Total_Profit</th>
    </tr>
    <tr>
      <th>Category</th>
      <th></th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>Furniture</th>
      <td>285204.72380</td>
    </tr>
    <tr>
      <th>Office Supplies</th>
      <td>518473.83430</td>
    </tr>
    <tr>
      <th>Technology</th>
      <td>663778.73318</td>
    </tr>
  </tbody>
</table>
</div>




```python
#Insight: Furniture has the lowest total profit among all categories. Although it generates substantial sales, 
#profitability is lower than Technology and Office Supplies, suggesting higher discounts, higher costs, or lower margins.
```


```python
#regional sales performance
df.groupby("Region")["Sales"].sum().sort_values(ascending=False).head(10)
```




    Region
    Central           2822399
    South             1600960
    North             1248192
    Oceania           1100207
    Southeast Asia     884438
    North Asia         848349
    EMEA               806184
    Africa             783776
    Central Asia       752839
    West               725514
    Name: Sales, dtype: int64




```python
# Identify delays: orders where Ship Date < Order Date.
delays_orders = df[df['Ship_Date']< df['OrderDate']]
delays_orders.shape[0]
```




    6537




```python
#Customers with high sales and low profit
```


```python
customer_summary=df.groupby("Customer_Name").agg(Total_Sales=("Sales","sum"), Total_Profit=("Profit","sum")).reset_index()
customer_summary.head()
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>Customer_Name</th>
      <th>Total_Sales</th>
      <th>Total_Profit</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>0</th>
      <td>Aaron Bergman</td>
      <td>24646</td>
      <td>4683.20800</td>
    </tr>
    <tr>
      <th>1</th>
      <td>Aaron Hawkins</td>
      <td>20759</td>
      <td>2450.92904</td>
    </tr>
    <tr>
      <th>2</th>
      <td>Aaron Smayling</td>
      <td>14207</td>
      <td>369.16180</td>
    </tr>
    <tr>
      <th>3</th>
      <td>Adam Bellavance</td>
      <td>20189</td>
      <td>4979.97690</td>
    </tr>
    <tr>
      <th>4</th>
      <td>Adam Hart</td>
      <td>21720</td>
      <td>1902.03342</td>
    </tr>
  </tbody>
</table>
</div>




```python
high_sales_threshold=customer_summary["Total_Sales"].quantile(0.75)
low_profit_threshold = customer_summary['Total_Profit'].quantile(0.25)
high_sales_low_profit = customer_summary[
    (customer_summary["Total_Sales"] > high_sales_threshold) &
    (customer_summary["Total_Profit"] < low_profit_threshold)
]
high_sales_low_profit.head(10)
```




<div>
<style scoped>
    .dataframe tbody tr th:only-of-type {
        vertical-align: middle;
    }

    .dataframe tbody tr th {
        vertical-align: top;
    }

    .dataframe thead th {
        text-align: right;
    }
</style>
<table border="1" class="dataframe">
  <thead>
    <tr style="text-align: right;">
      <th></th>
      <th>Customer_Name</th>
      <th>Total_Sales</th>
      <th>Total_Profit</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th>75</th>
      <td>Becky Martin</td>
      <td>27173</td>
      <td>-1096.92540</td>
    </tr>
    <tr>
      <th>96</th>
      <td>Brad Eason</td>
      <td>18986</td>
      <td>978.02410</td>
    </tr>
    <tr>
      <th>116</th>
      <td>Bruce Stewart</td>
      <td>19234</td>
      <td>496.95910</td>
    </tr>
    <tr>
      <th>143</th>
      <td>Charles McCrossin</td>
      <td>20156</td>
      <td>746.68682</td>
    </tr>
    <tr>
      <th>202</th>
      <td>Darrin Van Huff</td>
      <td>22749</td>
      <td>616.32492</td>
    </tr>
    <tr>
      <th>210</th>
      <td>David Philippe</td>
      <td>23730</td>
      <td>834.53052</td>
    </tr>
    <tr>
      <th>222</th>
      <td>Denise Monton</td>
      <td>22051</td>
      <td>-2597.80290</td>
    </tr>
    <tr>
      <th>250</th>
      <td>Edward Hooks</td>
      <td>21272</td>
      <td>671.19340</td>
    </tr>
    <tr>
      <th>308</th>
      <td>Grant Thornton</td>
      <td>20226</td>
      <td>-3577.92306</td>
    </tr>
    <tr>
      <th>322</th>
      <td>Harry Greene</td>
      <td>24217</td>
      <td>-291.49228</td>
    </tr>
  </tbody>
</table>
</div>




```python
print(df.shape)

```

    (51290, 26)
    


```python
#cleaned data export
dataset=df.to_csv(r"C:\Users\User\Downloads\superstore_clean.csv",index=False)
```


```python

```


    ---------------------------------------------------------------------------

    NameError                                 Traceback (most recent call last)

    Cell In[2], line 1
    ----> 1 print(dataset.shape)
    

    NameError: name 'dataset' is not defined



```python

```
