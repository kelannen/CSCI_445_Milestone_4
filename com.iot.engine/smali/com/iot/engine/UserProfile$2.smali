.class Lcom/iot/engine/UserProfile$2;
.super Ljava/lang/Object;
.source "UserProfile.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iot/engine/UserProfile;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iot/engine/UserProfile;


# direct methods
.method constructor <init>(Lcom/iot/engine/UserProfile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iot/engine/UserProfile;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/iot/engine/UserProfile$2;->this$0:Lcom/iot/engine/UserProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 105
    new-instance v0, LSession/SessionManager;

    iget-object v1, p0, Lcom/iot/engine/UserProfile$2;->this$0:Lcom/iot/engine/UserProfile;

    invoke-direct {v0, v1}, LSession/SessionManager;-><init>(Landroid/content/Context;)V

    .line 106
    .local v0, "sessionManager":LSession/SessionManager;
    invoke-virtual {v0}, LSession/SessionManager;->getDemoUser()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DemoUser"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    :goto_0
    return-void

    .line 109
    :cond_0
    iget-object v1, p0, Lcom/iot/engine/UserProfile$2;->this$0:Lcom/iot/engine/UserProfile;

    invoke-static {v1}, Lcom/iot/engine/UserProfile;->access$000(Lcom/iot/engine/UserProfile;)V

    goto :goto_0
.end method
