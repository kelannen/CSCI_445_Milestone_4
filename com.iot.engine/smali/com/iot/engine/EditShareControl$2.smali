.class Lcom/iot/engine/EditShareControl$2;
.super Ljava/lang/Object;
.source "EditShareControl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iot/engine/EditShareControl;->onClickOfUpadate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iot/engine/EditShareControl;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$edtPasswordShareControl:Landroid/widget/EditText;

.field final synthetic val$sessionManager:LSession/SessionManager;


# direct methods
.method constructor <init>(Lcom/iot/engine/EditShareControl;Landroid/widget/EditText;LSession/SessionManager;Landroid/app/Dialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iot/engine/EditShareControl;

    .prologue
    .line 166
    iput-object p1, p0, Lcom/iot/engine/EditShareControl$2;->this$0:Lcom/iot/engine/EditShareControl;

    iput-object p2, p0, Lcom/iot/engine/EditShareControl$2;->val$edtPasswordShareControl:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/iot/engine/EditShareControl$2;->val$sessionManager:LSession/SessionManager;

    iput-object p4, p0, Lcom/iot/engine/EditShareControl$2;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 170
    iget-object v1, p0, Lcom/iot/engine/EditShareControl$2;->val$edtPasswordShareControl:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, "strPass":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    .line 173
    iget-object v1, p0, Lcom/iot/engine/EditShareControl$2;->this$0:Lcom/iot/engine/EditShareControl;

    iget-object v2, p0, Lcom/iot/engine/EditShareControl$2;->this$0:Lcom/iot/engine/EditShareControl;

    invoke-virtual {v2}, Lcom/iot/engine/EditShareControl;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060084

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 198
    :goto_0
    return-void

    .line 178
    :cond_0
    iget-object v1, p0, Lcom/iot/engine/EditShareControl$2;->val$sessionManager:LSession/SessionManager;

    invoke-virtual {v1}, LSession/SessionManager;->getUserType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 180
    iget-object v1, p0, Lcom/iot/engine/EditShareControl$2;->val$sessionManager:LSession/SessionManager;

    invoke-virtual {v1}, LSession/SessionManager;->getPassword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 182
    iget-object v1, p0, Lcom/iot/engine/EditShareControl$2;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 184
    new-instance v1, Lcom/iot/engine/EditShareControl$AsyncUpdateUser;

    iget-object v2, p0, Lcom/iot/engine/EditShareControl$2;->this$0:Lcom/iot/engine/EditShareControl;

    invoke-direct {v1, v2}, Lcom/iot/engine/EditShareControl$AsyncUpdateUser;-><init>(Lcom/iot/engine/EditShareControl;)V

    new-array v2, v4, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/iot/engine/EditShareControl$AsyncUpdateUser;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 189
    :cond_1
    iget-object v1, p0, Lcom/iot/engine/EditShareControl$2;->this$0:Lcom/iot/engine/EditShareControl;

    iget-object v2, p0, Lcom/iot/engine/EditShareControl$2;->this$0:Lcom/iot/engine/EditShareControl;

    invoke-virtual {v2}, Lcom/iot/engine/EditShareControl;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060074

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 194
    :cond_2
    iget-object v1, p0, Lcom/iot/engine/EditShareControl$2;->this$0:Lcom/iot/engine/EditShareControl;

    iget-object v2, p0, Lcom/iot/engine/EditShareControl$2;->this$0:Lcom/iot/engine/EditShareControl;

    invoke-virtual {v2}, Lcom/iot/engine/EditShareControl;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060076

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
