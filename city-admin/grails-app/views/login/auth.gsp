<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="login">
    <title><g:message code="springSecurity.login.title"/></title>
</head>
<body class="signin signin-vertical">
<div class="page-container">
    <div id="header-container">
        <div id="header">
            <div class="navbar-inverse navbar-fixed-top">
                <div class="navbar-inner">
                    <div class="container"> </div>
                </div>
            </div>
            <!-- // navbar -->

            <div class="header-drawer" style="height:3px"> </div>
            <!-- // breadcrumbs -->
        </div>
        <!-- // drawer -->
    </div>
    <!-- // header-container -->

    <div id="main-container">
        <div id="main-content" class="main-content container">
            <div class="signin-content">
                <h1 class="welcome text-center" style="line-height: 0.6;"><br />
                    City.ps<small> admin panel</small></h1>
                <div class="well well-black well-impressed">
                    <div class="tab-content overflow">
                        <div class="tab-pane fade in active" id="login">
                            <h3 class="no-margin-top"><i class="fontello-icon-user-4"></i> Sign in with your ID</h3>
                            <form action='${postUrl}' method='POST' id='loginForm'>
                                <fieldset>
                                    <ul>
                                        <li>
                                            <input class="input-block-level" type="text" name='j_username' id='username' placeholder="<g:message code="springSecurity.login.username.label"/>">
                                        </li>
                                        <li>
                                            <input  class="input-block-level" type="password" name='j_password' id='password' placeholder="<g:message code="springSecurity.login.password.label"/>">
                                        </li>
                                    </ul>
                                    <button type="submit" class="btn btn-yellow btn-block btn-large">SIGN IN</button>
                                    <hr class="margin-xm">
                                    <label class="checkbox pull-left">
                                        <input id="remember" class="checkbox" type="checkbox">
                                        <g:message code="springSecurity.login.remember.me.label"/></label>
                                    <a href="#forgot" class="pull-right link" data-toggle="tab">Forgot Password?</a>
                                </fieldset>
                            </form>
                            <!-- // form -->

                        </div>
                        <!-- // Tab Login -->

                        <div class="tab-pane fade" id="forgot">
                            <h3 class="no-margin-top">Forgot your password?</h3>
                            <form class="margin-00" method="post" action="dashboard-one.html" name="forgot_password">
                                <p class="note">Enter your e-mail address, we will send you an e-mail code for password reset.</p>
                                <input id="email" class="input-block-level" type="email" name="id_email_forgot" placeholder="your email">
                                <p class="text-center">or</p>
                                <input id="email" class="input-block-level" type="tel" name="id_phone_forgot" placeholder="number phone">
                                <hr class="margin-xm">
                                <button type="submit" class="btn btn-yellow">Submit</button>
                                <p>Have you remembered? <a href="#login" class="pull-right link" data-toggle="tab">Try to log in again.</a></p>
                            </form>
                            <!-- // form -->

                        </div>
                        <!-- // Tab Forgot -->

                        <div class="tab-pane fade" id="register">
                            <h3 class="no-margin-top"><i class="fontello-icon-users"></i> New User Registration</h3>
                            <form class="form-tied margin-00" method="post" action="dashboard-one.html" name="login_form">
                                <fieldset>
                                    <legend class="two"><span>Account information</span></legend>
                                    <ul>
                                        <li>
                                            <input id="idLogin" class="input-block-level" type="text" name="id_name" placeholder="name">
                                        </li>
                                        <li>
                                            <input id="idLogin" class="input-block-level" type="text" name="id_username" placeholder="username">
                                        </li>
                                        <li>
                                            <input id="idLogin" class="input-block-level" type="text" name="id_email_address" placeholder="email address">
                                        </li>
                                    </ul>
                                </fieldset>
                                <fieldset>
                                    <legend class="two"><span>Password</span></legend>
                                    <ul>
                                        <li>
                                            <input id="idPassw" class="input-block-level" type="password" name="password" placeholder="password">
                                        </li>
                                        <li>
                                            <input id="idPassw" class="input-block-level" type="password" name="confirm_password" placeholder="confirm password">
                                        </li>
                                    </ul>
                                    <button type="submit" class="btn btn-green btn-block btn-large">REGISTER TO BOO</button>
                                    <hr class="margin-xm">
                                    <p>Have you remembered? <a href="#login" class="pull-right link" data-toggle="tab">Try to log in again.</a></p>
                                </fieldset>
                            </form>
                            <!-- // form -->

                        </div>
                        <!-- // Tab Forgot -->

                    </div>
                </div>
                <!-- // Well-Black -->

                <div class="web-description">
                    <h5>Copyright &copy; 2013 city.ps</h5>
                    <p> All rights reserved.</p>
                </div>


            </div>
            <!-- // sign-content -->



        </div>
        <!-- // main-content -->

    </div>
    <!-- // main-container  -->

</div>
<!-- // page-container -->
</body>
</html>
