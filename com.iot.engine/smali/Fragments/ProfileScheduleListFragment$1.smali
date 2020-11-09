.class LFragments/ProfileScheduleListFragment$1;
.super Ljava/lang/Object;
.source "ProfileScheduleListFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LFragments/ProfileScheduleListFragment;->onClickOfScheduleList(Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LFragments/ProfileScheduleListFragment;

.field final synthetic val$mMap:Ljava/util/HashMap;


# direct methods
.method constructor <init>(LFragments/ProfileScheduleListFragment;Ljava/util/HashMap;)V
    .locals 0
    .param p1, "this$0"    # LFragments/ProfileScheduleListFragment;

    .prologue
    .line 96
    iput-object p1, p0, LFragments/ProfileScheduleListFragment$1;->this$0:LFragments/ProfileScheduleListFragment;

    iput-object p2, p0, LFragments/ProfileScheduleListFragment$1;->val$mMap:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, 0x0

    .line 99
    packed-switch p2, :pswitch_data_0

    .line 120
    :goto_0
    return-void

    .line 101
    :pswitch_0
    iget-object v1, p0, LFragments/ProfileScheduleListFragment$1;->this$0:LFragments/ProfileScheduleListFragment;

    invoke-static {v1}, LFragments/ProfileScheduleListFragment;->access$000(LFragments/ProfileScheduleListFragment;)LSession/SessionManager;

    move-result-object v1

    invoke-virtual {v1}, LSession/SessionManager;->getUserType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, LFragments/ProfileScheduleListFragment$1;->this$0:LFragments/ProfileScheduleListFragment;

    invoke-static {v1}, LFragments/ProfileScheduleListFragment;->access$000(LFragments/ProfileScheduleListFragment;)LSession/SessionManager;

    move-result-object v1

    invoke-virtual {v1}, LSession/SessionManager;->getUserType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 102
    :cond_0
    iget-object v1, p0, LFragments/ProfileScheduleListFragment$1;->this$0:LFragments/ProfileScheduleListFragment;

    invoke-virtual {v1}, LFragments/ProfileScheduleListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "You don\'t have a permission"

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 104
    :cond_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, LFragments/ProfileScheduleListFragment$1;->this$0:LFragments/ProfileScheduleListFragment;

    invoke-virtual {v1}, LFragments/ProfileScheduleListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/iot/engine/ScheduleProfile;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 105
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "OPERATION"

    iget-object v2, p0, LFragments/ProfileScheduleListFragment$1;->val$mMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 107
    iget-object v1, p0, LFragments/ProfileScheduleListFragment$1;->this$0:LFragments/ProfileScheduleListFragment;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v0, v2}, LFragments/ProfileScheduleListFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 113
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_1
    iget-object v1, p0, LFragments/ProfileScheduleListFragment$1;->this$0:LFragments/ProfileScheduleListFragment;

    invoke-static {v1}, LFragments/ProfileScheduleListFragment;->access$000(LFragments/ProfileScheduleListFragment;)LSession/SessionManager;

    move-result-object v1

    invoke-virtual {v1}, LSession/SessionManager;->getUserType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, LFragments/ProfileScheduleListFragment$1;->this$0:LFragments/ProfileScheduleListFragment;

    invoke-static {v1}, LFragments/ProfileScheduleListFragment;->access$000(LFragments/ProfileScheduleListFragment;)LSession/SessionManager;

    move-result-object v1

    invoke-virtual {v1}, LSession/SessionManager;->getUserType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 114
    :cond_2
    iget-object v1, p0, LFragments/ProfileScheduleListFragment$1;->this$0:LFragments/ProfileScheduleListFragment;

    invoke-virtual {v1}, LFragments/ProfileScheduleListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "You don\'t have a permission"

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 116
    :cond_3
    iget-object v1, p0, LFragments/ProfileScheduleListFragment$1;->this$0:LFragments/ProfileScheduleListFragment;

    iget-object v2, p0, LFragments/ProfileScheduleListFragment$1;->val$mMap:Ljava/util/HashMap;

    invoke-static {v1, v2}, LFragments/ProfileScheduleListFragment;->access$100(LFragments/ProfileScheduleListFragment;Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 99
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
