package yash;

import leap.core.annotation.Inject;
import leap.web.App;
import leap.web.api.Apis;
import leap.web.config.WebConfigurator;

public class Global extends App {

    protected @Inject Apis apis;

    @Override
    protected void configure(WebConfigurator c) {
        //todo : change the api name 'hello' to yours.
        apis.add("hello", "/");
    }
}