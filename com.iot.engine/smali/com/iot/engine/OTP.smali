.class public Lcom/iot/engine/OTP;
.super Landroid/app/Activity;
.source "OTP.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iot/engine/OTP$ForgotPasswordAsync;,
        Lcom/iot/engine/OTP$AsyncOTPVerification;
    }
.end annotation


# instance fields
.field private edtOTP:Landroid/widget/EditText;

.field private mBtnSubmit:Landroid/widget/Button;

.field private mEmailId:Ljava/lang/String;

.field private mOTP:Ljava/lang/String;

.field private mUserId:Ljava/lang/String;

.field private resendOTP:Landroid/widget/TextView;

.field private spotDialog:Ldmax/dialog/SpotsDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/iot/engine/OTP;->mUserId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/iot/engine/OTP;->mEmailId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/iot/engine/OTP;)Ldmax/dialog/SpotsDialog;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/OTP;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/iot/engine/OTP;->spotDialog:Ldmax/dialog/SpotsDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/iot/engine/OTP;Ldmax/dialog/SpotsDialog;)Ldmax/dialog/SpotsDialog;
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/OTP;
    .param p1, "x1"    # Ldmax/dialog/SpotsDialog;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/iot/engine/OTP;->spotDialog:Ldmax/dialog/SpotsDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/iot/engine/OTP;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/OTP;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/iot/engine/OTP;->mUserId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/iot/engine/OTP;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/OTP;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/iot/engine/OTP;->mOTP:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/iot/engine/OTP;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/OTP;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/iot/engine/OTP;->mEmailId:Ljava/lang/String;

    return-object v0
.end method

.method private initControl()V
    .locals 2

    .prologue
    .line 46
    const v0, 0x7f0d00ea

    invoke-virtual {p0, v0}, Lcom/iot/engine/OTP;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iot/engine/OTP;->mBtnSubmit:Landroid/widget/Button;

    .line 47
    const v0, 0x7f0d01fe

    invoke-virtual {p0, v0}, Lcom/iot/engine/OTP;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iot/engine/OTP;->resendOTP:Landroid/widget/TextView;

    .line 48
    const v0, 0x7f0d01fd

    invoke-virtual {p0, v0}, Lcom/iot/engine/OTP;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/iot/engine/OTP;->edtOTP:Landroid/widget/EditText;

    .line 50
    iget-object v0, p0, Lcom/iot/engine/OTP;->edtOTP:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-object v0, p0, Lcom/iot/engine/OTP;->mBtnSubmit:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iget-object v0, p0, Lcom/iot/engine/OTP;->resendOTP:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    invoke-virtual {p0}, Lcom/iot/engine/OTP;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "USERID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/iot/engine/OTP;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "USERID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iot/engine/OTP;->mUserId:Ljava/lang/String;

    .line 58
    invoke-virtual {p0}, Lcom/iot/engine/OTP;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EmailId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iot/engine/OTP;->mEmailId:Ljava/lang/String;

    .line 61
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 65
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 90
    :goto_0
    return-void

    .line 67
    :sswitch_0
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/iot/engine/OTP;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 68
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/iot/engine/OTP;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 69
    iget-object v1, p0, Lcom/iot/engine/OTP;->edtOTP:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/iot/engine/OTP;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06007c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 74
    :cond_0
    invoke-static {p0}, LSession/Constants;->isInternetAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 75
    iget-object v1, p0, Lcom/iot/engine/OTP;->edtOTP:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iot/engine/OTP;->mOTP:Ljava/lang/String;

    .line 76
    new-instance v1, Lcom/iot/engine/OTP$AsyncOTPVerification;

    invoke-direct {v1, p0}, Lcom/iot/engine/OTP$AsyncOTPVerification;-><init>(Lcom/iot/engine/OTP;)V

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/iot/engine/OTP$AsyncOTPVerification;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 78
    :cond_1
    const-string v1, "Check internet connection!!!"

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 83
    .end local v0    # "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    :sswitch_1
    invoke-static {p0}, LSession/Constants;->isInternetAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 84
    new-instance v1, Lcom/iot/engine/OTP$ForgotPasswordAsync;

    invoke-direct {v1, p0}, Lcom/iot/engine/OTP$ForgotPasswordAsync;-><init>(Lcom/iot/engine/OTP;)V

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/iot/engine/OTP$ForgotPasswordAsync;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 86
    :cond_2
    const-string v1, "Check internet connection!!!"

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 65
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0d00ea -> :sswitch_0
        0x7f0d01fe -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v0, 0x7f0400a2

    invoke-virtual {p0, v0}, Lcom/iot/engine/OTP;->setContentView(I)V

    .line 42
    invoke-direct {p0}, Lcom/iot/engine/OTP;->initControl()V

    .line 43
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 200
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 201
    invoke-static {p0}, Lnet/hockeyapp/android/CrashManager;->register(Landroid/content/Context;)V

    .line 202
    return-void
.end method
