.class LFragments/Home$5;
.super Landroid/content/BroadcastReceiver;
.source "Home.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LFragments/Home;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LFragments/Home;


# direct methods
.method constructor <init>(LFragments/Home;)V
    .locals 0
    .param p1, "this$0"    # LFragments/Home;

    .prologue
    .line 644
    iput-object p1, p0, LFragments/Home$5;->this$0:LFragments/Home;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 648
    const-string v0, "KEY"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 649
    :cond_0
    const-string v0, "INTERNET_TEST"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 650
    iget-object v0, p0, LFragments/Home$5;->this$0:LFragments/Home;

    const-string v1, "INTERNET_TEST"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LFragments/Home;->access$1300(LFragments/Home;Ljava/lang/String;)V

    .line 661
    :cond_1
    :goto_0
    return-void

    .line 651
    :cond_2
    const-string v0, "image_url"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 652
    iget-object v0, p0, LFragments/Home$5;->this$0:LFragments/Home;

    invoke-static {v0}, LFragments/Home;->access$400(LFragments/Home;)LSession/SessionManager;

    move-result-object v0

    invoke-virtual {v0}, LSession/SessionManager;->getBlastFlag()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 653
    iget-object v0, p0, LFragments/Home$5;->this$0:LFragments/Home;

    const-string v1, "image_url"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, LFragments/Home;->access$1400(LFragments/Home;Ljava/lang/String;)V

    goto :goto_0

    .line 657
    :cond_3
    iget-object v0, p0, LFragments/Home$5;->this$0:LFragments/Home;

    invoke-virtual {v0}, LFragments/Home;->setActivityCount()V

    .line 658
    iget-object v0, p0, LFragments/Home$5;->this$0:LFragments/Home;

    invoke-static {v0}, LFragments/Home;->access$1500(LFragments/Home;)V

    .line 659
    iget-object v0, p0, LFragments/Home$5;->this$0:LFragments/Home;

    invoke-static {v0}, LFragments/Home;->access$1600(LFragments/Home;)V

    goto :goto_0
.end method
