{atkconfig var="login_logo" smartyvar="login_logo"}

<style>
    #debugger_wrapper{
        display: none;
    }
</style>

<div class="login-box text-sm" style="margin-top:30%; margin-left: auto; margin-right: auto;">
    <div class="card card-outline card-primary">
        <div class="card-header text-center">
            <a href="#" class="h1"><img src="{$login_logo}" class="center-block img-responsive login-logo" width="100%" height="auto" alt="logo"></a>
        </div>
        <div class="card-body">
            <p class="login-box-msg">{atktext id="otp_form_title"}</p>

            {if isset($error)}
                <div class="alert alert-danger"><p>{$error}</p></div>
            {/if}

            {if isset($message)}
                <div class="alert alert-info"><p>{$message}</p></div>
            {/if}

            <p>{atktext id="otp_form_description"}</p>

            <form action="{$formurl}" method="post">

                {$atksessionformvars}

                <div class="input-group mb-3">
                    <input type="text" class="form-control" placeholder="{atktext id="otp_code"}"
                           id="auth_otp" name="auth_otp" value=""
                           maxlength="{$otp_length}" inputmode="numeric" pattern="[0-9]*"
                           autocomplete="one-time-code" autofocus>
                    <div class="input-group-append">
                        <div class="input-group-text">
                            <span class="fas fa-key"></span>
                        </div>
                    </div>
                </div>

                {* the verify button comes first so that pressing Enter submits the code, not the resend request *}
                <div class="row">
                    <div class="col-4 my-auto order-2">
                        <button type="submit" class="btn btn-primary btn-block">{atktext id="otp_verify"}</button>
                    </div>
                    <div class="col-8 my-auto order-1">
                        <button type="submit" class="btn btn-link p-0" name="otp_resend" value="1"
                                formnovalidate>{atktext id="otp_resend"}</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
