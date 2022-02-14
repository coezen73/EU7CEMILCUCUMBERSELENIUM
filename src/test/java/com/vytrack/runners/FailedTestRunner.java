package com.vytrack.runners;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class) // to make this class 'RunnerClass' we add '@' -> run with junit
@CucumberOptions(
        plugin = {"html:target/failed-html-report"},  // to get the report
        features = "@target/rerun.txt",             //  <- we want to run  ONLY with 'failed test case'
        glue = "com/vytrack/step_definitions"       //  <- where to find step defs.

)
public class FailedTestRunner {
}
