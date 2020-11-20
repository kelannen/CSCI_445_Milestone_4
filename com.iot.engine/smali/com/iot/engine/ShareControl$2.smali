.class Lcom/iot/engine/ShareControl$2;
.super Ljava/lang/Object;
.source "ShareControl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iot/engine/ShareControl;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iot/engine/ShareControl;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$edtPasswordShareControl:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/iot/engine/ShareControl;Landroid/widget/EditText;Landroid/app/Dialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iot/engine/ShareControl;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/iot/engine/ShareControl$2;->this$0:Lcom/iot/engine/ShareControl;

    iput-object p2, p0, Lcom/iot/engine/ShareControl$2;->val$edtPasswordShareControl:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/iot/engine/ShareControl$2;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 153
    iget-object v3, p0, Lcom/iot/engine/ShareControl$2;->val$edtPasswordShareControl:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 154
    .local v2, "strPass":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v7, :cond_0

    .line 155
    iget-object v3, p0, Lcom/iot/engine/ShareControl$2;->this$0:Lcom/iot/engine/ShareControl;

    iget-object v4, p0, Lcom/iot/engine/ShareControl$2;->this$0:Lcom/iot/engine/ShareControl;

    invoke-virtual {v4}, Lcom/iot/engine/ShareControl;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060084

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/iot/engine/ShareControl;->access$100(Lcom/iot/engine/ShareControl;Ljava/lang/String;)V

    .line 180
    :goto_0
    return-void

    .line 159
    :cond_0
    new-instance v1, LSession/SessionManager;

    iget-object v3, p0, Lcom/iot/engine/ShareControl$2;->this$0:Lcom/iot/engine/ShareControl;

    invoke-direct {v1, v3}, LSession/SessionManager;-><init>(Landroid/content/Context;)V

    .line 160
    .local v1, "session":LSession/SessionManager;
    invoke-virtual {v1}, LSession/SessionManager;->getPassword()Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "pass":Ljava/lang/String;
    invoke-virtual {v1}, LSession/SessionManager;->getUserType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 163
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 165
    iget-object v3, p0, Lcom/iot/engine/ShareControl$2;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 167
    new-instance v3, Lcom/iot/engine/ShareControl$AsyncRegisterShareUser;

    iget-object v4, p0, Lcom/iot/engine/ShareControl$2;->this$0:Lcom/iot/engine/ShareControl;

    invoke-direct {v3, v4}, Lcom/iot/engine/ShareControl$AsyncRegisterShareUser;-><init>(Lcom/iot/engine/ShareControl;)V

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    sget-object v5, LSession/Constants;->URL_GO_AWS:Ljava/lang/String;

    aput-object v5, v4, v6

    const-string v5, "0"

    aput-object v5, v4, v7

    invoke-virtual {v3, v4}, Lcom/iot/engine/ShareControl$AsyncRegisterShareUser;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 171
    :cond_1
    iget-object v3, p0, Lcom/iot/engine/ShareControl$2;->this$0:Lcom/iot/engine/ShareControl;

    iget-object v4, p0, Lcom/iot/engine/ShareControl$2;->this$0:Lcom/iot/engine/ShareControl;

    invoke-virtual {v4}, Lcom/iot/engine/ShareControl;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060074

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/iot/engine/ShareControl;->access$100(Lcom/iot/engine/ShareControl;Ljava/lang/String;)V

    goto :goto_0

    .line 176
    :cond_2
    iget-object v3, p0, Lcom/iot/engine/ShareControl$2;->this$0:Lcom/iot/engine/ShareControl;

    iget-object v4, p0, Lcom/iot/engine/ShareControl$2;->this$0:Lcom/iot/engine/ShareControl;

    invoke-virtual {v4}, Lcom/iot/engine/ShareControl;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060076

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
