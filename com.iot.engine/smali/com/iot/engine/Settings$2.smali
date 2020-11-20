.class Lcom/iot/engine/Settings$2;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iot/engine/Settings;->AlertChnagePasscode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iot/engine/Settings;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$edtPasscode:Landroid/widget/EditText;

.field final synthetic val$loginPassword:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/iot/engine/Settings;Landroid/widget/EditText;Ljava/lang/String;Landroid/app/Dialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iot/engine/Settings;

    .prologue
    .line 259
    iput-object p1, p0, Lcom/iot/engine/Settings$2;->this$0:Lcom/iot/engine/Settings;

    iput-object p2, p0, Lcom/iot/engine/Settings$2;->val$edtPasscode:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/iot/engine/Settings$2;->val$loginPassword:Ljava/lang/String;

    iput-object p4, p0, Lcom/iot/engine/Settings$2;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 263
    iget-object v1, p0, Lcom/iot/engine/Settings$2;->val$edtPasscode:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 264
    iget-object v1, p0, Lcom/iot/engine/Settings$2;->this$0:Lcom/iot/engine/Settings;

    const-string v2, "Kindly enter password"

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 279
    :goto_0
    return-void

    .line 266
    :cond_0
    iget-object v1, p0, Lcom/iot/engine/Settings$2;->val$loginPassword:Ljava/lang/String;

    iget-object v2, p0, Lcom/iot/engine/Settings$2;->val$edtPasscode:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 268
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/iot/engine/Settings$2;->this$0:Lcom/iot/engine/Settings;

    const-class v2, Lcom/iot/engine/ChangePasscode;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 269
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "ChangePasscode"

    const-string v2, "changepasscode"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    iget-object v1, p0, Lcom/iot/engine/Settings$2;->this$0:Lcom/iot/engine/Settings;

    invoke-virtual {v1, v0}, Lcom/iot/engine/Settings;->startActivity(Landroid/content/Intent;)V

    .line 277
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_1
    iget-object v1, p0, Lcom/iot/engine/Settings$2;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 274
    :cond_1
    iget-object v1, p0, Lcom/iot/engine/Settings$2;->this$0:Lcom/iot/engine/Settings;

    const v2, 0x7f060074

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
