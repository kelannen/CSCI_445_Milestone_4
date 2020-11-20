.class public Lcom/iot/engine/Login;
.super Landroid/app/Activity;
.source "Login.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iot/engine/Login$VerifyDeviceIdTask;
    }
.end annotation


# instance fields
.field private btnLogin:Landroid/widget/Button;

.field dialog:Landroid/app/Dialog;

.field private edtPassword:Landroid/widget/EditText;

.field private edtUsername:Landroid/widget/EditText;

.field private email:Ljava/lang/String;

.field private firstName:Ljava/lang/String;

.field private lastName:Ljava/lang/String;

.field private mDate:Ljava/lang/String;

.field mDevideId:Ljava/lang/String;

.field mPassword:Ljava/lang/String;

.field mSharedOTP:Ljava/lang/String;

.field private mUserName:Ljava/lang/String;

.field manager:Landroid/net/wifi/WifiManager;

.field private mid:Ljava/lang/String;

.field private mphoneNumber:Ljava/lang/String;

.field sessionManager:LSession/SessionManager;

.field private spotDialog:Ldmax/dialog/SpotsDialog;

.field private tag_json_obj:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field private txtForgot:Landroid/widget/TextView;

.field private userType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 62
    const-string v0, "jobj_req"

    iput-object v0, p0, Lcom/iot/engine/Login;->tag_json_obj:Ljava/lang/String;

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/iot/engine/Login;->mDevideId:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/iot/engine/Login;->mSharedOTP:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/iot/engine/Login;->mPassword:Ljava/lang/String;

    return-void
.end method

.method private AlertDeviceAlreadyPresent(Ljava/lang/String;)V
    .locals 5
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 423
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 425
    .local v0, "dialogDeviceID":Landroid/app/Dialog;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 426
    const v4, 0x7f04004b

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setContentView(I)V

    .line 427
    const v4, 0x7f0d00a5

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 428
    .local v3, "txtOk":Landroid/widget/TextView;
    const v4, 0x7f0d012d

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 429
    .local v1, "tvAlertMsg":Landroid/widget/TextView;
    const v4, 0x7f0d00d7

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 431
    .local v2, "txtCancel":Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 433
    new-instance v4, Lcom/iot/engine/Login$6;

    invoke-direct {v4, p0, v0}, Lcom/iot/engine/Login$6;-><init>(Lcom/iot/engine/Login;Landroid/app/Dialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 439
    new-instance v4, Lcom/iot/engine/Login$7;

    invoke-direct {v4, p0, v0}, Lcom/iot/engine/Login$7;-><init>(Lcom/iot/engine/Login;Landroid/app/Dialog;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 445
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 447
    return-void
.end method

.method static synthetic access$000(Lcom/iot/engine/Login;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/Login;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/iot/engine/Login;->myToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/iot/engine/Login;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/Login;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/iot/engine/Login;->mUserName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/iot/engine/Login;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/Login;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/iot/engine/Login;->mDate:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/iot/engine/Login;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/Login;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/iot/engine/Login;->mDate:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/iot/engine/Login;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/Login;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/iot/engine/Login;->mUserName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/iot/engine/Login;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/Login;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/iot/engine/Login;->userType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/iot/engine/Login;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/Login;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/iot/engine/Login;->userType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/iot/engine/Login;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/Login;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/iot/engine/Login;->edtPassword:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/iot/engine/Login;)V
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/Login;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/iot/engine/Login;->createDeviceIdDialog()V

    return-void
.end method

.method static synthetic access$1400(Lcom/iot/engine/Login;)V
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/Login;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/iot/engine/Login;->redirectToMainActivity()V

    return-void
.end method

.method static synthetic access$1500(Lcom/iot/engine/Login;)Ldmax/dialog/SpotsDialog;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/Login;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/iot/engine/Login;->spotDialog:Ldmax/dialog/SpotsDialog;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/iot/engine/Login;Ldmax/dialog/SpotsDialog;)Ldmax/dialog/SpotsDialog;
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/Login;
    .param p1, "x1"    # Ldmax/dialog/SpotsDialog;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/iot/engine/Login;->spotDialog:Ldmax/dialog/SpotsDialog;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/iot/engine/Login;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/Login;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/iot/engine/Login;->AlertDeviceAlreadyPresent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/iot/engine/Login;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/Login;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/iot/engine/Login;->edtUsername:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/iot/engine/Login;)V
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/Login;

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/iot/engine/Login;->hideProgressDialog()V

    return-void
.end method

.method static synthetic access$400(Lcom/iot/engine/Login;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/Login;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/iot/engine/Login;->mid:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/iot/engine/Login;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/Login;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/iot/engine/Login;->mid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/iot/engine/Login;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/Login;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/iot/engine/Login;->lastName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/iot/engine/Login;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/Login;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/iot/engine/Login;->lastName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/iot/engine/Login;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/Login;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/iot/engine/Login;->firstName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/iot/engine/Login;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/Login;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/iot/engine/Login;->firstName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/iot/engine/Login;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/Login;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/iot/engine/Login;->token:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/iot/engine/Login;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/Login;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/iot/engine/Login;->token:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/iot/engine/Login;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/Login;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/iot/engine/Login;->mphoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$802(Lcom/iot/engine/Login;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/Login;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/iot/engine/Login;->mphoneNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/iot/engine/Login;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/Login;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/iot/engine/Login;->email:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/iot/engine/Login;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/Login;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/iot/engine/Login;->email:Ljava/lang/String;

    return-object p1
.end method

.method private createDeviceIdDialog()V
    .locals 6

    .prologue
    .line 140
    new-instance v4, Landroid/app/Dialog;

    invoke-direct {v4, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/iot/engine/Login;->dialog:Landroid/app/Dialog;

    .line 142
    iget-object v4, p0, Lcom/iot/engine/Login;->dialog:Landroid/app/Dialog;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 143
    iget-object v4, p0, Lcom/iot/engine/Login;->dialog:Landroid/app/Dialog;

    const v5, 0x7f04004d

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setContentView(I)V

    .line 144
    iget-object v4, p0, Lcom/iot/engine/Login;->dialog:Landroid/app/Dialog;

    const v5, 0x7f0d00a5

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 145
    .local v3, "txtOk":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/iot/engine/Login;->dialog:Landroid/app/Dialog;

    const v5, 0x7f0d00d7

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 146
    .local v2, "txtCancel":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/iot/engine/Login;->dialog:Landroid/app/Dialog;

    const v5, 0x7f0d012f

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 147
    .local v0, "edtDeviceId":Landroid/widget/EditText;
    iget-object v4, p0, Lcom/iot/engine/Login;->dialog:Landroid/app/Dialog;

    const v5, 0x7f0d0130

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 148
    .local v1, "edtenterOTP":Landroid/widget/EditText;
    new-instance v4, Lcom/iot/engine/Login$1;

    invoke-direct {v4, p0, v0, v1}, Lcom/iot/engine/Login$1;-><init>(Lcom/iot/engine/Login;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    new-instance v4, Lcom/iot/engine/Login$2;

    invoke-direct {v4, p0}, Lcom/iot/engine/Login$2;-><init>(Lcom/iot/engine/Login;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object v4, p0, Lcom/iot/engine/Login;->dialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 175
    return-void
.end method

.method private deleteAll()V
    .locals 1

    .prologue
    .line 191
    new-instance v0, LDatabase/DatabaseHandler;

    invoke-direct {v0, p0}, LDatabase/DatabaseHandler;-><init>(Landroid/content/Context;)V

    .line 192
    .local v0, "db":LDatabase/DatabaseHandler;
    invoke-virtual {v0}, LDatabase/DatabaseHandler;->deleteRoomData()V

    .line 193
    invoke-virtual {v0}, LDatabase/DatabaseHandler;->deleteSwitchData()V

    .line 194
    invoke-virtual {v0}, LDatabase/DatabaseHandler;->deleteNotificationData()V

    .line 195
    invoke-virtual {v0}, LDatabase/DatabaseHandler;->deleteRecentData()V

    .line 196
    invoke-virtual {v0}, LDatabase/DatabaseHandler;->deleteROOM_TYPE()V

    .line 197
    invoke-virtual {v0}, LDatabase/DatabaseHandler;->deleteSWITCH_TYPE()V

    .line 199
    return-void
.end method

.method private hideProgressDialog()V
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/iot/engine/Login;->spotDialog:Ldmax/dialog/SpotsDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iot/engine/Login;->spotDialog:Ldmax/dialog/SpotsDialog;

    invoke-virtual {v0}, Ldmax/dialog/SpotsDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/iot/engine/Login;->spotDialog:Ldmax/dialog/SpotsDialog;

    invoke-virtual {v0}, Ldmax/dialog/SpotsDialog;->dismiss()V

    .line 348
    :cond_0
    return-void
.end method

.method private initialseControls()V
    .locals 3

    .prologue
    .line 91
    const v0, 0x7f0d01a9

    invoke-virtual {p0, v0}, Lcom/iot/engine/Login;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/iot/engine/Login;->edtUsername:Landroid/widget/EditText;

    .line 92
    const v0, 0x7f0d00d6

    invoke-virtual {p0, v0}, Lcom/iot/engine/Login;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/iot/engine/Login;->edtPassword:Landroid/widget/EditText;

    .line 93
    const v0, 0x7f0d0149

    invoke-virtual {p0, v0}, Lcom/iot/engine/Login;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iot/engine/Login;->btnLogin:Landroid/widget/Button;

    .line 94
    const v0, 0x7f0d014e

    invoke-virtual {p0, v0}, Lcom/iot/engine/Login;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iot/engine/Login;->txtForgot:Landroid/widget/TextView;

    .line 96
    invoke-virtual {p0}, Lcom/iot/engine/Login;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/iot/engine/Login;->manager:Landroid/net/wifi/WifiManager;

    .line 98
    iget-object v0, p0, Lcom/iot/engine/Login;->txtForgot:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v0, p0, Lcom/iot/engine/Login;->btnLogin:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v0, p0, Lcom/iot/engine/Login;->edtUsername:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/iot/engine/Login;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "EMAIL"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 102
    return-void
.end method

.method private isFieldSubmtted()Z
    .locals 4

    .prologue
    const v3, 0x7f060085

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 202
    iget-object v2, p0, Lcom/iot/engine/Login;->edtUsername:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v2, v1, :cond_0

    .line 204
    invoke-virtual {p0}, Lcom/iot/engine/Login;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/iot/engine/Login;->myToast(Ljava/lang/String;)V

    .line 214
    :goto_0
    return v0

    .line 207
    :cond_0
    invoke-virtual {p0}, Lcom/iot/engine/Login;->validateEmail()Z

    move-result v2

    if-nez v2, :cond_1

    .line 208
    invoke-virtual {p0}, Lcom/iot/engine/Login;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/iot/engine/Login;->myToast(Ljava/lang/String;)V

    goto :goto_0

    .line 210
    :cond_1
    iget-object v2, p0, Lcom/iot/engine/Login;->edtPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x6

    if-ge v2, v3, :cond_2

    .line 211
    invoke-virtual {p0}, Lcom/iot/engine/Login;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060084

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/iot/engine/Login;->myToast(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 214
    goto :goto_0
.end method

.method private login()V
    .locals 8

    .prologue
    .line 239
    new-instance v1, Ldmax/dialog/SpotsDialog;

    const-string v2, " Kindly wait "

    invoke-direct {v1, p0, v2}, Ldmax/dialog/SpotsDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    iput-object v1, p0, Lcom/iot/engine/Login;->spotDialog:Ldmax/dialog/SpotsDialog;

    .line 240
    iget-object v1, p0, Lcom/iot/engine/Login;->spotDialog:Ldmax/dialog/SpotsDialog;

    invoke-virtual {v1}, Ldmax/dialog/SpotsDialog;->show()V

    .line 242
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 243
    .local v7, "jsonParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "username"

    iget-object v2, p0, Lcom/iot/engine/Login;->edtUsername:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    const-string v1, "password"

    iget-object v2, p0, Lcom/iot/engine/Login;->edtPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    const-string v1, "param"

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    new-instance v0, Lcom/iot/engine/Login$5;

    const/4 v2, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, LSession/Constants;->URL_GO_AWS:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "login"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v7}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    new-instance v5, Lcom/iot/engine/Login$3;

    invoke-direct {v5, p0}, Lcom/iot/engine/Login$3;-><init>(Lcom/iot/engine/Login;)V

    new-instance v6, Lcom/iot/engine/Login$4;

    invoke-direct {v6, p0}, Lcom/iot/engine/Login$4;-><init>(Lcom/iot/engine/Login;)V

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/iot/engine/Login$5;-><init>(Lcom/iot/engine/Login;ILjava/lang/String;Lorg/json/JSONObject;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;)V

    .line 341
    .local v0, "myRequest":Lcom/android/volley/toolbox/JsonObjectRequest;
    invoke-static {}, Lapp/AppController;->getInstance()Lapp/AppController;

    move-result-object v1

    iget-object v2, p0, Lcom/iot/engine/Login;->tag_json_obj:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lapp/AppController;->addToRequestQueue(Lcom/android/volley/Request;Ljava/lang/String;)V

    .line 342
    return-void
.end method

.method private myToast(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 218
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 219
    return-void
.end method

.method private redirectToMainActivity()V
    .locals 3

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/iot/engine/Login;->deleteAll()V

    .line 180
    iget-object v1, p0, Lcom/iot/engine/Login;->sessionManager:LSession/SessionManager;

    const-string v2, "192.168.0.119"

    invoke-virtual {v1, v2}, LSession/SessionManager;->setAppUrl(Ljava/lang/String;)V

    .line 181
    iget-object v1, p0, Lcom/iot/engine/Login;->sessionManager:LSession/SessionManager;

    const-string v2, "192.168.0.119"

    invoke-virtual {v1, v2}, LSession/SessionManager;->setRouterIP(Ljava/lang/String;)V

    .line 182
    iget-object v1, p0, Lcom/iot/engine/Login;->sessionManager:LSession/SessionManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, LSession/SessionManager;->setBlastFlag(Z)V

    .line 184
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/iot/engine/BlankScreen;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 185
    .local v0, "intent":Landroid/content/Intent;
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 186
    invoke-virtual {p0, v0}, Lcom/iot/engine/Login;->startActivity(Landroid/content/Intent;)V

    .line 188
    return-void
.end method

.method private saveDeviceToken()V
    .locals 2

    .prologue
    .line 82
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->getInstance()Lcom/google/firebase/iid/FirebaseInstanceId;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "refreshedToken":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 84
    iget-object v1, p0, Lcom/iot/engine/Login;->sessionManager:LSession/SessionManager;

    invoke-virtual {v1, v0}, LSession/SessionManager;->saveDeviceToken(Ljava/lang/String;)V

    .line 87
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 106
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 109
    :sswitch_0
    invoke-direct {p0}, Lcom/iot/engine/Login;->saveDeviceToken()V

    .line 110
    const-string v2, "input_method"

    invoke-virtual {p0, v2}, Lcom/iot/engine/Login;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 111
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/iot/engine/Login;->getCurrentFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 112
    invoke-direct {p0}, Lcom/iot/engine/Login;->isFieldSubmtted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 114
    invoke-static {p0}, Lcom/iot/engine/MainActivity;->isInternetAvailable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 115
    invoke-direct {p0}, Lcom/iot/engine/Login;->login()V

    goto :goto_0

    .line 119
    :cond_1
    const-string v2, "Check internet connection!!!"

    invoke-direct {p0, v2}, Lcom/iot/engine/Login;->myToast(Ljava/lang/String;)V

    goto :goto_0

    .line 126
    .end local v0    # "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    :sswitch_1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/iot/engine/ForgotPassword;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 127
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/iot/engine/Login;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 106
    :sswitch_data_0
    .sparse-switch
        0x7f0d0149 -> :sswitch_0
        0x7f0d014e -> :sswitch_1
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    const v0, 0x7f040071

    invoke-virtual {p0, v0}, Lcom/iot/engine/Login;->setContentView(I)V

    .line 75
    invoke-direct {p0}, Lcom/iot/engine/Login;->initialseControls()V

    .line 76
    new-instance v0, LSession/SessionManager;

    invoke-direct {v0, p0}, LSession/SessionManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iot/engine/Login;->sessionManager:LSession/SessionManager;

    .line 77
    invoke-direct {p0}, Lcom/iot/engine/Login;->saveDeviceToken()V

    .line 78
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 134
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 135
    invoke-static {p0}, Lnet/hockeyapp/android/CrashManager;->register(Landroid/content/Context;)V

    .line 136
    return-void
.end method

.method public validateEmail()Z
    .locals 3

    .prologue
    .line 224
    iget-object v2, p0, Lcom/iot/engine/Login;->edtUsername:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, "emailInput":Ljava/lang/String;
    const-string v1, "^[_A-Za-z0-9-]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$"

    .line 228
    .local v1, "emailPattern":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 229
    const/4 v2, 0x0

    .line 232
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method
