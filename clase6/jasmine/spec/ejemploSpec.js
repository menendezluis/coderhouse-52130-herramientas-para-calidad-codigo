function sumar(a, b) {
  return a + b;
}
function restar(a, b) {
  return a - b;
}
function multiplicar(a, b) {
  return a * b;
}
function dividir(a, b) {
  return a / b;
}

function saludar(nombre) {
  return `Hola ${nombre}`;
}

function buenDia() {
  const hora = new Date().getHours();
  if (hora < 12) {
    return "Buen día";
  } else if (hora < 20) {
    return "Buenas tardes";
  } else {
    return "Buenas noches";
  }
}

function isCompleted() {
  const myResult = {
    userId: 1,
    id: 1,
    title: "delectus aut autem",
    completed: false,
  };

  return myResult.completed;
}

describe("matematicas", () => {
  it("sumar", () => {
    expect(sumar(1, 2)).toEqual(3);
  });
  it("restar", () => {
    expect(restar(1, 2)).toEqual(-1);
  });
  it("multiplicar", () => {
    expect(multiplicar(1, 2)).toEqual(2);
  });
  it("dividir", () => {
    expect(dividir(1, 2)).toEqual(0.5);
  });
});

describe("saludar", () => {
  it("saludar", () => {
    expect(saludar("Mundo")).toEqual("Hola Mundo");
  });
  it("buenDia", () => {
    expect(buenDia()).toEqual("Buen día");
  });
});

describe("isCompleted", () => {
  it("isCompleted", () => {
    expect(isCompleted()).toEqual(false);
  });
});
