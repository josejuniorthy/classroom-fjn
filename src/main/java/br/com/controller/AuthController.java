package br.com.controller;

import br.com.caelum.vraptor.Controller;
import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Result;
import br.com.components.AuthSession;
import br.com.domain.Credentials;
import javax.inject.Inject;

@Controller
public class AuthController {

    @Inject
    private AuthSession authSession;

    @Inject
    private Result result;

    @Get("signin")
    public void login() {

    }

    @Post("auth")
    public void authenticate(Credentials credentials) {

        if (credentials.getUserName().equalsIgnoreCase("joao")
                && credentials.getPassword().equals("123")) {
            authSession.setUserName(credentials.getUserName());
            authSession.setIsLogged(true);
            result.redirectTo(homeController.class).home();
        } else {
            result.include("loginErrorMsg", "Alguma coisa errada não está certa!");
            result.redirectTo(this).login();
        }
    }

    @Get("signout")
    public void signout() {
        authSession.signout();
        result.redirectTo(this).login();
    }

}
