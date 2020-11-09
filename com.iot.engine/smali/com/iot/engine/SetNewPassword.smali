.class public Lcom/iot/engine/SetNewPassword;
.super Landroid/app/Activity;
.source "SetNewPassword.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iot/engine/SetNewPassword$UpdatePasswordOTP;
    }
.end annotation


# instance fields
.field private btnConfirm:Landroid/widget/Button;

.field private edtConfirmPassword:Landroid/widget/EditText;

.field private edtNewPassword:Landroid/widget/EditText;

.field private mEMAIL:Ljava/lang/String;

.field private mNewPassword:Ljava/lang/String;

.field private mOTP:Ljava/lang/String;

.field private mUSERID:Ljava/lang/String;

.field private spotDialog:Ldmax/dialog/SpotsDialog;

.field private tag_json_obj:Ljava/lang/String;

.field private x_AUTH_TOKEN:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/iot/engine/SetNewPassword;->mOTP:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/iot/engine/SetNewPassword;->mEMAIL:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/iot/engine/SetNewPassword;->mUSERID:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/iot/engine/SetNewPassword;->x_AUTH_TOKEN:Ljava/lang/String;

    .line 30
    const-string v0, "jobj_req"

    iput-object v0, p0, Lcom/iot/engine/SetNewPassword;->tag_json_obj:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/iot/engine/SetNewPassword;->mNewPassword:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/iot/engine/SetNewPassword;)Ldmax/dialog/SpotsDialog;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/SetNewPassword;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/iot/engine/SetNewPassword;->spotDialog:Ldmax/dialog/SpotsDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/iot/engine/SetNewPassword;Ldmax/dialog/SpotsDialog;)Ldmax/dialog/SpotsDialog;
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/SetNewPassword;
    .param p1, "x1"    # Ldmax/dialog/SpotsDialog;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/iot/engine/SetNewPassword;->spotDialog:Ldmax/dialog/SpotsDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/iot/engine/SetNewPassword;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/SetNewPassword;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/iot/engine/SetNewPassword;->mUSERID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/iot/engine/SetNewPassword;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/SetNewPassword;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/iot/engine/SetNewPassword;->mNewPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/iot/engine/SetNewPassword;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/SetNewPassword;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/iot/engine/SetNewPassword;->x_AUTH_TOKEN:Ljava/lang/String;

    return-object v0
.end method

.method private initControl()V
    .locals 2

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/iot/engine/SetNewPassword;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "x_AUTH_TOKEN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/iot/engine/SetNewPassword;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "USERID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/iot/engine/SetNewPassword;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "USERID"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iot/engine/SetNewPassword;->mUSERID:Ljava/lang/String;

    .line 45
    invoke-virtual {p0}, Lcom/iot/engine/SetNewPassword;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "x_AUTH_TOKEN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iot/engine/SetNewPassword;->x_AUTH_TOKEN:Ljava/lang/String;

    .line 48
    :cond_0
    const v0, 0x7f0d00ed

    invoke-virtual {p0, v0}, Lcom/iot/engine/SetNewPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/iot/engine/SetNewPassword;->edtNewPassword:Landroid/widget/EditText;

    .line 49
    const v0, 0x7f0d00ee

    invoke-virtual {p0, v0}, Lcom/iot/engine/SetNewPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/iot/engine/SetNewPassword;->edtConfirmPassword:Landroid/widget/EditText;

    .line 50
    const v0, 0x7f0d0238

    invoke-virtual {p0, v0}, Lcom/iot/engine/SetNewPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iot/engine/SetNewPassword;->btnConfirm:Landroid/widget/Button;

    .line 51
    iget-object v0, p0, Lcom/iot/engine/SetNewPassword;->btnConfirm:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    return-void
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

.method private onClickOfConfirm()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 67
    iget-object v0, p0, Lcom/iot/engine/SetNewPassword;->edtNewPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/iot/engine/SetNewPassword;->edtConfirmPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    :cond_0
    const-string v0, "Kindly enter all Details."

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 84
    :goto_0
    return-void

    .line 71
    :cond_1
    iget-object v0, p0, Lcom/iot/engine/SetNewPassword;->edtNewPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/iot/engine/SetNewPassword;->edtConfirmPassword:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 72
    invoke-virtual {p0}, Lcom/iot/engine/SetNewPassword;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060072

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 75
    :cond_2
    iget-object v0, p0, Lcom/iot/engine/SetNewPassword;->edtNewPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_3

    .line 76
    invoke-virtual {p0}, Lcom/iot/engine/SetNewPassword;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060084

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/iot/engine/SetNewPassword;->myToast(Ljava/lang/String;)V

    goto :goto_0

    .line 80
    :cond_3
    iget-object v0, p0, Lcom/iot/engine/SetNewPassword;->edtNewPassword:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iot/engine/SetNewPassword;->mNewPassword:Ljava/lang/String;

    .line 82
    new-instance v0, Lcom/iot/engine/SetNewPassword$UpdatePasswordOTP;

    invoke-direct {v0, p0}, Lcom/iot/engine/SetNewPassword$UpdatePasswordOTP;-><init>(Lcom/iot/engine/SetNewPassword;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/iot/engine/SetNewPassword$UpdatePasswordOTP;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 57
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 62
    :goto_0
    return-void

    .line 59
    :pswitch_0
    invoke-direct {p0}, Lcom/iot/engine/SetNewPassword;->onClickOfConfirm()V

    goto :goto_0

    .line 57
    :pswitch_data_0
    .packed-switch 0x7f0d0238
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    const v0, 0x7f0400a3

    invoke-virtual {p0, v0}, Lcom/iot/engine/SetNewPassword;->setContentView(I)V

    .line 38
    invoke-direct {p0}, Lcom/iot/engine/SetNewPassword;->initControl()V

    .line 39
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 148
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 149
    invoke-static {p0}, Lnet/hockeyapp/android/CrashManager;->register(Landroid/content/Context;)V

    .line 150
    return-void
.end method
