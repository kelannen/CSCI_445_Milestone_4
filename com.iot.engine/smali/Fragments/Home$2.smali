.class LFragments/Home$2;
.super Ljava/lang/Object;
.source "Home.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LFragments/Home;->AlertSetHomeLock()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LFragments/Home;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$edtPasscode:Landroid/widget/EditText;


# direct methods
.method constructor <init>(LFragments/Home;Landroid/widget/EditText;Landroid/app/Dialog;)V
    .locals 0
    .param p1, "this$0"    # LFragments/Home;

    .prologue
    .line 418
    iput-object p1, p0, LFragments/Home$2;->this$0:LFragments/Home;

    iput-object p2, p0, LFragments/Home$2;->val$edtPasscode:Landroid/widget/EditText;

    iput-object p3, p0, LFragments/Home$2;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 422
    iget-object v1, p0, LFragments/Home$2;->this$0:LFragments/Home;

    invoke-static {v1}, LFragments/Home;->access$400(LFragments/Home;)LSession/SessionManager;

    move-result-object v1

    invoke-virtual {v1}, LSession/SessionManager;->getPassword()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, LFragments/Home$2;->val$edtPasscode:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 424
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, LFragments/Home$2;->this$0:LFragments/Home;

    invoke-virtual {v1}, LFragments/Home;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/iot/engine/ChangePasscode;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 425
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, LFragments/Home$2;->this$0:LFragments/Home;

    invoke-virtual {v1, v0}, LFragments/Home;->startActivity(Landroid/content/Intent;)V

    .line 431
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    iget-object v1, p0, LFragments/Home$2;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 432
    return-void

    .line 429
    :cond_0
    iget-object v1, p0, LFragments/Home$2;->this$0:LFragments/Home;

    invoke-virtual {v1}, LFragments/Home;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f060074

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
