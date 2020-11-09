.class Lcom/iot/engine/GoRemote/AddChannel$1;
.super Ljava/lang/Object;
.source "AddChannel.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iot/engine/GoRemote/AddChannel;->openAlertForMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iot/engine/GoRemote/AddChannel;

.field final synthetic val$items:[Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/iot/engine/GoRemote/AddChannel;[Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iot/engine/GoRemote/AddChannel;

    .prologue
    .line 311
    iput-object p1, p0, Lcom/iot/engine/GoRemote/AddChannel$1;->this$0:Lcom/iot/engine/GoRemote/AddChannel;

    iput-object p2, p0, Lcom/iot/engine/GoRemote/AddChannel$1;->val$items:[Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "item"    # I

    .prologue
    .line 316
    iget-object v1, p0, Lcom/iot/engine/GoRemote/AddChannel$1;->val$items:[Ljava/lang/CharSequence;

    aget-object v1, v1, p2

    const-string v2, "Camera"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 317
    iget-object v1, p0, Lcom/iot/engine/GoRemote/AddChannel$1;->this$0:Lcom/iot/engine/GoRemote/AddChannel;

    invoke-static {v1}, LSession/Utility;->checkPermission(Landroid/content/Context;)Z

    move-result v0

    .line 318
    .local v0, "result":Z
    iget-object v1, p0, Lcom/iot/engine/GoRemote/AddChannel$1;->this$0:Lcom/iot/engine/GoRemote/AddChannel;

    const-string v2, "Camera"

    invoke-static {v1, v2}, Lcom/iot/engine/GoRemote/AddChannel;->access$002(Lcom/iot/engine/GoRemote/AddChannel;Ljava/lang/String;)Ljava/lang/String;

    .line 319
    if-eqz v0, :cond_0

    .line 320
    iget-object v1, p0, Lcom/iot/engine/GoRemote/AddChannel$1;->this$0:Lcom/iot/engine/GoRemote/AddChannel;

    invoke-static {v1}, Lcom/iot/engine/GoRemote/AddChannel;->access$100(Lcom/iot/engine/GoRemote/AddChannel;)V

    .line 330
    .end local v0    # "result":Z
    :cond_0
    :goto_0
    return-void

    .line 322
    :cond_1
    iget-object v1, p0, Lcom/iot/engine/GoRemote/AddChannel$1;->val$items:[Ljava/lang/CharSequence;

    aget-object v1, v1, p2

    const-string v2, "Gallery"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 323
    iget-object v1, p0, Lcom/iot/engine/GoRemote/AddChannel$1;->this$0:Lcom/iot/engine/GoRemote/AddChannel;

    invoke-static {v1}, LSession/Utility;->checkPermission(Landroid/content/Context;)Z

    move-result v0

    .line 324
    .restart local v0    # "result":Z
    iget-object v1, p0, Lcom/iot/engine/GoRemote/AddChannel$1;->this$0:Lcom/iot/engine/GoRemote/AddChannel;

    const-string v2, "Gallery"

    invoke-static {v1, v2}, Lcom/iot/engine/GoRemote/AddChannel;->access$002(Lcom/iot/engine/GoRemote/AddChannel;Ljava/lang/String;)Ljava/lang/String;

    .line 325
    if-eqz v0, :cond_0

    .line 326
    iget-object v1, p0, Lcom/iot/engine/GoRemote/AddChannel$1;->this$0:Lcom/iot/engine/GoRemote/AddChannel;

    invoke-static {v1}, Lcom/iot/engine/GoRemote/AddChannel;->access$200(Lcom/iot/engine/GoRemote/AddChannel;)V

    goto :goto_0

    .line 327
    .end local v0    # "result":Z
    :cond_2
    iget-object v1, p0, Lcom/iot/engine/GoRemote/AddChannel$1;->val$items:[Ljava/lang/CharSequence;

    aget-object v1, v1, p2

    const-string v2, "Cancel"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 328
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0
.end method
