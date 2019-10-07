const scanner = require("sonarqube-scanner");

scanner(
  {
    // this example uses local instance of SQ
    serverUrl: "https://sonarcloud.io/",
    options: {
      "sonar.projectVersion": "1.0.0",
      "sonar.sources": "src",
      "sonar.tests": "e2e",
      "sonar.typescript.lcov.reportPaths": "coverage/lcov.info",
      "sonar.testExecutionReportPaths": "test-report.xml"
    },
  },
  () => {
    // callback is required
  }
);
