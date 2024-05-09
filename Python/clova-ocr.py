
import time
import uuid
import requests
import json

api_url = ''
secret_key = ''

path = '/Users/jang-gyeonghun/24PF012/Chatbot/Python/test.jpeg'
files = [('file', open(path,'rb'))]

request_json = {'images': [{'format': 'jpg',
                                'name': 'demo'
                               }],
                    'requestId': str(uuid.uuid4()),
                    'version': 'V2',
                    'timestamp': int(round(time.time() * 1000))
                   }
 
payload = {'message': json.dumps(request_json).encode('UTF-8')}
 
headers = {
  'X-OCR-SECRET': secret_key,
}
 
response = requests.request("POST", api_url, headers=headers, data=payload, files=files)
result=response.json()

for i in result['images'][0]['fields']:
    print(i['inferText'])