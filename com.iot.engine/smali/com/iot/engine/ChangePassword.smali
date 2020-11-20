.class public Lcom/iot/engine/ChangePassword;
.super Landroid/app/Activity;
.source "ChangePassword.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iot/engine/ChangePassword$AsyncNewPasswordTask;
    }
.end annotation


# instance fields
.field private btnSave:Landroid/widget/Button;

.field private edtConfirmPassword:Landroid/widget/EditText;

.field private edtNewPassword:Landroid/widget/EditText;

.field private edtOldPassword:Landroid/widget/EditText;

.field private mNewPassword:Ljava/lang/String;

.field private mOldPassword:Ljava/lang/String;

.field sessionManager:LSession/SessionManager;

.field private spotDialog:Ldmax/dialog/SpotsDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/iot/engine/ChangePassword;)Ldmax/dialog/SpotsDialog;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/ChangePassword;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/iot/engine/ChangePassword;->spotDialog:Ldmax/dialog/SpotsDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/iot/engine/ChangePassword;Ldmax/dialog/SpotsDialog;)Ldmax/dialog/SpotsDialog;
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/ChangePassword;
    .param p1, "x1"    # Ldmax/dialog/SpotsDialog;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/iot/engine/ChangePassword;->spotDialog:Ldmax/dialog/SpotsDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/iot/engine/ChangePassword;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/ChangePassword;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/iot/engine/ChangePassword;->mOldPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/iot/engine/ChangePassword;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/ChangePassword;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/iot/engine/ChangePassword;->mNewPassword:Ljava/lang/String;

    return-object v0
.end method

.method private initControls()V
    .locals 1

    .prologue
    .line 53
    const v0, 0x7f0d00ec

    invoke-virtual {p0, v0}, Lcom/iot/engine/ChangePassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/iot/engine/ChangePassword;->edtOldPassword:Landroid/widget/EditText;

    .line 54
    const v0, 0x7f0d00ed

    invoke-virtual {p0, v0}, Lcom/iot/engine/ChangePassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/iot/engine/ChangePassword;->edtNewPassword:Landroid/widget/EditText;

    .line 55
    const v0, 0x7f0d00ee

    invoke-virtual {p0, v0}, Lcom/iot/engine/ChangePassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/iot/engine/ChangePassword;->edtConfirmPassword:Landroid/widget/EditText;

    .line 56
    new-instance v0, LSession/SessionManager;

    invoke-direct {v0, p0}, LSession/SessionManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iot/engine/ChangePassword;->sessionManager:LSession/SessionManager;

    .line 58
    const v0, 0x7f0d00b9

    invoke-virtual {p0, v0}, Lcom/iot/engine/ChangePassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iot/engine/ChangePassword;->btnSave:Landroid/widget/Button;

    .line 59
    iget-object v0, p0, Lcom/iot/engine/ChangePassword;->btnSave:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    return-void
.end method

.method private isFieldSubmtted()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 150
    iget-object v2, p0, Lcom/iot/engine/ChangePassword;->edtOldPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v1, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/iot/engine/ChangePassword;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06007b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/iot/engine/MainActivity;->myToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 174
    :goto_0
    return v0

    .line 154
    :cond_0
    iget-object v2, p0, Lcom/iot/engine/ChangePassword;->edtNewPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v1, :cond_1

    .line 156
    invoke-virtual {p0}, Lcom/iot/engine/ChangePassword;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06007a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/iot/engine/MainActivity;->myToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 160
    :cond_1
    iget-object v2, p0, Lcom/iot/engine/ChangePassword;->edtNewPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x6

    if-ge v2, v3, :cond_2

    .line 161
    invoke-virtual {p0}, Lcom/iot/engine/ChangePassword;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060084

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/iot/engine/MainActivity;->myToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 163
    :cond_2
    iget-object v2, p0, Lcom/iot/engine/ChangePassword;->edtConfirmPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v1, :cond_3

    .line 165
    invoke-virtual {p0}, Lcom/iot/engine/ChangePassword;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060073

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/iot/engine/MainActivity;->myToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 168
    :cond_3
    iget-object v2, p0, Lcom/iot/engine/ChangePassword;->edtNewPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/iot/engine/ChangePassword;->edtConfirmPassword:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 170
    invoke-virtual {p0}, Lcom/iot/engine/ChangePassword;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060072

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/iot/engine/MainActivity;->myToast(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    move v0, v1

    .line 174
    goto/16 :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/iot/engine/ChangePassword;->isFieldSubmtted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/iot/engine/ChangePassword;->sessionManager:LSession/SessionManager;

    invoke-virtual {v0}, LSession/SessionManager;->getUSERID()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    invoke-virtual {p0}, Lcom/iot/engine/ChangePassword;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060076

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 73
    invoke-virtual {p0}, Lcom/iot/engine/ChangePassword;->finish()V

    .line 91
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    invoke-static {p0}, Lcom/iot/engine/MainActivity;->isInternetAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 79
    iget-object v0, p0, Lcom/iot/engine/ChangePassword;->edtOldPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iot/engine/ChangePassword;->mOldPassword:Ljava/lang/String;

    .line 80
    iget-object v0, p0, Lcom/iot/engine/ChangePassword;->edtNewPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iot/engine/ChangePassword;->mNewPassword:Ljava/lang/String;

    .line 81
    new-instance v0, Lcom/iot/engine/ChangePassword$AsyncNewPasswordTask;

    invoke-direct {v0, p0}, Lcom/iot/engine/ChangePassword$AsyncNewPasswordTask;-><init>(Lcom/iot/engine/ChangePassword;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/iot/engine/ChangePassword$AsyncNewPasswordTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 86
    :cond_2
    const-string v0, "Check internet connection!!!"

    invoke-static {p0, v0}, Lcom/iot/engine/MainActivity;->myToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    const v0, 0x7f040030

    invoke-virtual {p0, v0}, Lcom/iot/engine/ChangePassword;->setContentView(I)V

    .line 48
    invoke-direct {p0}, Lcom/iot/engine/ChangePassword;->initControls()V

    .line 49
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 179
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 180
    invoke-static {p0}, Lnet/hockeyapp/android/CrashManager;->register(Landroid/content/Context;)V

    .line 181
    return-void
.end method
