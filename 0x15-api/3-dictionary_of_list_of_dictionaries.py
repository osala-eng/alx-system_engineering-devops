#!/usr/bin/python3
"""
Extend script from Task 0 and Export data in CSV format
"""
import json
import requests


def all_to_json():
    """return API data"""
    USERS = []
    users = requests.get("http://jsonplaceholder.typicode.com/users")
    for user in users.json():
        USERS.append((user.get('id'), user.get('username')))
    TASK_STATUS_TITLE = []
    todos = requests.get("http://jsonplaceholder.typicode.com/todos")
    for todo in todos.json():
        TASK_STATUS_TITLE.append((todo.get('userId'),
                                  todo.get('completed'),
                                  todo.get('title')))

    """export to json"""
    data = dict()
    for user in USERS:
        todo = []
        for task in TASK_STATUS_TITLE:
            if task[0] == user[0]:
                todo.append({"task": task[2], "completed": task[1],
                             "username": user[1]})
        data[str(user[0])] = todo
    filename = "todo_all_employees.json"
    with open(filename, "w") as file:
        json.dump(data, file, sort_keys=True)


if __name__ == "__main__":
    all_to_json()
