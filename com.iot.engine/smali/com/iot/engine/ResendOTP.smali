.class public Lcom/iot/engine/ResendOTP;
.super Landroid/app/Activity;
.source "ResendOTP.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iot/engine/ResendOTP$ResendOTPAsync;,
        Lcom/iot/engine/ResendOTP$AsyncOTPVerificationTask;
    }
.end annotation


# instance fields
.field edtOTP:Landroid/widget/EditText;

.field mBtnSubmit:Landroid/widget/Button;

.field mOTP:Ljava/lang/String;

.field maplist:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field resendOTP:Landroid/widget/TextView;

.field private spotDialog:Ldmax/dialog/SpotsDialog;

.field private tag_json_obj:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 37
    const-string v0, "jobj_req"

    iput-object v0, p0, Lcom/iot/engine/ResendOTP;->tag_json_obj:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/iot/engine/ResendOTP;)Ldmax/dialog/SpotsDialog;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/ResendOTP;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/iot/engine/ResendOTP;->spotDialog:Ldmax/dialog/SpotsDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/iot/engine/ResendOTP;Ldmax/dialog/SpotsDialog;)Ldmax/dialog/SpotsDialog;
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/ResendOTP;
    .param p1, "x1"    # Ldmax/dialog/SpotsDialog;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/iot/engine/ResendOTP;->spotDialog:Ldmax/dialog/SpotsDialog;

    return-object p1
.end method

.method private initControl()V
    .locals 1

    .prologue
    .line 51
    const v0, 0x7f0d00ea

    invoke-virtual {p0, v0}, Lcom/iot/engine/ResendOTP;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iot/engine/ResendOTP;->mBtnSubmit:Landroid/widget/Button;

    .line 52
    const v0, 0x7f0d01fe

    invoke-virtual {p0, v0}, Lcom/iot/engine/ResendOTP;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iot/engine/ResendOTP;->resendOTP:Landroid/widget/TextView;

    .line 53
    const v0, 0x7f0d01fd

    invoke-virtual {p0, v0}, Lcom/iot/engine/ResendOTP;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/iot/engine/ResendOTP;->edtOTP:Landroid/widget/EditText;

    .line 54
    iget-object v0, p0, Lcom/iot/engine/ResendOTP;->edtOTP:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    iget-object v0, p0, Lcom/iot/engine/ResendOTP;->mBtnSubmit:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object v0, p0, Lcom/iot/engine/ResendOTP;->resendOTP:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 95
    :goto_0
    return-void

    .line 66
    :sswitch_0
    iget-object v1, p0, Lcom/iot/engine/ResendOTP;->edtOTP:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/iot/engine/ResendOTP;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06007c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 71
    :cond_0
    invoke-static {p0}, LSession/Constants;->isInternetAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    :try_start_0
    iget-object v1, p0, Lcom/iot/engine/ResendOTP;->edtOTP:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iot/engine/ResendOTP;->mOTP:Ljava/lang/String;

    .line 75
    new-instance v1, Lcom/iot/engine/ResendOTP$AsyncOTPVerificationTask;

    invoke-direct {v1, p0}, Lcom/iot/engine/ResendOTP$AsyncOTPVerificationTask;-><init>(Lcom/iot/engine/ResendOTP;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/iot/engine/ResendOTP$AsyncOTPVerificationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 82
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v1, "Check internet connection!!!"

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 87
    :sswitch_1
    invoke-static {p0}, LSession/Constants;->isInternetAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 88
    new-instance v1, Lcom/iot/engine/ResendOTP$ResendOTPAsync;

    invoke-direct {v1, p0}, Lcom/iot/engine/ResendOTP$ResendOTPAsync;-><init>(Lcom/iot/engine/ResendOTP;)V

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/iot/engine/ResendOTP$ResendOTPAsync;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 90
    :cond_2
    const-string v1, "Check internet connection!!!"

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 64
    :sswitch_data_0
    .sparse-switch
        0x7f0d00ea -> :sswitch_0
        0x7f0d01fe -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v0, 0x7f04008a

    invoke-virtual {p0, v0}, Lcom/iot/engine/ResendOTP;->setContentView(I)V

    .line 46
    invoke-direct {p0}, Lcom/iot/engine/ResendOTP;->initControl()V

    .line 47
    invoke-virtual {p0}, Lcom/iot/engine/ResendOTP;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "data"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iput-object v0, p0, Lcom/iot/engine/ResendOTP;->maplist:Ljava/util/HashMap;

    .line 48
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 221
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 222
    invoke-static {p0}, Lnet/hockeyapp/android/CrashManager;->register(Landroid/content/Context;)V

    .line 223
    return-void
.end method
