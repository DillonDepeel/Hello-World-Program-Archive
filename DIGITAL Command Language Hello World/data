from flask import Flask, request
import tweepy
from streamListener import MyStreamListener
app = Flask(__name__)

@app.route('/')
def hello_world():
    return 'Hello, World!'

@app.route('/hello')
def hello():
    return 'Hello, World'


def livetweet(trackList):
    print('Hiii')
    print(request)
    auth = tweepy.OAuthHandler('o2ipQeWmf1nRnmo9KuL54kYnr', 'hJjygIOjoS34Dv6n6DBYSzOSVHSHdey3AsaUcnpBT1A56GL9px')
    auth.set_access_token('1067670046900514816-7U45hCQmSethnnL2ApCIu4Dej1Lkh4', 'GK73yynnkFgBh4qd9SONpnNswFbQ70DmTLLeYQLYDOQNX')

    api = tweepy.API(auth)
    myStreamListener = MyStreamListener()
    myStream = tweepy.Stream(auth = api.auth, listener=myStreamListener)
    myStream.filter(track=trackList, is_async=True)
    return 'Hello, World'

@app.route('/checkpost', methods = ['POST'])
def checkpost():
    req_data = request.get_json()
    name = req_data['name']
    trackList = req_data['track']

    print('reqData', req_data)
    print('----', trackList)
    livetweet(trackList)
    return 'Hello ' + name + '!'
