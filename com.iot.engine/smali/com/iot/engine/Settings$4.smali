.class Lcom/iot/engine/Settings$4;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iot/engine/Settings;->createAlertRestartHUB(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iot/engine/Settings;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$operation:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/iot/engine/Settings;Ljava/lang/String;Landroid/app/Dialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iot/engine/Settings;

    .prologue
    .line 338
    iput-object p1, p0, Lcom/iot/engine/Settings$4;->this$0:Lcom/iot/engine/Settings;

    iput-object p2, p0, Lcom/iot/engine/Settings$4;->val$operation:Ljava/lang/String;

    iput-object p3, p0, Lcom/iot/engine/Settings$4;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 342
    iget-object v1, p0, Lcom/iot/engine/Settings$4;->this$0:Lcom/iot/engine/Settings;

    sget-object v0, LSession/Constants;->URL_GO:Ljava/lang/String;

    sget-object v2, LSession/Constants;->URL_GO_AWS:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Internet"

    :goto_0
    invoke-static {v1, v0}, Lcom/iot/engine/Settings;->access$002(Lcom/iot/engine/Settings;Ljava/lang/String;)Ljava/lang/String;

    .line 343
    iget-object v0, p0, Lcom/iot/engine/Settings$4;->val$operation:Ljava/lang/String;

    const-string v1, "RestartGoHUB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 344
    iget-object v0, p0, Lcom/iot/engine/Settings$4;->this$0:Lcom/iot/engine/Settings;

    invoke-static {v0}, Lcom/iot/engine/Settings;->access$000(Lcom/iot/engine/Settings;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Internet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 346
    iget-object v0, p0, Lcom/iot/engine/Settings$4;->this$0:Lcom/iot/engine/Settings;

    const-string v1, "Not allowed"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 347
    iget-object v0, p0, Lcom/iot/engine/Settings$4;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 367
    :goto_1
    return-void

    .line 342
    :cond_0
    const-string v0, "Localhub"

    goto :goto_0

    .line 350
    :cond_1
    iget-object v0, p0, Lcom/iot/engine/Settings$4;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 351
    new-instance v0, Lcom/iot/engine/Settings$AsyncRestartHUB;

    iget-object v1, p0, Lcom/iot/engine/Settings$4;->this$0:Lcom/iot/engine/Settings;

    invoke-direct {v0, v1, v4}, Lcom/iot/engine/Settings$AsyncRestartHUB;-><init>(Lcom/iot/engine/Settings;Lcom/iot/engine/Settings$1;)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/iot/engine/Settings$AsyncRestartHUB;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 356
    :cond_2
    iget-object v0, p0, Lcom/iot/engine/Settings$4;->this$0:Lcom/iot/engine/Settings;

    invoke-static {v0}, Lcom/iot/engine/Settings;->access$000(Lcom/iot/engine/Settings;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Internet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 358
    iget-object v0, p0, Lcom/iot/engine/Settings$4;->this$0:Lcom/iot/engine/Settings;

    const-string v1, "Not allowed"

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 359
    iget-object v0, p0, Lcom/iot/engine/Settings$4;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_1

    .line 362
    :cond_3
    iget-object v0, p0, Lcom/iot/engine/Settings$4;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 363
    new-instance v0, Lcom/iot/engine/Settings$AsyncRestartGoReceiver;

    iget-object v1, p0, Lcom/iot/engine/Settings$4;->this$0:Lcom/iot/engine/Settings;

    invoke-direct {v0, v1, v4}, Lcom/iot/engine/Settings$AsyncRestartGoReceiver;-><init>(Lcom/iot/engine/Settings;Lcom/iot/engine/Settings$1;)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/iot/engine/Settings$AsyncRestartGoReceiver;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1
.end method
