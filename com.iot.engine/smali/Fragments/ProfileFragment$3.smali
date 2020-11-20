.class LFragments/ProfileFragment$3;
.super Ljava/lang/Object;
.source "ProfileFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LFragments/ProfileFragment;->OnLongClickListener(Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LFragments/ProfileFragment;

.field final synthetic val$mMap:Ljava/util/HashMap;


# direct methods
.method constructor <init>(LFragments/ProfileFragment;Ljava/util/HashMap;)V
    .locals 0
    .param p1, "this$0"    # LFragments/ProfileFragment;

    .prologue
    .line 227
    iput-object p1, p0, LFragments/ProfileFragment$3;->this$0:LFragments/ProfileFragment;

    iput-object p2, p0, LFragments/ProfileFragment$3;->val$mMap:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 230
    packed-switch p2, :pswitch_data_0

    .line 254
    :goto_0
    return-void

    .line 232
    :pswitch_0
    iget-object v0, p0, LFragments/ProfileFragment$3;->this$0:LFragments/ProfileFragment;

    iget-object v1, p0, LFragments/ProfileFragment$3;->val$mMap:Ljava/util/HashMap;

    invoke-static {v0, v1}, LFragments/ProfileFragment;->access$200(LFragments/ProfileFragment;Ljava/util/HashMap;)V

    goto :goto_0

    .line 235
    :pswitch_1
    iget-object v0, p0, LFragments/ProfileFragment$3;->this$0:LFragments/ProfileFragment;

    invoke-static {v0}, LFragments/ProfileFragment;->access$300(LFragments/ProfileFragment;)V

    goto :goto_0

    .line 238
    :pswitch_2
    iget-object v0, p0, LFragments/ProfileFragment$3;->this$0:LFragments/ProfileFragment;

    iget-object v1, p0, LFragments/ProfileFragment$3;->val$mMap:Ljava/util/HashMap;

    invoke-static {v0, v1}, LFragments/ProfileFragment;->access$400(LFragments/ProfileFragment;Ljava/util/HashMap;)V

    goto :goto_0

    .line 241
    :pswitch_3
    iget-object v0, p0, LFragments/ProfileFragment$3;->this$0:LFragments/ProfileFragment;

    invoke-static {v0}, LFragments/ProfileFragment;->access$500(LFragments/ProfileFragment;)LSession/SessionManager;

    move-result-object v0

    invoke-virtual {v0}, LSession/SessionManager;->getUserType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LFragments/ProfileFragment$3;->this$0:LFragments/ProfileFragment;

    invoke-static {v0}, LFragments/ProfileFragment;->access$500(LFragments/ProfileFragment;)LSession/SessionManager;

    move-result-object v0

    invoke-virtual {v0}, LSession/SessionManager;->getUserType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 242
    :cond_0
    iget-object v0, p0, LFragments/ProfileFragment$3;->this$0:LFragments/ProfileFragment;

    invoke-virtual {v0}, LFragments/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "Don\'t have authority to schedule the profile."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 244
    :cond_1
    iget-object v0, p0, LFragments/ProfileFragment$3;->this$0:LFragments/ProfileFragment;

    iget-object v1, p0, LFragments/ProfileFragment$3;->val$mMap:Ljava/util/HashMap;

    invoke-static {v0, v1}, LFragments/ProfileFragment;->access$600(LFragments/ProfileFragment;Ljava/util/HashMap;)V

    goto :goto_0

    .line 249
    :pswitch_4
    iget-object v0, p0, LFragments/ProfileFragment$3;->this$0:LFragments/ProfileFragment;

    iget-object v1, p0, LFragments/ProfileFragment$3;->val$mMap:Ljava/util/HashMap;

    invoke-static {v0, v1}, LFragments/ProfileFragment;->access$700(LFragments/ProfileFragment;Ljava/util/HashMap;)V

    goto :goto_0

    .line 230
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
