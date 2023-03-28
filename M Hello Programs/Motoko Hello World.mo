const mo = require('motoko');

// Create a Motoko script in a virtual file system
mo.write('Main.mo', `
  actor {
      public query func hello() : async Text {
          "Hello, World!"
      };
  }
`);

// Generate the corresponding Candid interface
console.log(mo.candid('Main.mo'));
