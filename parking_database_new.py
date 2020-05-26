import mysql.connector 
import serial
import time

DB_NAME='carparkingsystempcinterface';

cnx = mysql.connector.connection.MySQLConnection(user='root', password='',
                                 host='localhost',
                                 database=DB_NAME);
cursor = cnx.cursor()
cursor.execute("USE {}".format(DB_NAME))
print("Connected");

DATA=[0,0,0,0,0,0];
OLD_DATA=[0,0,0,0,0,0];

def VIEW():
    global DATA;
    print('\nViewing');
    try:
        cnx = mysql.connector.connection.MySQLConnection(user='root', password='',
                                 host='localhost',
                                 database=DB_NAME);
        cursor = cnx.cursor()
        cursor.execute("USE {}".format(DB_NAME))
        cursor.execute("SELECT statuss,sloatno FROM parkingsloatno");
        result = cursor.fetchall()
        print(result);
        for i in range(0,6):
            DATA[i]=result[i][0];
        print(DATA);    
        print('Done\n\n');
        cursor.close();
        cnx.close();
    except mysql.connector.Error as err:
        print('Error:');
        print(err)
        
def UPDATE(ID,status):
    print('\nUpdating');
    try:
        cnx = mysql.connector.connection.MySQLConnection(user='root', password='',
                                 host='localhost',
                                 database=DB_NAME);
        cursor = cnx.cursor()
        cursor.execute("USE {}".format(DB_NAME))
        cursor.execute("UPDATE parkingsloatno SET statuss={} WHERE sloatno={}".format(status,ID));
        print('Updated SLOT({}) with VALUE({})'.format(ID,status));
        cnx.commit();
        cursor.close();
        cnx.close();
    except mysql.connector.Error as err:
        print('Error:');
        print(err)

VIEW();
for i in range(0,6):
    OLD_DATA[i]=DATA[i];
    
ser=serial.Serial('COM12');
done=False;
loop=0;

while not done:
    try:
        string="";
        while ser.inWaiting():
            print('\nData Received');
            string=ser.read(3);
            print(string);
        
        string=str(string);
        time.sleep(2);

        if(string!=""):
            if(string[2]=='a'):
                UPDATE(string[4],1);
            elif(string[2]=='r'):
                UPDATE(string[4],0);
            VIEW();
            for i in range(0,6):
                OLD_DATA[i]=DATA[i];
    
        loop=loop+1;
        if(loop>5):
            VIEW();
            for i in range(0,6):
                if(OLD_DATA[i]!=DATA[i]):
                    print('Data Changed at pos :{}'.format(i+1));
                    print('Sending Data');
                    temp=('*{}#'.format(i+1));
                    temp=temp.encode();
                    ser.write(temp);
                    for i in range(0,6):
                        OLD_DATA[i]=DATA[i];
    except KeyboardInterrupt :
        done=True;

print("Program Ended")
ser.close();
cnx.close();
