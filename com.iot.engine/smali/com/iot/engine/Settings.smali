.class public Lcom/iot/engine/Settings;
.super Landroid/app/Activity;
.source "Settings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iot/engine/Settings$AsyncRestartGoReceiver;,
        Lcom/iot/engine/Settings$AsyncRestartHUB;
    }
.end annotation


# instance fields
.field private btnSave:Landroid/widget/Button;

.field private btnSwitchButton:Landroid/support/v7/widget/SwitchCompat;

.field private count:I

.field private count1:I

.field private edtIp:Landroid/widget/EditText;

.field imgBack:Landroid/widget/ImageView;

.field private llLockPass:Landroid/widget/LinearLayout;

.field private llPrivacy:Landroid/widget/LinearLayout;

.field private llRestartHUB:Landroid/widget/LinearLayout;

.field private llRestartRect:Landroid/widget/LinearLayout;

.field private llRouterIP:Landroid/widget/LinearLayout;

.field private llRouterPass:Landroid/widget/LinearLayout;

.field private llUserAcc:Landroid/widget/LinearLayout;

.field private messageType:Ljava/lang/String;

.field private sessionManager:LSession/SessionManager;

.field private spotDialog:Ldmax/dialog/SpotsDialog;

.field private startMillis:J

.field private startMillis1:J

.field private toast:Landroid/widget/Toast;

.field private tvPanel:Landroid/widget/TextView;

.field private tvRestartGoReceiver:Landroid/widget/TextView;

.field private tvRestartHUB:Landroid/widget/TextView;

.field private tvRouterIP:Landroid/widget/TextView;

.field private tvSetPasscode:Landroid/widget/TextView;

.field private tvTurnOffAll:Landroid/widget/TextView;

.field private txtAccount:Landroid/widget/TextView;

.field private txtChangePassword:Landroid/widget/TextView;

.field txtHeading:Landroid/widget/TextView;

.field private txtRestart:Landroid/widget/TextView;

.field private txtRouterPassword:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 44
    iput v0, p0, Lcom/iot/engine/Settings;->count:I

    iput v0, p0, Lcom/iot/engine/Settings;->count1:I

    .line 45
    iput-wide v2, p0, Lcom/iot/engine/Settings;->startMillis:J

    iput-wide v2, p0, Lcom/iot/engine/Settings;->startMillis1:J

    return-void
.end method

.method private AlertChnagePasscode()V
    .locals 6

    .prologue
    .line 244
    new-instance v2, Landroid/app/Dialog;

    invoke-direct {v2, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 246
    .local v2, "dialog":Landroid/app/Dialog;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 247
    const v5, 0x7f04004e

    invoke-virtual {v2, v5}, Landroid/app/Dialog;->setContentView(I)V

    .line 248
    const v5, 0x7f0d00a5

    invoke-virtual {v2, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 249
    .local v1, "btnok":Landroid/widget/TextView;
    const v5, 0x7f0d00d7

    invoke-virtual {v2, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 252
    .local v0, "btncancel":Landroid/widget/TextView;
    const v5, 0x7f0d0131

    invoke-virtual {v2, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 254
    .local v3, "edtPasscode":Landroid/widget/EditText;
    iget-object v5, p0, Lcom/iot/engine/Settings;->sessionManager:LSession/SessionManager;

    invoke-virtual {v5}, LSession/SessionManager;->getPassword()Ljava/lang/String;

    move-result-object v4

    .line 259
    .local v4, "loginPassword":Ljava/lang/String;
    new-instance v5, Lcom/iot/engine/Settings$2;

    invoke-direct {v5, p0, v3, v4, v2}, Lcom/iot/engine/Settings$2;-><init>(Lcom/iot/engine/Settings;Landroid/widget/EditText;Ljava/lang/String;Landroid/app/Dialog;)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    new-instance v5, Lcom/iot/engine/Settings$3;

    invoke-direct {v5, p0, v2}, Lcom/iot/engine/Settings$3;-><init>(Lcom/iot/engine/Settings;Landroid/app/Dialog;)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 290
    return-void
.end method

.method static synthetic access$000(Lcom/iot/engine/Settings;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/Settings;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/iot/engine/Settings;->messageType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/iot/engine/Settings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/Settings;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/iot/engine/Settings;->messageType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/iot/engine/Settings;)Ldmax/dialog/SpotsDialog;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/Settings;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/iot/engine/Settings;->spotDialog:Ldmax/dialog/SpotsDialog;

    return-object v0
.end method

.method static synthetic access$302(Lcom/iot/engine/Settings;Ldmax/dialog/SpotsDialog;)Ldmax/dialog/SpotsDialog;
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/Settings;
    .param p1, "x1"    # Ldmax/dialog/SpotsDialog;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/iot/engine/Settings;->spotDialog:Ldmax/dialog/SpotsDialog;

    return-object p1
.end method

.method static synthetic access$400(Lcom/iot/engine/Settings;)LSession/SessionManager;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/Settings;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/iot/engine/Settings;->sessionManager:LSession/SessionManager;

    return-object v0
.end method

.method private callSelectSwitchActivity()V
    .locals 3

    .prologue
    .line 380
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/iot/engine/SwitchSelectionActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 381
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "SETTING"

    const-string v2, "Setting"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 382
    invoke-virtual {p0, v0}, Lcom/iot/engine/Settings;->startActivity(Landroid/content/Intent;)V

    .line 383
    return-void
.end method

.method private countClick(Ljava/lang/String;)V
    .locals 6
    .param p1, "operation"    # Ljava/lang/String;

    .prologue
    .line 295
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 297
    .local v0, "time":J
    iget-wide v2, p0, Lcom/iot/engine/Settings;->startMillis:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/iot/engine/Settings;->startMillis:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xbb8

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    .line 299
    :cond_0
    iput-wide v0, p0, Lcom/iot/engine/Settings;->startMillis:J

    .line 300
    const/4 v2, 0x1

    iput v2, p0, Lcom/iot/engine/Settings;->count:I

    .line 306
    :goto_0
    iget-object v2, p0, Lcom/iot/engine/Settings;->toast:Landroid/widget/Toast;

    if-eqz v2, :cond_1

    .line 307
    iget-object v2, p0, Lcom/iot/engine/Settings;->toast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->cancel()V

    .line 308
    :cond_1
    iget v2, p0, Lcom/iot/engine/Settings;->count:I

    if-lez v2, :cond_2

    .line 309
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Press again  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/iot/engine/Settings;->count:I

    rsub-int/lit8 v3, v3, 0x7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " times to restart."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/iot/engine/Settings;->toast:Landroid/widget/Toast;

    .line 310
    iget-object v2, p0, Lcom/iot/engine/Settings;->toast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 313
    :cond_2
    iget v2, p0, Lcom/iot/engine/Settings;->count:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_3

    .line 315
    invoke-direct {p0, p1}, Lcom/iot/engine/Settings;->createAlertRestartHUB(Ljava/lang/String;)V

    .line 318
    :cond_3
    return-void

    .line 303
    :cond_4
    iget v2, p0, Lcom/iot/engine/Settings;->count:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/iot/engine/Settings;->count:I

    goto :goto_0
.end method

.method private createAlertForChangePanel()V
    .locals 5

    .prologue
    .line 425
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 427
    .local v0, "dialog":Landroid/app/Dialog;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 428
    const v4, 0x7f040028

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setContentView(I)V

    .line 429
    const v4, 0x7f0d00a5

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 430
    .local v3, "txtOk":Landroid/widget/TextView;
    const v4, 0x7f0d00d7

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 431
    .local v2, "txtCancel":Landroid/widget/TextView;
    const v4, 0x7f0d00d6

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 433
    .local v1, "edtPassword":Landroid/widget/EditText;
    new-instance v4, Lcom/iot/engine/Settings$8;

    invoke-direct {v4, p0, v1, v0}, Lcom/iot/engine/Settings$8;-><init>(Lcom/iot/engine/Settings;Landroid/widget/EditText;Landroid/app/Dialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 452
    new-instance v4, Lcom/iot/engine/Settings$9;

    invoke-direct {v4, p0, v0}, Lcom/iot/engine/Settings$9;-><init>(Lcom/iot/engine/Settings;Landroid/app/Dialog;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 459
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 460
    return-void
.end method

.method private createAlertPassdDialog()V
    .locals 5

    .prologue
    .line 387
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 389
    .local v0, "dialog":Landroid/app/Dialog;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 390
    const v4, 0x7f040028

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setContentView(I)V

    .line 391
    const v4, 0x7f0d00a5

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 392
    .local v3, "txtOk":Landroid/widget/TextView;
    const v4, 0x7f0d00d7

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 393
    .local v2, "txtCancel":Landroid/widget/TextView;
    const v4, 0x7f0d00d6

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 395
    .local v1, "edtPassword":Landroid/widget/EditText;
    new-instance v4, Lcom/iot/engine/Settings$6;

    invoke-direct {v4, p0, v1, v0}, Lcom/iot/engine/Settings$6;-><init>(Lcom/iot/engine/Settings;Landroid/widget/EditText;Landroid/app/Dialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 413
    new-instance v4, Lcom/iot/engine/Settings$7;

    invoke-direct {v4, p0, v0}, Lcom/iot/engine/Settings$7;-><init>(Lcom/iot/engine/Settings;Landroid/app/Dialog;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 420
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 421
    return-void
.end method

.method private createAlertRestartHUB(Ljava/lang/String;)V
    .locals 6
    .param p1, "operation"    # Ljava/lang/String;

    .prologue
    .line 322
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 323
    .local v0, "dialog":Landroid/app/Dialog;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 324
    const v5, 0x7f0400ae

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setContentView(I)V

    .line 326
    const v5, 0x7f0d01b6

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 327
    .local v4, "txtOk":Landroid/widget/TextView;
    const v5, 0x7f0d01b5

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 328
    .local v2, "txtCancel":Landroid/widget/TextView;
    const v5, 0x7f0d0103

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 329
    .local v3, "txtHeader":Landroid/widget/TextView;
    const v5, 0x7f0d00a4

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 330
    .local v1, "tvMessage":Landroid/widget/TextView;
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 331
    const-string v5, "RestartGoHUB"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "Restart Pongo Master"

    :goto_0
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 332
    const-string v5, "RestartGoHUB"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 333
    const-string v5, "Pongo Master Reboot request has taken place, Pongo Master will restart in 5-10 minutes."

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    :goto_1
    new-instance v5, Lcom/iot/engine/Settings$4;

    invoke-direct {v5, p0, p1, v0}, Lcom/iot/engine/Settings$4;-><init>(Lcom/iot/engine/Settings;Ljava/lang/String;Landroid/app/Dialog;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 370
    new-instance v5, Lcom/iot/engine/Settings$5;

    invoke-direct {v5, p0, v0}, Lcom/iot/engine/Settings$5;-><init>(Lcom/iot/engine/Settings;Landroid/app/Dialog;)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 376
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 377
    return-void

    .line 331
    :cond_0
    const-string v5, "Restart Go Receiver"

    goto :goto_0

    .line 335
    :cond_1
    const-string v5, "Pongo Receiver Reboot request has taken place, Go Receiver will start working after 5 Minutes."

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private initialiseControls()V
    .locals 3

    .prologue
    .line 60
    new-instance v0, LSession/SessionManager;

    invoke-direct {v0, p0}, LSession/SessionManager;-><init>(Landroid/content/Context;)V

    .line 61
    .local v0, "sessionmanager":LSession/SessionManager;
    const v1, 0x7f0d023c

    invoke-virtual {p0, v1}, Lcom/iot/engine/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/iot/engine/Settings;->txtAccount:Landroid/widget/TextView;

    .line 62
    const v1, 0x7f0d0240

    invoke-virtual {p0, v1}, Lcom/iot/engine/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/iot/engine/Settings;->txtChangePassword:Landroid/widget/TextView;

    .line 63
    const v1, 0x7f0d0242

    invoke-virtual {p0, v1}, Lcom/iot/engine/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/iot/engine/Settings;->txtRouterPassword:Landroid/widget/TextView;

    .line 64
    const v1, 0x7f0d0244

    invoke-virtual {p0, v1}, Lcom/iot/engine/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/iot/engine/Settings;->tvRouterIP:Landroid/widget/TextView;

    .line 65
    const v1, 0x7f0d0249

    invoke-virtual {p0, v1}, Lcom/iot/engine/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/iot/engine/Settings;->tvPanel:Landroid/widget/TextView;

    .line 66
    const v1, 0x7f0d024a

    invoke-virtual {p0, v1}, Lcom/iot/engine/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/iot/engine/Settings;->tvTurnOffAll:Landroid/widget/TextView;

    .line 67
    const v1, 0x7f0d00eb

    invoke-virtual {p0, v1}, Lcom/iot/engine/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/iot/engine/Settings;->txtHeading:Landroid/widget/TextView;

    .line 68
    const v1, 0x7f0d0156

    invoke-virtual {p0, v1}, Lcom/iot/engine/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/iot/engine/Settings;->imgBack:Landroid/widget/ImageView;

    .line 69
    const v1, 0x7f0d024c

    invoke-virtual {p0, v1}, Lcom/iot/engine/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/SwitchCompat;

    iput-object v1, p0, Lcom/iot/engine/Settings;->btnSwitchButton:Landroid/support/v7/widget/SwitchCompat;

    .line 70
    new-instance v1, LSession/SessionManager;

    invoke-direct {v1, p0}, LSession/SessionManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/iot/engine/Settings;->sessionManager:LSession/SessionManager;

    .line 73
    const v1, 0x7f0d0246

    invoke-virtual {p0, v1}, Lcom/iot/engine/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/iot/engine/Settings;->tvRestartHUB:Landroid/widget/TextView;

    .line 74
    const v1, 0x7f0d0248

    invoke-virtual {p0, v1}, Lcom/iot/engine/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/iot/engine/Settings;->tvRestartGoReceiver:Landroid/widget/TextView;

    .line 76
    const v1, 0x7f0d023e

    invoke-virtual {p0, v1}, Lcom/iot/engine/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/iot/engine/Settings;->tvSetPasscode:Landroid/widget/TextView;

    .line 78
    iget-object v1, p0, Lcom/iot/engine/Settings;->imgBack:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v1, p0, Lcom/iot/engine/Settings;->tvPanel:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v1, p0, Lcom/iot/engine/Settings;->tvTurnOffAll:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    const v1, 0x7f0d023b

    invoke-virtual {p0, v1}, Lcom/iot/engine/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/iot/engine/Settings;->llUserAcc:Landroid/widget/LinearLayout;

    .line 91
    const v1, 0x7f0d023f

    invoke-virtual {p0, v1}, Lcom/iot/engine/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/iot/engine/Settings;->llPrivacy:Landroid/widget/LinearLayout;

    .line 92
    const v1, 0x7f0d0241

    invoke-virtual {p0, v1}, Lcom/iot/engine/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/iot/engine/Settings;->llRouterPass:Landroid/widget/LinearLayout;

    .line 93
    const v1, 0x7f0d0243

    invoke-virtual {p0, v1}, Lcom/iot/engine/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/iot/engine/Settings;->llRouterIP:Landroid/widget/LinearLayout;

    .line 94
    const v1, 0x7f0d0245

    invoke-virtual {p0, v1}, Lcom/iot/engine/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/iot/engine/Settings;->llRestartHUB:Landroid/widget/LinearLayout;

    .line 95
    const v1, 0x7f0d0247

    invoke-virtual {p0, v1}, Lcom/iot/engine/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/iot/engine/Settings;->llRestartRect:Landroid/widget/LinearLayout;

    .line 96
    const v1, 0x7f0d023d

    invoke-virtual {p0, v1}, Lcom/iot/engine/Settings;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/iot/engine/Settings;->llLockPass:Landroid/widget/LinearLayout;

    .line 98
    iget-object v1, p0, Lcom/iot/engine/Settings;->llUserAcc:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    iget-object v1, p0, Lcom/iot/engine/Settings;->llPrivacy:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v1, p0, Lcom/iot/engine/Settings;->llRouterPass:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v1, p0, Lcom/iot/engine/Settings;->llRouterIP:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v1, p0, Lcom/iot/engine/Settings;->llRestartHUB:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v1, p0, Lcom/iot/engine/Settings;->llRestartRect:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v1, p0, Lcom/iot/engine/Settings;->llLockPass:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v1, p0, Lcom/iot/engine/Settings;->btnSwitchButton:Landroid/support/v7/widget/SwitchCompat;

    new-instance v2, Lcom/iot/engine/Settings$1;

    invoke-direct {v2, p0, v0}, Lcom/iot/engine/Settings$1;-><init>(Lcom/iot/engine/Settings;LSession/SessionManager;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 120
    iget-object v1, p0, Lcom/iot/engine/Settings;->btnSwitchButton:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v0}, LSession/SessionManager;->getBlastFlag()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 123
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v6, 0x7f060083

    const/4 v5, 0x0

    .line 132
    const/4 v0, 0x0

    .line 133
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 239
    :goto_0
    return-void

    .line 145
    :sswitch_0
    invoke-virtual {p0}, Lcom/iot/engine/Settings;->onBackPressed()V

    goto :goto_0

    .line 186
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-class v3, Lcom/iot/engine/ChangePassword;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 187
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/iot/engine/Settings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 190
    :sswitch_2
    iget-object v3, p0, Lcom/iot/engine/Settings;->sessionManager:LSession/SessionManager;

    invoke-virtual {v3}, LSession/SessionManager;->getDemoUser()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DemoUser"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 191
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-class v3, Lcom/iot/engine/UserProfile;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 192
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/iot/engine/Settings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 194
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-class v3, Lcom/iot/engine/UserProfileNew;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 195
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/iot/engine/Settings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 199
    :sswitch_3
    new-instance v1, LSession/SessionManager;

    invoke-direct {v1, p0}, LSession/SessionManager;-><init>(Landroid/content/Context;)V

    .line 200
    .local v1, "sessionManager":LSession/SessionManager;
    invoke-virtual {v1}, LSession/SessionManager;->getDemoUser()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DemoUser"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 201
    invoke-virtual {p0}, Lcom/iot/engine/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 203
    :cond_1
    invoke-virtual {v1}, LSession/SessionManager;->getUserType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 204
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-class v3, Lcom/iot/engine/RouterSetting;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 205
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/iot/engine/Settings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 207
    :cond_2
    invoke-virtual {p0}, Lcom/iot/engine/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 212
    .end local v1    # "sessionManager":LSession/SessionManager;
    :sswitch_4
    new-instance v2, LSession/SessionManager;

    invoke-direct {v2, p0}, LSession/SessionManager;-><init>(Landroid/content/Context;)V

    .line 213
    .local v2, "sessionManagerUser":LSession/SessionManager;
    invoke-virtual {v2}, LSession/SessionManager;->getUserType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 214
    invoke-direct {p0}, Lcom/iot/engine/Settings;->createAlertPassdDialog()V

    goto/16 :goto_0

    .line 216
    :cond_3
    invoke-virtual {p0}, Lcom/iot/engine/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 220
    .end local v2    # "sessionManagerUser":LSession/SessionManager;
    :sswitch_5
    sget-object v3, LSession/Constants;->URL_GO:Ljava/lang/String;

    sget-object v4, LSession/Constants;->URL_GO_AWS:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 221
    const-string v3, "RestartGoHUB"

    invoke-direct {p0, v3}, Lcom/iot/engine/Settings;->countClick(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 223
    :cond_4
    const-string v3, "This service is not available via internet."

    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 227
    :sswitch_6
    sget-object v3, LSession/Constants;->URL_GO:Ljava/lang/String;

    sget-object v4, LSession/Constants;->URL_GO_AWS:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 228
    const-string v3, "RestartGoReceiver"

    invoke-direct {p0, v3}, Lcom/iot/engine/Settings;->countClick(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 230
    :cond_5
    const-string v3, "This service is not available via internet."

    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 234
    :sswitch_7
    invoke-direct {p0}, Lcom/iot/engine/Settings;->AlertChnagePasscode()V

    goto/16 :goto_0

    .line 133
    :sswitch_data_0
    .sparse-switch
        0x7f0d0156 -> :sswitch_0
        0x7f0d023b -> :sswitch_2
        0x7f0d023d -> :sswitch_7
        0x7f0d023f -> :sswitch_1
        0x7f0d0241 -> :sswitch_3
        0x7f0d0243 -> :sswitch_4
        0x7f0d0245 -> :sswitch_5
        0x7f0d0247 -> :sswitch_6
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 54
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    const v0, 0x7f0400a8

    invoke-virtual {p0, v0}, Lcom/iot/engine/Settings;->setContentView(I)V

    .line 56
    invoke-direct {p0}, Lcom/iot/engine/Settings;->initialiseControls()V

    .line 57
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 127
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 128
    iget-object v0, p0, Lcom/iot/engine/Settings;->txtHeading:Landroid/widget/TextView;

    const-string v1, "Settings"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    return-void
.end method
