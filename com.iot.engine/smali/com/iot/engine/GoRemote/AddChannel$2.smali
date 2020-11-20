.class Lcom/iot/engine/GoRemote/AddChannel$2;
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

.field final synthetic val$edtChannelName:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/iot/engine/GoRemote/AddChannel;Landroid/widget/EditText;Landroid/app/Dialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iot/engine/GoRemote/AddChannel;

    .prologue
    .line 347
    iput-object p1, p0, Lcom/iot/engine/GoRemote/AddChannel$2;->this$0:Lcom/iot/engine/GoRemote/AddChannel;

    iput-object p2, p0, Lcom/iot/engine/GoRemote/AddChannel$2;->val$edtChannelName:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/iot/engine/GoRemote/AddChannel$2;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 351
    iget-object v1, p0, Lcom/iot/engine/GoRemote/AddChannel$2;->val$edtChannelName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 352
    .local v0, "mChannelName":Ljava/lang/String;
    const-string v1, "AddChannel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Channel Name "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 356
    iget-object v1, p0, Lcom/iot/engine/GoRemote/AddChannel$2;->this$0:Lcom/iot/engine/GoRemote/AddChannel;

    const-string v2, "Kindly set channel name"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 364
    :goto_0
    return-void

    .line 361
    :cond_0
    iget-object v1, p0, Lcom/iot/engine/GoRemote/AddChannel$2;->this$0:Lcom/iot/engine/GoRemote/AddChannel;

    iget-object v1, v1, Lcom/iot/engine/GoRemote/AddChannel;->etChannelName:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 362
    iget-object v1, p0, Lcom/iot/engine/GoRemote/AddChannel$2;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0
.end method
