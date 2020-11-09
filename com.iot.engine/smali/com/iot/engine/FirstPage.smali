.class public Lcom/iot/engine/FirstPage;
.super Landroid/app/Activity;
.source "FirstPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private btnLogin:Landroid/widget/Button;

.field private btnRegister:Landroid/widget/Button;

.field private btnTryDemo:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private initialiseControls()V
    .locals 1

    .prologue
    .line 38
    const v0, 0x7f0d0149

    invoke-virtual {p0, v0}, Lcom/iot/engine/FirstPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iot/engine/FirstPage;->btnLogin:Landroid/widget/Button;

    .line 39
    const v0, 0x7f0d014a

    invoke-virtual {p0, v0}, Lcom/iot/engine/FirstPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iot/engine/FirstPage;->btnRegister:Landroid/widget/Button;

    .line 40
    const v0, 0x7f0d014b

    invoke-virtual {p0, v0}, Lcom/iot/engine/FirstPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/iot/engine/FirstPage;->btnTryDemo:Landroid/widget/Button;

    .line 42
    return-void
.end method

.method private setListener()V
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/iot/engine/FirstPage;->btnLogin:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    iget-object v0, p0, Lcom/iot/engine/FirstPage;->btnRegister:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    iget-object v0, p0, Lcom/iot/engine/FirstPage;->btnTryDemo:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 47
    const/4 v0, 0x0

    .line 48
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 74
    :goto_0
    return-void

    .line 50
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-class v2, Lcom/iot/engine/Login;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 51
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/iot/engine/FirstPage;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 55
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-class v2, Lcom/iot/engine/Register;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 56
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/iot/engine/FirstPage;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 60
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-class v2, Lcom/iot/engine/MainActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 61
    .restart local v0    # "intent":Landroid/content/Intent;
    const v2, 0x10008000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 62
    invoke-virtual {p0, v0}, Lcom/iot/engine/FirstPage;->startActivity(Landroid/content/Intent;)V

    .line 63
    new-instance v1, LSession/SessionManager;

    invoke-direct {v1, p0}, LSession/SessionManager;-><init>(Landroid/content/Context;)V

    .line 64
    .local v1, "sessionManager":LSession/SessionManager;
    invoke-virtual {v1}, LSession/SessionManager;->logoutUser()V

    .line 65
    const-string v2, "DemoUser"

    invoke-virtual {v1, v2}, LSession/SessionManager;->setDemoUser(Ljava/lang/String;)V

    .line 66
    const-string v2, "panel1"

    invoke-virtual {v1, v2}, LSession/SessionManager;->setFirstString(Ljava/lang/String;)V

    .line 67
    const-string v2, "panel2"

    invoke-virtual {v1, v2}, LSession/SessionManager;->setSecondString(Ljava/lang/String;)V

    .line 68
    const-string v2, "panel3"

    invoke-virtual {v1, v2}, LSession/SessionManager;->setThirdString(Ljava/lang/String;)V

    .line 69
    const-string v2, "192.168.0.119"

    invoke-virtual {v1, v2}, LSession/SessionManager;->setRouterIP(Ljava/lang/String;)V

    .line 70
    const-string v2, "home1"

    invoke-virtual {v1, v2}, LSession/SessionManager;->setTopicName(Ljava/lang/String;)V

    .line 71
    const-string v2, "A"

    invoke-virtual {v1, v2}, LSession/SessionManager;->saveLockSwitchId(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d0149
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const v0, 0x7f040057

    invoke-virtual {p0, v0}, Lcom/iot/engine/FirstPage;->setContentView(I)V

    .line 24
    invoke-direct {p0}, Lcom/iot/engine/FirstPage;->initialiseControls()V

    .line 25
    invoke-direct {p0}, Lcom/iot/engine/FirstPage;->setListener()V

    .line 26
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 85
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 86
    invoke-static {}, Lnet/hockeyapp/android/UpdateManager;->unregister()V

    .line 87
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 78
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 79
    invoke-static {p0}, Lnet/hockeyapp/android/CrashManager;->register(Landroid/content/Context;)V

    .line 80
    invoke-static {p0}, Lnet/hockeyapp/android/UpdateManager;->register(Landroid/app/Activity;)V

    .line 81
    return-void
.end method
