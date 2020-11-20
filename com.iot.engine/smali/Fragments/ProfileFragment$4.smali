.class LFragments/ProfileFragment$4;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LFragments/ProfileFragment;->alertDialogShowMessage(Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LFragments/ProfileFragment;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$mMap:Ljava/util/HashMap;


# direct methods
.method constructor <init>(LFragments/ProfileFragment;Landroid/app/Dialog;Ljava/util/HashMap;)V
    .locals 0
    .param p1, "this$0"    # LFragments/ProfileFragment;

    .prologue
    .line 299
    iput-object p1, p0, LFragments/ProfileFragment$4;->this$0:LFragments/ProfileFragment;

    iput-object p2, p0, LFragments/ProfileFragment$4;->val$dialog:Landroid/app/Dialog;

    iput-object p3, p0, LFragments/ProfileFragment$4;->val$mMap:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 302
    iget-object v1, p0, LFragments/ProfileFragment$4;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 304
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, LFragments/ProfileFragment$4;->this$0:LFragments/ProfileFragment;

    invoke-virtual {v1}, LFragments/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/iot/engine/SelectSwitchExapabaleActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 305
    .local v0, "intentON":Landroid/content/Intent;
    const-string v1, "ACTION"

    const-string v2, "00"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 306
    const-string v2, "ID"

    iget-object v1, p0, LFragments/ProfileFragment$4;->val$mMap:Ljava/util/HashMap;

    const-string v3, "_id"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 307
    const-string v2, "Mode_Name"

    iget-object v1, p0, LFragments/ProfileFragment$4;->val$mMap:Ljava/util/HashMap;

    const-string v3, "Mode_Name"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    const-string v2, "off_mode"

    iget-object v1, p0, LFragments/ProfileFragment$4;->val$mMap:Ljava/util/HashMap;

    const-string v3, "off_mode"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 309
    iget-object v1, p0, LFragments/ProfileFragment$4;->this$0:LFragments/ProfileFragment;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, LFragments/ProfileFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 311
    return-void
.end method
