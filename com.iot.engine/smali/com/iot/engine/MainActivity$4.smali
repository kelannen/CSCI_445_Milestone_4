.class Lcom/iot/engine/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iot/engine/MainActivity;->showLoginDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iot/engine/MainActivity;

.field final synthetic val$edtPassword:Landroid/widget/EditText;

.field final synthetic val$edtUsername:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/iot/engine/MainActivity;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iot/engine/MainActivity;

    .prologue
    .line 627
    iput-object p1, p0, Lcom/iot/engine/MainActivity$4;->this$0:Lcom/iot/engine/MainActivity;

    iput-object p2, p0, Lcom/iot/engine/MainActivity$4;->val$edtUsername:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/iot/engine/MainActivity$4;->val$edtPassword:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 631
    iget-object v2, p0, Lcom/iot/engine/MainActivity$4;->val$edtUsername:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 632
    .local v0, "emailId":Ljava/lang/String;
    iget-object v2, p0, Lcom/iot/engine/MainActivity$4;->val$edtPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 634
    .local v1, "password":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 636
    iget-object v2, p0, Lcom/iot/engine/MainActivity$4;->this$0:Lcom/iot/engine/MainActivity;

    invoke-virtual {v2, v0}, Lcom/iot/engine/MainActivity;->validateEmail(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 637
    iget-object v2, p0, Lcom/iot/engine/MainActivity$4;->this$0:Lcom/iot/engine/MainActivity;

    iget-object v3, p0, Lcom/iot/engine/MainActivity$4;->this$0:Lcom/iot/engine/MainActivity;

    invoke-virtual {v3}, Lcom/iot/engine/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060085

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 654
    :goto_0
    return-void

    .line 641
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x6

    if-ge v2, v3, :cond_1

    .line 642
    iget-object v2, p0, Lcom/iot/engine/MainActivity$4;->this$0:Lcom/iot/engine/MainActivity;

    iget-object v3, p0, Lcom/iot/engine/MainActivity$4;->this$0:Lcom/iot/engine/MainActivity;

    invoke-virtual {v3}, Lcom/iot/engine/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060084

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 646
    :cond_1
    iget-object v2, p0, Lcom/iot/engine/MainActivity$4;->this$0:Lcom/iot/engine/MainActivity;

    invoke-static {v2}, LSession/Constants;->isInternetAvailable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 647
    new-instance v2, Lcom/iot/engine/MainActivity$AsyncLoginTask;

    iget-object v3, p0, Lcom/iot/engine/MainActivity$4;->this$0:Lcom/iot/engine/MainActivity;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/iot/engine/MainActivity$AsyncLoginTask;-><init>(Lcom/iot/engine/MainActivity;Lcom/iot/engine/MainActivity$1;)V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    aput-object v0, v3, v5

    const/4 v4, 0x1

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Lcom/iot/engine/MainActivity$AsyncLoginTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 649
    :cond_2
    iget-object v2, p0, Lcom/iot/engine/MainActivity$4;->this$0:Lcom/iot/engine/MainActivity;

    iget-object v3, p0, Lcom/iot/engine/MainActivity$4;->this$0:Lcom/iot/engine/MainActivity;

    invoke-virtual {v3}, Lcom/iot/engine/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060079

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 652
    :cond_3
    iget-object v2, p0, Lcom/iot/engine/MainActivity$4;->this$0:Lcom/iot/engine/MainActivity;

    const-string v3, "Kindly enter email/password"

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
