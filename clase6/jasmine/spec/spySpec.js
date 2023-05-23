describe("each", function () {
  //let mockFn = jasmine.createSpy();
  let mockFn = jasmine.createSpy();

  it("calls a function for each element of an array", function () {
    let arr = [1, 2, 3, 4, 5, 6, 7, 8, "a", "b"];

    each(arr, mockFn);
    expect(mockFn.calls.count()).toBe(10);
  });

  it("can spy on getter", () => {
    spyOnProperty(foop, "value", "get").and.returnValue(1);
    expect(foop.value).toBe(1);
  });

  it("and on setter", () => {
    const spiez = spyOnProperty(foop, "value", "set");
    foop.value = false;
    expect(spiez).toHaveBeenCalled();
  });
});
