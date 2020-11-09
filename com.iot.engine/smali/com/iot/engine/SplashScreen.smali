.class public Lcom/iot/engine/SplashScreen;
.super Landroid/app/Activity;
.source "SplashScreen.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 17
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    const v2, 0x7f040022

    invoke-virtual {p0, v2}, Lcom/iot/engine/SplashScreen;->setContentView(I)V

    .line 19
    new-instance v0, LSession/SessionManager;

    invoke-direct {v0, p0}, LSession/SessionManager;-><init>(Landroid/content/Context;)V

    .line 21
    .local v0, "session":LSession/SessionManager;
    new-instance v1, Lcom/iot/engine/SplashScreen$1;

    invoke-direct {v1, p0, v0}, Lcom/iot/engine/SplashScreen$1;-><init>(Lcom/iot/engine/SplashScreen;LSession/SessionManager;)V

    .line 56
    .local v1, "timerThread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 58
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 64
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 65
    invoke-virtual {p0}, Lcom/iot/engine/SplashScreen;->finish()V

    .line 66
    return-void
.end method
