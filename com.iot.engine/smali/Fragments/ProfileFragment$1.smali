.class LFragments/ProfileFragment$1;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LFragments/ProfileFragment;->showFolderNameDialog(Ljava/lang/String;Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LFragments/ProfileFragment;

.field final synthetic val$dialogDeviceID:Landroid/app/Dialog;

.field final synthetic val$etName:Landroid/widget/EditText;

.field final synthetic val$mMap:Ljava/util/HashMap;

.field final synthetic val$opt:Ljava/lang/String;

.field final synthetic val$rbTurnOff:Landroid/widget/RadioButton;

.field final synthetic val$rbTurnOn:Landroid/widget/RadioButton;


# direct methods
.method constructor <init>(LFragments/ProfileFragment;Landroid/widget/EditText;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/app/Dialog;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0
    .param p1, "this$0"    # LFragments/ProfileFragment;

    .prologue
    .line 167
    iput-object p1, p0, LFragments/ProfileFragment$1;->this$0:LFragments/ProfileFragment;

    iput-object p2, p0, LFragments/ProfileFragment$1;->val$etName:Landroid/widget/EditText;

    iput-object p3, p0, LFragments/ProfileFragment$1;->val$rbTurnOn:Landroid/widget/RadioButton;

    iput-object p4, p0, LFragments/ProfileFragment$1;->val$rbTurnOff:Landroid/widget/RadioButton;

    iput-object p5, p0, LFragments/ProfileFragment$1;->val$dialogDeviceID:Landroid/app/Dialog;

    iput-object p6, p0, LFragments/ProfileFragment$1;->val$opt:Ljava/lang/String;

    iput-object p7, p0, LFragments/ProfileFragment$1;->val$mMap:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 171
    iget-object v2, p0, LFragments/ProfileFragment$1;->val$etName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, "name":Ljava/lang/String;
    const-string v0, ""

    .line 174
    .local v0, "mSwitchStatus":Ljava/lang/String;
    iget-object v2, p0, LFragments/ProfileFragment$1;->val$rbTurnOn:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 175
    const-string v0, "1"

    .line 177
    :cond_0
    iget-object v2, p0, LFragments/ProfileFragment$1;->val$rbTurnOff:Landroid/widget/RadioButton;

    invoke-virtual {v2}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 178
    const-string v0, "0"

    .line 181
    :cond_1
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 182
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 183
    iget-object v2, p0, LFragments/ProfileFragment$1;->this$0:LFragments/ProfileFragment;

    invoke-virtual {v2}, LFragments/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "Kindly select action of switch."

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 198
    :goto_0
    return-void

    .line 186
    :cond_2
    iget-object v2, p0, LFragments/ProfileFragment$1;->val$dialogDeviceID:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 188
    iget-object v2, p0, LFragments/ProfileFragment$1;->val$opt:Ljava/lang/String;

    const-string v3, "NEW"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 189
    new-instance v2, LFragments/ProfileFragment$AsyncTaskForAddProfile;

    iget-object v3, p0, LFragments/ProfileFragment$1;->this$0:LFragments/ProfileFragment;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, LFragments/ProfileFragment$AsyncTaskForAddProfile;-><init>(LFragments/ProfileFragment;LFragments/ProfileFragment$1;)V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    aput-object v1, v3, v5

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {v2, v3}, LFragments/ProfileFragment$AsyncTaskForAddProfile;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 192
    :cond_3
    new-instance v2, LFragments/ProfileFragment$AsyncTaskForEditProfile;

    iget-object v3, p0, LFragments/ProfileFragment$1;->this$0:LFragments/ProfileFragment;

    iget-object v4, p0, LFragments/ProfileFragment$1;->val$mMap:Ljava/util/HashMap;

    invoke-direct {v2, v3, v4, v1, v0}, LFragments/ProfileFragment$AsyncTaskForEditProfile;-><init>(LFragments/ProfileFragment;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    new-array v3, v5, [Ljava/util/HashMap;

    invoke-virtual {v2, v3}, LFragments/ProfileFragment$AsyncTaskForEditProfile;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 196
    :cond_4
    iget-object v2, p0, LFragments/ProfileFragment$1;->this$0:LFragments/ProfileFragment;

    invoke-virtual {v2}, LFragments/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "Kindly enter mode name"

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
