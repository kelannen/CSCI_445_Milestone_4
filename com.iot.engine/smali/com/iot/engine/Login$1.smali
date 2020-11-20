.class Lcom/iot/engine/Login$1;
.super Ljava/lang/Object;
.source "Login.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iot/engine/Login;->createDeviceIdDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iot/engine/Login;

.field final synthetic val$edtDeviceId:Landroid/widget/EditText;

.field final synthetic val$edtenterOTP:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/iot/engine/Login;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iot/engine/Login;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/iot/engine/Login$1;->this$0:Lcom/iot/engine/Login;

    iput-object p2, p0, Lcom/iot/engine/Login$1;->val$edtDeviceId:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/iot/engine/Login$1;->val$edtenterOTP:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 151
    iget-object v0, p0, Lcom/iot/engine/Login$1;->this$0:Lcom/iot/engine/Login;

    iget-object v1, p0, Lcom/iot/engine/Login$1;->val$edtDeviceId:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/iot/engine/Login;->mDevideId:Ljava/lang/String;

    .line 152
    iget-object v0, p0, Lcom/iot/engine/Login$1;->this$0:Lcom/iot/engine/Login;

    iget-object v1, p0, Lcom/iot/engine/Login$1;->val$edtenterOTP:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/iot/engine/Login;->mSharedOTP:Ljava/lang/String;

    .line 154
    iget-object v0, p0, Lcom/iot/engine/Login$1;->this$0:Lcom/iot/engine/Login;

    iget-object v0, v0, Lcom/iot/engine/Login;->mDevideId:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iot/engine/Login$1;->this$0:Lcom/iot/engine/Login;

    iget-object v0, v0, Lcom/iot/engine/Login;->mSharedOTP:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/iot/engine/Login$1;->this$0:Lcom/iot/engine/Login;

    iget-object v1, p0, Lcom/iot/engine/Login$1;->this$0:Lcom/iot/engine/Login;

    invoke-virtual {v1}, Lcom/iot/engine/Login;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060077

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iot/engine/Login;->access$000(Lcom/iot/engine/Login;Ljava/lang/String;)V

    .line 163
    :goto_0
    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/iot/engine/Login$1;->this$0:Lcom/iot/engine/Login;

    iget-object v1, p0, Lcom/iot/engine/Login$1;->this$0:Lcom/iot/engine/Login;

    invoke-static {v1}, Lcom/iot/engine/Login;->access$200(Lcom/iot/engine/Login;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iot/engine/Login;->access$102(Lcom/iot/engine/Login;Ljava/lang/String;)Ljava/lang/String;

    .line 161
    new-instance v0, Lcom/iot/engine/Login$VerifyDeviceIdTask;

    iget-object v1, p0, Lcom/iot/engine/Login$1;->this$0:Lcom/iot/engine/Login;

    invoke-direct {v0, v1}, Lcom/iot/engine/Login$VerifyDeviceIdTask;-><init>(Lcom/iot/engine/Login;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/iot/engine/Login$VerifyDeviceIdTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
