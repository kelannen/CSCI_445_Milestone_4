.class Lcom/iot/engine/GoRemote/AddChannel$3;
.super Ljava/lang/Object;
.source "AddChannel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iot/engine/GoRemote/AddChannel;->openAlertForSetChannelName()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iot/engine/GoRemote/AddChannel;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/iot/engine/GoRemote/AddChannel;Landroid/app/Dialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iot/engine/GoRemote/AddChannel;

    .prologue
    .line 366
    iput-object p1, p0, Lcom/iot/engine/GoRemote/AddChannel$3;->this$0:Lcom/iot/engine/GoRemote/AddChannel;

    iput-object p2, p0, Lcom/iot/engine/GoRemote/AddChannel$3;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 369
    iget-object v0, p0, Lcom/iot/engine/GoRemote/AddChannel$3;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 370
    return-void
.end method
