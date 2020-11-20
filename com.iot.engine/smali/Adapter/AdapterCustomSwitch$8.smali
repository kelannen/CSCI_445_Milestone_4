.class LAdapter/AdapterCustomSwitch$8;
.super Ljava/lang/Object;
.source "AdapterCustomSwitch.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LAdapter/AdapterCustomSwitch;->AlertChangePasscode()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LAdapter/AdapterCustomSwitch;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$edtPasscode:Landroid/widget/EditText;


# direct methods
.method constructor <init>(LAdapter/AdapterCustomSwitch;Landroid/widget/EditText;Landroid/app/Dialog;)V
    .locals 0
    .param p1, "this$0"    # LAdapter/AdapterCustomSwitch;

    .prologue
    .line 364
    iput-object p1, p0, LAdapter/AdapterCustomSwitch$8;->this$0:LAdapter/AdapterCustomSwitch;

    iput-object p2, p0, LAdapter/AdapterCustomSwitch$8;->val$edtPasscode:Landroid/widget/EditText;

    iput-object p3, p0, LAdapter/AdapterCustomSwitch$8;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 367
    iget-object v1, p0, LAdapter/AdapterCustomSwitch$8;->val$edtPasscode:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 369
    iget-object v1, p0, LAdapter/AdapterCustomSwitch$8;->this$0:LAdapter/AdapterCustomSwitch;

    iget-object v1, v1, LAdapter/AdapterCustomSwitch;->context:Landroid/content/Context;

    const-string v2, "Pass code cant be empty"

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 384
    :goto_0
    return-void

    .line 373
    :cond_0
    iget-object v1, p0, LAdapter/AdapterCustomSwitch$8;->this$0:LAdapter/AdapterCustomSwitch;

    iget-object v1, v1, LAdapter/AdapterCustomSwitch;->session:LSession/SessionManager;

    invoke-virtual {v1}, LSession/SessionManager;->getPassword()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, LAdapter/AdapterCustomSwitch$8;->val$edtPasscode:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 375
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, LAdapter/AdapterCustomSwitch$8;->this$0:LAdapter/AdapterCustomSwitch;

    iget-object v1, v1, LAdapter/AdapterCustomSwitch;->context:Landroid/content/Context;

    const-class v2, Lcom/iot/engine/ChangePasscode;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 376
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, LAdapter/AdapterCustomSwitch$8;->this$0:LAdapter/AdapterCustomSwitch;

    iget-object v1, v1, LAdapter/AdapterCustomSwitch;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 382
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_1
    iget-object v1, p0, LAdapter/AdapterCustomSwitch$8;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 380
    :cond_1
    iget-object v1, p0, LAdapter/AdapterCustomSwitch$8;->this$0:LAdapter/AdapterCustomSwitch;

    iget-object v1, v1, LAdapter/AdapterCustomSwitch;->context:Landroid/content/Context;

    const v2, 0x7f060074

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
