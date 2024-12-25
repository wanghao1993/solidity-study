import { buildModule } from "@nomicfoundation/hardhat-ignition/modules";

export default buildModule("Isaac", (m) => {
  const Isaac = m.contract("Isaac", ["Saturn V"]);

  m.call(Isaac, "mint", []);

  return { Isaac };
});
