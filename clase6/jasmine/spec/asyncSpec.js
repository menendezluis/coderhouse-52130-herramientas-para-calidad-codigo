describe("async example", function () {
  it("should return a json", async function () {
    expect(await asyncExample()).toEqual({
      userId: 1,
      id: 1,
      title: "delectus aut autem",
      completed: false,
    });
  });
  it("is completed", async function () {
    let result = await asyncExample();
    expect(result.completed).toEqual(false);
  });
});
