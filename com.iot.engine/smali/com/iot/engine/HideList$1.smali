.class Lcom/iot/engine/HideList$1;
.super Landroid/content/BroadcastReceiver;
.source "HideList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iot/engine/HideList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iot/engine/HideList;


# direct methods
.method constructor <init>(Lcom/iot/engine/HideList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iot/engine/HideList;

    .prologue
    .line 313
    iput-object p1, p0, Lcom/iot/engine/HideList$1;->this$0:Lcom/iot/engine/HideList;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 316
    iget-object v0, p0, Lcom/iot/engine/HideList$1;->this$0:Lcom/iot/engine/HideList;

    invoke-static {v0}, Lcom/iot/engine/HideList;->access$200(Lcom/iot/engine/HideList;)V

    .line 317
    return-void
.end method
