.class Lcom/iot/engine/UserAccountActivity$1;
.super Ljava/lang/Object;
.source "UserAccountActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iot/engine/UserAccountActivity;->showLoginDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iot/engine/UserAccountActivity;

.field final synthetic val$dialogDeviceID:Landroid/app/Dialog;

.field final synthetic val$edtPassword:Landroid/widget/EditText;

.field final synthetic val$edtUsername:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/iot/engine/UserAccountActivity;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/app/Dialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iot/engine/UserAccountActivity;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/iot/engine/UserAccountActivity$1;->this$0:Lcom/iot/engine/UserAccountActivity;

    iput-object p2, p0, Lcom/iot/engine/UserAccountActivity$1;->val$edtUsername:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/iot/engine/UserAccountActivity$1;->val$edtPassword:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/iot/engine/UserAccountActivity$1;->val$dialogDeviceID:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 120
    iget-object v2, p0, Lcom/iot/engine/UserAccountActivity$1;->val$edtUsername:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "emailId":Ljava/lang/String;
    iget-object v2, p0, Lcom/iot/engine/UserAccountActivity$1;->val$edtPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, "password":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 124
    iget-object v2, p0, Lcom/iot/engine/UserAccountActivity$1;->val$dialogDeviceID:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 125
    new-instance v2, Lcom/iot/engine/UserAccountActivity$AsyncLoginTask;

    iget-object v3, p0, Lcom/iot/engine/UserAccountActivity$1;->this$0:Lcom/iot/engine/UserAccountActivity;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/iot/engine/UserAccountActivity$AsyncLoginTask;-><init>(Lcom/iot/engine/UserAccountActivity;Lcom/iot/engine/UserAccountActivity$1;)V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    aput-object v0, v3, v5

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Lcom/iot/engine/UserAccountActivity$AsyncLoginTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 135
    :goto_0
    return-void

    .line 127
    :cond_0
    iget-object v2, p0, Lcom/iot/engine/UserAccountActivity$1;->this$0:Lcom/iot/engine/UserAccountActivity;

    const-string v3, "Kindly enter email/password"

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
