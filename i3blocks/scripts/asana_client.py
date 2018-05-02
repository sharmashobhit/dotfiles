#!/home/shobhit/.virtualenvs/system/bin/python

import asana
client = asana.Client.access_token('0/70b4cff46c785333753001b68c7d5d5b')

me = client.users.me()
print("Hello " + me['name'])
