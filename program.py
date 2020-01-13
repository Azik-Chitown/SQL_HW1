import pandas as pd
df=pd.read_csv('./Loan.csv')
f=open("./programOutput.txt", "w")
f.write(

    """drop table Loan;
create table Loan(
Amount Number(8),
dt Date,
Loan_Title varchar(80),
Risk_Score Number(3)check (Risk_Score>=0) ,
Debt_To_Income_Ration Decimal(8,2) check(Debt_To_Income_Ration>=0),
Zipcode Number(5),
Sate Varchar(2),
Employment_Length Decimal(2)check (Employment_Length>=0),
Policy_Code Number(2),
Primary Key(Amount,Loan_Title));\n"""
)
for i in df.index:
    str=df['Loan_Title'][i]
    str=str.replace("'", "' || '''' || '")
    f.write("\n insert into Loan values({}, to_date('{}', 'MM/DD/YY'), '{}', {}, {}, {}, '{}', {}, {});".format(df['Amount'][i],df['Date'][i],str, df['Risk_Score'][i], df['Debt_To_Income_Ratio'][i], df['Zipcode'][i], df['State'][i], df['Employment_Length'][i], df['Policy_Code'][i]))
f.close()