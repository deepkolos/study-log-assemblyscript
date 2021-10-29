let pass;
let currTestName;
let expectIndex;
let errorIndex;
let taskChain = Promise.resolve();

const API = {
  test(name, cb) {
    taskChain = taskChain.then(() => {
      const t = performance.now();
      pass = true;
      currTestName = name;
      expectIndex = 0;
      errorIndex = -1;
      const promise = Promise.resolve(cb()).then(() => {
        console.log(
          `test: ${name} ${pass ? '√' : `×[${errorIndex}]`} (${(
            performance.now() - t
          ).toFixed(2)}ms)`,
        );
      });
      return promise;
    });
  },

  expect(inputValue) {
    const myExpectIndex = expectIndex++;
    return {
      toBe(targetValue) {
        function unpass(index) {
          console.log(`${currTestName}[${myExpectIndex}]inputValue:`, inputValue);
          console.log(`${currTestName}[${myExpectIndex}]targetValue:`, targetValue);
          pass = false;
          if (errorIndex === -1) errorIndex = index;
        }

        if (isArray(targetValue)) {
          if (!arrayEqual(targetValue, inputValue)) unpass(myExpectIndex);
        } else if (targetValue !== inputValue) unpass(myExpectIndex);
      },
    };
  },

  /**
   * @param {{[name: string]: () => void | Promise<void>}} obj
   */
  benchmark(obj, loopCount = 10000) {
    /**
     * @type {{[name: string]: number}}
     */
    const result = {};
    const resultFormatted = {};

    Object.keys(obj).forEach(key => {
      const t = performance.now();
      for (let i = loopCount; i > 0; i--) obj[key]();
      result[key] = performance.now() - t;
    });

    const min = Math.min(...Object.values(result));

    Object.keys(obj).forEach(async key => {
      const ms = result[key].toFixed(2);
      const ratio = (result[key] / min).toFixed(3);
      resultFormatted[key] = `${ms}ms (x${ratio})`;
    });

    console.log(`\n${currTestName}_benchmark_${loopCount}:`, resultFormatted);
  },
};

function arrayEqual(m0, m1) {
  for (let i = 0; i < m0.length; i++) {
    if (Math.abs(m0[i] - m1[i]) <  0.0001) return false;
  }
  return true;
}

function isArray(arr) {
  return Array.isArray(arr) || arr.forEach;
}

module.exports = API;
