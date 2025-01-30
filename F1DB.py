def create_Sqlite_connection(location_path, database_name):
    import sqlite3
    global connection
    connection = None
    location=location_path
    F1DB= database_name
    conn=location+F1DB
    # check the location of the database
    print (conn)
    # create new database
    connection = sqlite3.connect(conn)
    print('Database created.')
    connection.commit()
    print('Changes saved.')
    return connection

def readcsv(location, filename):
    import pandas as pd
    loc=location
    fname=filename
    locate_file=loc+fname
    print (locate_file)
    df= pd.read_csv(locate_file)
    return df

def writecsv_to_db(dataframe, table_name):
    import pandas as pd
    df1=dataframe
    table=table_name
    print(table)
    df1.to_sql(table, connection, if_exists='replace', index=False)
    return table_name

def displaydbtable(query_string, connection):
    import pandas as pd
    query_str = query_string
    print(query_str)
    dataframe = pd.read_sql(query_str, connection)
    return dataframe