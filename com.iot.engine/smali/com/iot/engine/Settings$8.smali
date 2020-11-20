.class Lcom/iot/engine/Settings$8;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iot/engine/Settings;->createAlertForChangePanel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iot/engine/Settings;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$edtPassword:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/iot/engine/Settings;Landroid/widget/EditText;Landroid/app/Dialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iot/engine/Settings;

    .prologue
    .line 433
    iput-object p1, p0, Lcom/iot/engine/Settings$8;->this$0:Lcom/iot/engine/Settings;

    iput-object p2, p0, Lcom/iot/engine/Settings$8;->val$edtPassword:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/iot/engine/Settings$8;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 436
    iget-object v2, p0, Lcom/iot/engine/Settings$8;->val$edtPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 437
    .local v0, "edtPass":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 438
    iget-object v2, p0, Lcom/iot/engine/Settings$8;->this$0:Lcom/iot/engine/Settings;

    iget-object v3, p0, Lcom/iot/engine/Settings$8;->this$0:Lcom/iot/engine/Settings;

    invoke-virtual {v3}, Lcom/iot/engine/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060084

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 450
    :goto_0
    return-void

    .line 441
    :cond_0
    const-string v2, "g1234"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 442
    iget-object v2, p0, Lcom/iot/engine/Settings$8;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 443
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/iot/engine/Settings$8;->this$0:Lcom/iot/engine/Settings;

    const-class v3, Lcom/iot/engine/ChangePanelTopic;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 444
    .local v1, "iTopic":Landroid/content/Intent;
    iget-object v2, p0, Lcom/iot/engine/Settings$8;->this$0:Lcom/iot/engine/Settings;

    invoke-virtual {v2, v1}, Lcom/iot/engine/Settings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 447
    .end local v1    # "iTopic":Landroid/content/Intent;
    :cond_1
    iget-object v2, p0, Lcom/iot/engine/Settings$8;->this$0:Lcom/iot/engine/Settings;

    iget-object v3, p0, Lcom/iot/engine/Settings$8;->this$0:Lcom/iot/engine/Settings;

    invoke-virtual {v3}, Lcom/iot/engine/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060074

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
