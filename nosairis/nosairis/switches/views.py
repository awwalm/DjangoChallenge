import mysql.connector
from django.shortcuts import render
from plotly.offline import plot
import plotly.graph_objects as go
from .models import Ping, Report


# Create your views here.


def home(request):
    return render(request, 'home.html',
                  {'section': 'home'})


def report(request):
    reports = Report.objects.all()
    return render(request, 'report.html',
                  {'section': 'report',
                   'reports': reports})


def chart(request):

    # FIRST GRAPH VARIABLES
    connection = mysql.connector.connect(host='localhost',
                                         database='switches',
                                         user='madjango',
                                         port='3306',
                                         password='123django')
    ping_status_row, unix_timestamp_row, alert_datetime_row = [], [], []
    cursor = connection.cursor()
    cursor.execute('USE switches;')
    cursor.execute('SELECT * FROM switches.switches_switch1;')
    records = cursor.fetchall()

    # SECOND GRAPH
    connection2 = mysql.connector.connect(host='localhost',
                                          database='switches',
                                          user='madjango',
                                          port='3306',
                                          password='123django')
    ping_status_row2, unix_timestamp_row2, alert_datetime_row2 = [], [], []
    cursor2 = connection2.cursor()
    cursor2.execute('USE switches;')
    cursor2.execute('SELECT * FROM switches.switches_switch2;')
    records2 = cursor2.fetchall()

    # THIRD GRAPH VARIABLES
    connection3 = mysql.connector.connect(host='localhost',
                                          database='switches',
                                          user='madjango',
                                          port='3306',
                                          password='123django')
    ping_status_row3, unix_timestamp_row3, alert_datetime_row3 = [], [], []
    cursor3 = connection3.cursor()
    cursor3.execute('USE switches;')
    cursor3.execute('SELECT * FROM switches.switches_switch3;')
    records3 = cursor3.fetchall()

    try:

        # SWITCH 1 GRAPH
        for row in records:
            # row = cursor.fetchone()
            ping_status_row.append(row[1])
            unix_timestamp_row.append(row[2])
            alert_datetime_row.append(row[3])
        sumg1 = sum(ping_status_row)
        leng1 = len(ping_status_row)
        last1 = ping_status_row[-1]
        ming1 = min(ping_status_row)
        maxg1 = max(ping_status_row)
        avgg1 = sumg1 / leng1
        annotation1 = f'last: {last1}<br>min: {ming1}<br>avg: {avgg1:.4f}<br>max: {maxg1}'
        s1graph = go.Scatter(
            x=alert_datetime_row,
            y=ping_status_row,
            mode='lines',
            name='ICMP Ping',
            line=dict(color='green'),
        )
        s1layout = go.Layout(
            xaxis=dict(title='Time'),
            yaxis=dict(title='Ping Status'),
            title='SW-S1 Ping Availability',
            showlegend=True,
            annotations=[
                go.layout.Annotation(
                    text=annotation1,
                    align='left',
                    showarrow=False,
                    xref='paper',
                    yref='paper',
                    x=1.1,
                    y=0.8,
                    bordercolor='black',
                    borderwidth=1
                )
            ],
        )
        s1fig = go.Figure(data=[s1graph], layout=s1layout)
        plot_div = plot(s1fig, output_type='div')

        # SWITCH 2 GRAPH
        for row in records2:
            # row = cursor.fetchone()
            ping_status_row2.append(row[1])
            unix_timestamp_row2.append(row[2])
            alert_datetime_row2.append(row[3])
        sumg2 = sum(ping_status_row2)
        leng2 = len(ping_status_row2)
        last2 = ping_status_row2[-1]
        ming2 = min(ping_status_row2)
        maxg2 = max(ping_status_row2)
        avgg2 = sumg2 / leng2
        annotation2 = f'last: {last2}<br>min: {ming2}<br>avg: {avgg2:.4f}<br>max: {maxg2}'
        s2graph = go.Scatter(
            x=alert_datetime_row2,
            y=ping_status_row2,
            mode='lines',
            name='ICMP Ping',
            line=dict(color='green'),
        )
        s2layout = go.Layout(
            xaxis=dict(title='Time'),
            yaxis=dict(title='Ping Status'),
            title='SW-S2 Ping Availability',
            showlegend=True,
            annotations=[
                go.layout.Annotation(
                    text=annotation2,
                    align='left',
                    showarrow=False,
                    xref='paper',
                    yref='paper',
                    x=1.1,
                    y=0.8,
                    bordercolor='black',
                    borderwidth=1
                )
            ],
        )
        s2fig = go.Figure(data=[s2graph], layout=s2layout)
        plot2_div = plot(s2fig, output_type='div')

        # SWITCH 3 GRAPH
        for row in records3:
            # row = cursor.fetchone()
            ping_status_row3.append(row[1])
            unix_timestamp_row3.append(row[2])
            alert_datetime_row3.append(row[3])
        sumg3 = sum(ping_status_row3)
        leng3 = len(ping_status_row3)
        last3 = ping_status_row3[-1]
        ming3 = min(ping_status_row3)
        maxg3 = max(ping_status_row3)
        avgg3 = sumg3 / leng3
        annotation3 = f'last: {last3}<br>min: {ming3}<br>avg: {avgg3:.4f}<br>max: {maxg3}'
        s3graph = go.Scatter(
            x=alert_datetime_row3,
            y=ping_status_row3,
            mode='lines',
            name='ICMP Ping',
            line=dict(color='green'),
        )
        s3layout = go.Layout(
            xaxis=dict(title='Time'),
            yaxis=dict(title='Ping Status'),
            title='SW-S3 Ping Availability',
            showlegend=True,
            annotations=[
                go.layout.Annotation(
                    text=annotation3,
                    align='left',
                    showarrow=False,
                    xref='paper',
                    yref='paper',
                    x=1.1,
                    y=0.8,
                    bordercolor='black',
                    borderwidth=1
                )
            ],
        )
        s3fig = go.Figure(data=[s3graph], layout=s3layout)
        plot3_div = plot(s3fig, output_type='div')

        # RETURN RENDER RESPONSE OF THREE GRAPHS
        return render(request, "chart.html", context={'section': 'chart',
                                                      'plot_div': plot_div,
                                                      'plot2_div': plot2_div,
                                                      'plot3_div': plot3_div})

    except mysql.connector.Error as error:
        print("Failed to connect to MySQL: {}".format(error))

    finally:
        if connection.is_connected():
            cursor.close()
            connection.close()
            print("MySQL connection to SW-1 database is closed")
        if connection2.is_connected():
            cursor2.close()
            connection2.close()
            print("MySQL connection to SW-2 database is closed")
        if connection3.is_connected():
            cursor3.close()
            connection3.close()
            print("MySQL connection to SW-3 database is closed")
