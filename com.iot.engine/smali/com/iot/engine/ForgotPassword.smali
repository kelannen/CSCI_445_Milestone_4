.class public Lcom/iot/engine/ForgotPassword;
.super Landroid/app/Activity;
.source "ForgotPassword.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iot/engine/ForgotPassword$ForgotPasswordAsync;
    }
.end annotation


# instance fields
.field private btnSave:Landroid/widget/Button;

.field private mEdtMail:Landroid/widget/EditText;

.field private mEmailID:Ljava/lang/String;

.field private spotDialog:Ldmax/dialog/SpotsDialog;

.field private tag_json_obj:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 32
    const-string v0, "jobj_req"

    iput-object v0, p0, Lcom/iot/engine/ForgotPassword;->tag_json_obj:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/iot/engine/ForgotPassword;->mEmailID:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/iot/engine/ForgotPassword;)Ldmax/dialog/SpotsDialog;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/ForgotPassword;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/iot/engine/ForgotPassword;->spotDialog:Ldmax/dialog/SpotsDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/iot/engine/ForgotPassword;Ldmax/dialog/SpotsDialog;)Ldmax/dialog/SpotsDialog;
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/ForgotPassword;
    .param p1, "x1"    # Ldmax/dialog/SpotsDialog;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/iot/engine/ForgotPassword;->spotDialog:Ldmax/dialog/SpotsDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/iot/engine/ForgotPassword;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/ForgotPassword;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/iot/engine/ForgotPassword;->mEmailID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/iot/engine/ForgotPassword;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/ForgotPassword;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/iot/engine/ForgotPassword;->mEdtMail:Landroid/widget/EditText;

    return-object v0
.end method

.method private initControl()V
    .locals 1

    .prologue
    .line 46
    const v0, 0x7f0d00b9

    invoke-virtual {p0, v0}, Lcom/iot/engine/ForgotPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iot/engine/ForgotPassword;->btnSave:Landroid/widget/Button;

    .line 47
    const v0, 0x7f0d014d

    invoke-virtual {p0, v0}, Lcom/iot/engine/ForgotPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/iot/engine/ForgotPassword;->mEdtMail:Landroid/widget/EditText;

    .line 48
    iget-object v0, p0, Lcom/iot/engine/ForgotPassword;->btnSave:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    return-void
.end method

.method private isFieldSubmtted()Z
    .locals 4

    .prologue
    const v3, 0x7f060085

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 149
    iget-object v2, p0, Lcom/iot/engine/ForgotPassword;->mEdtMail:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v1, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/iot/engine/ForgotPassword;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/iot/engine/ForgotPassword;->myToast(Ljava/lang/String;)V

    .line 160
    :goto_0
    return v0

    .line 154
    :cond_0
    invoke-virtual {p0}, Lcom/iot/engine/ForgotPassword;->validateEmail()Z

    move-result v2

    if-nez v2, :cond_1

    .line 156
    invoke-virtual {p0}, Lcom/iot/engine/ForgotPassword;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/iot/engine/ForgotPassword;->myToast(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 160
    goto :goto_0
.end method

.method private myToast(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 143
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 144
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 55
    invoke-direct {p0}, Lcom/iot/engine/ForgotPassword;->isFieldSubmtted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/iot/engine/ForgotPassword;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 57
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/iot/engine/ForgotPassword;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 58
    invoke-static {p0}, Lcom/iot/engine/MainActivity;->isInternetAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    iget-object v1, p0, Lcom/iot/engine/ForgotPassword;->mEdtMail:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iot/engine/ForgotPassword;->mEmailID:Ljava/lang/String;

    .line 61
    new-instance v1, Lcom/iot/engine/ForgotPassword$ForgotPasswordAsync;

    invoke-direct {v1, p0}, Lcom/iot/engine/ForgotPassword$ForgotPasswordAsync;-><init>(Lcom/iot/engine/ForgotPassword;)V

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/iot/engine/ForgotPassword$ForgotPasswordAsync;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 68
    .end local v0    # "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    :goto_0
    return-void

    .line 65
    .restart local v0    # "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    const-string v1, "Check internet connection!!!"

    invoke-direct {p0, v1}, Lcom/iot/engine/ForgotPassword;->myToast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 39
    const v0, 0x7f040058

    invoke-virtual {p0, v0}, Lcom/iot/engine/ForgotPassword;->setContentView(I)V

    .line 41
    invoke-direct {p0}, Lcom/iot/engine/ForgotPassword;->initControl()V

    .line 42
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 165
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 166
    invoke-static {p0}, Lnet/hockeyapp/android/CrashManager;->register(Landroid/content/Context;)V

    .line 167
    return-void
.end method

.method public validateEmail()Z
    .locals 3

    .prologue
    .line 132
    iget-object v2, p0, Lcom/iot/engine/ForgotPassword;->mEdtMail:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "emailInput":Ljava/lang/String;
    const-string v1, "^[_A-Za-z0-9-]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$"

    .line 136
    .local v1, "emailPattern":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 137
    const/4 v2, 0x0

    .line 140
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method
