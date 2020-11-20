.class Lcom/iot/engine/SplashScreen$1;
.super Ljava/lang/Thread;
.source "SplashScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iot/engine/SplashScreen;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iot/engine/SplashScreen;

.field final synthetic val$session:LSession/SessionManager;


# direct methods
.method constructor <init>(Lcom/iot/engine/SplashScreen;LSession/SessionManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iot/engine/SplashScreen;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/iot/engine/SplashScreen$1;->this$0:Lcom/iot/engine/SplashScreen;

    iput-object p2, p0, Lcom/iot/engine/SplashScreen$1;->val$session:LSession/SessionManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 25
    const-wide/16 v2, 0x7d0

    :try_start_0
    invoke-static {v2, v3}, Lcom/iot/engine/SplashScreen$1;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    iget-object v2, p0, Lcom/iot/engine/SplashScreen$1;->val$session:LSession/SessionManager;

    invoke-virtual {v2}, LSession/SessionManager;->getUSERID()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 32
    iget-object v2, p0, Lcom/iot/engine/SplashScreen$1;->val$session:LSession/SessionManager;

    invoke-virtual {v2}, LSession/SessionManager;->getDemoUser()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DemoUser"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 33
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/iot/engine/SplashScreen$1;->this$0:Lcom/iot/engine/SplashScreen;

    const-class v3, Lcom/iot/engine/MainActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 34
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/iot/engine/SplashScreen$1;->this$0:Lcom/iot/engine/SplashScreen;

    invoke-virtual {v2, v1}, Lcom/iot/engine/SplashScreen;->startActivity(Landroid/content/Intent;)V

    .line 53
    :goto_0
    return-void

    .line 36
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/iot/engine/SplashScreen$1;->this$0:Lcom/iot/engine/SplashScreen;

    const-class v3, Lcom/iot/engine/FirstPage;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    .restart local v1    # "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/iot/engine/SplashScreen$1;->this$0:Lcom/iot/engine/SplashScreen;

    invoke-virtual {v2, v1}, Lcom/iot/engine/SplashScreen;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 42
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v2, p0, Lcom/iot/engine/SplashScreen$1;->val$session:LSession/SessionManager;

    invoke-virtual {v2}, LSession/SessionManager;->getUserSync()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 43
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/iot/engine/SplashScreen$1;->this$0:Lcom/iot/engine/SplashScreen;

    const-class v3, Lcom/iot/engine/MainActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 44
    .restart local v1    # "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/iot/engine/SplashScreen$1;->this$0:Lcom/iot/engine/SplashScreen;

    invoke-virtual {v2, v1}, Lcom/iot/engine/SplashScreen;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 46
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_2
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/iot/engine/SplashScreen$1;->this$0:Lcom/iot/engine/SplashScreen;

    const-class v3, Lcom/iot/engine/MainActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 47
    .restart local v1    # "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/iot/engine/SplashScreen$1;->this$0:Lcom/iot/engine/SplashScreen;

    invoke-virtual {v2, v1}, Lcom/iot/engine/SplashScreen;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 26
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 27
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    iget-object v2, p0, Lcom/iot/engine/SplashScreen$1;->val$session:LSession/SessionManager;

    invoke-virtual {v2}, LSession/SessionManager;->getUSERID()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 32
    iget-object v2, p0, Lcom/iot/engine/SplashScreen$1;->val$session:LSession/SessionManager;

    invoke-virtual {v2}, LSession/SessionManager;->getDemoUser()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DemoUser"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 33
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/iot/engine/SplashScreen$1;->this$0:Lcom/iot/engine/SplashScreen;

    const-class v3, Lcom/iot/engine/MainActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 34
    .restart local v1    # "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/iot/engine/SplashScreen$1;->this$0:Lcom/iot/engine/SplashScreen;

    invoke-virtual {v2, v1}, Lcom/iot/engine/SplashScreen;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 36
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_3
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/iot/engine/SplashScreen$1;->this$0:Lcom/iot/engine/SplashScreen;

    const-class v3, Lcom/iot/engine/FirstPage;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    .restart local v1    # "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/iot/engine/SplashScreen$1;->this$0:Lcom/iot/engine/SplashScreen;

    invoke-virtual {v2, v1}, Lcom/iot/engine/SplashScreen;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 42
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_4
    iget-object v2, p0, Lcom/iot/engine/SplashScreen$1;->val$session:LSession/SessionManager;

    invoke-virtual {v2}, LSession/SessionManager;->getUserSync()Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 43
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/iot/engine/SplashScreen$1;->this$0:Lcom/iot/engine/SplashScreen;

    const-class v3, Lcom/iot/engine/MainActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 44
    .restart local v1    # "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/iot/engine/SplashScreen$1;->this$0:Lcom/iot/engine/SplashScreen;

    invoke-virtual {v2, v1}, Lcom/iot/engine/SplashScreen;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 46
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_5
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/iot/engine/SplashScreen$1;->this$0:Lcom/iot/engine/SplashScreen;

    const-class v3, Lcom/iot/engine/MainActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 47
    .restart local v1    # "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/iot/engine/SplashScreen$1;->this$0:Lcom/iot/engine/SplashScreen;

    invoke-virtual {v2, v1}, Lcom/iot/engine/SplashScreen;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 30
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/iot/engine/SplashScreen$1;->val$session:LSession/SessionManager;

    invoke-virtual {v3}, LSession/SessionManager;->getUSERID()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 32
    iget-object v3, p0, Lcom/iot/engine/SplashScreen$1;->val$session:LSession/SessionManager;

    invoke-virtual {v3}, LSession/SessionManager;->getDemoUser()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DemoUser"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 33
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/iot/engine/SplashScreen$1;->this$0:Lcom/iot/engine/SplashScreen;

    const-class v4, Lcom/iot/engine/MainActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 34
    .restart local v1    # "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/iot/engine/SplashScreen$1;->this$0:Lcom/iot/engine/SplashScreen;

    invoke-virtual {v3, v1}, Lcom/iot/engine/SplashScreen;->startActivity(Landroid/content/Intent;)V

    .line 48
    :goto_1
    throw v2

    .line 36
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_6
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/iot/engine/SplashScreen$1;->this$0:Lcom/iot/engine/SplashScreen;

    const-class v4, Lcom/iot/engine/FirstPage;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 37
    .restart local v1    # "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/iot/engine/SplashScreen$1;->this$0:Lcom/iot/engine/SplashScreen;

    invoke-virtual {v3, v1}, Lcom/iot/engine/SplashScreen;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 42
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_7
    iget-object v3, p0, Lcom/iot/engine/SplashScreen$1;->val$session:LSession/SessionManager;

    invoke-virtual {v3}, LSession/SessionManager;->getUserSync()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 43
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/iot/engine/SplashScreen$1;->this$0:Lcom/iot/engine/SplashScreen;

    const-class v4, Lcom/iot/engine/MainActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 44
    .restart local v1    # "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/iot/engine/SplashScreen$1;->this$0:Lcom/iot/engine/SplashScreen;

    invoke-virtual {v3, v1}, Lcom/iot/engine/SplashScreen;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 46
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_8
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/iot/engine/SplashScreen$1;->this$0:Lcom/iot/engine/SplashScreen;

    const-class v4, Lcom/iot/engine/MainActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 47
    .restart local v1    # "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/iot/engine/SplashScreen$1;->this$0:Lcom/iot/engine/SplashScreen;

    invoke-virtual {v3, v1}, Lcom/iot/engine/SplashScreen;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method
