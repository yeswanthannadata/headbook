from flask import Flask, render_template
from flask.ext.mysqldb import MySQL

app = Flask(__name__)
mysql = MySQL()
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_DB'] = 'EPG_COMMONDB'
app.config['MYSQL_HOST'] = 'localhost'
mysql.init_app(app)

@app.route('/')
def total():
    cur = mysql.connection.cursor()
    cur.execute('''select count(*) from epg_source_stats''')
    total = cur.fetchone()
    cur.execute('''select count(*) from epg_source_stats where crawl_status like "Done"''')
    done = cur.fetchone()
    cur.execute('''select count(*) from epg_source_stats where crawl_status= "Hold"''')
    hold = cur.fetchone()
    cur.execute('''select source_name from epg_source_stats where crawl_status= "Done"''')
    done_list = cur.fetchall()
    cur.execute('''select source_name from epg_source_stats where crawl_status= "Hold"''')
    hold_list = cur.fetchall()
    context = {'total':total[0], 'done':done[0], 'hold':hold[0], 'done_list':done_list, 'hold_list':hold_list}
    return render_template('layout.html', **context)

if __name__ == '__main__':
    app.run(debug=True)
