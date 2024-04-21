// SPDX-License-Identifier: MIT

pragma solidity ^0.8.25;


contract TodoApp {

    // string public task = "learn solidity";
    // bool private completed = true;

    struct Task {
        uint id;
        string task;
        bool completed;

    }

    Task[] public tasks;

    function addTask(string memory _newTask) public {
        // 1. create a new task using the _newTask variable
        Task memory newTask = Task(tasks.length, _newTask, false);
        
        // 2. add the new Task to the tasks array
        tasks.push(newTask);
    }

    function markAsCompleted(uint _id) public {
        // 1. get the task from the tasks array using the id

        Task storage targetTask = tasks[_id];

        // 3. before we mark a task as compelte, check if it is already complete;

        require(targetTask.completed == false, "task is already complete");
        targetTask.completed = true;
        // 2. mark its completed property as true
    }

    function markAsUncompleted(uint _id) public {
        Task storage targetTask = tasks[_id];

        require(targetTask.completed == true, "task is already uncomplete");

        targetTask.completed = false;
    }

    function deleteTask(uint _id) public {
        // to delete the _idth task from the array
    }

}