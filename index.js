import statsig from "statsig-node";

async function run() {
  await statsig.initialize(process.env.TEST_SDK_KEY);
  const user = {
    userID: "test123",
  };
  const gateValue = await statsig.checkGate(user, "always_pass");
  console.log(gateValue);
}
run();
