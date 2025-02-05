import nimib as nb

nb.init()

nb.text("Welcome to `nimib.py`!")

message = "hello"

with nb.code():
    print(message)

nb.save()
