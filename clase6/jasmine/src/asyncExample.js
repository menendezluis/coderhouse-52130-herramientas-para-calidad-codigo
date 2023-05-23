async function asyncExample() {
  const respuesta = await fetch("https://jsonplaceholder.typicode.com/todos/1");
  const json = await respuesta.json();
  return json;
}
