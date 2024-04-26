import axios from "axios";

const readTodos = async () => {
  let res = await axios.get('http://backend:8080/todos');

  return res.data;
}

const createTodo = async (name) => {
    let res = await axios.post(
        'http://backend:8080/todos',
        {
            'name': name
        }
    );

    return res.data;
}

const doneTodo = async (id) => {
    let res = await axios.put(
        `http://backend:8080/todos/${id}/done`
    );

    return res.data;
}

const undoneTodo = async (id) => {
    let res = await axios.delete(
        `http://backend:8080/todos/${id}/done`
    );

    return res.data;
}

export {
    readTodos,
    createTodo,
    doneTodo,
    undoneTodo
}