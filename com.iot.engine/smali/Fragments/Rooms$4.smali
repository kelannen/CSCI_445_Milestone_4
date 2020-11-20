.class LFragments/Rooms$4;
.super Ljava/lang/Object;
.source "Rooms.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LFragments/Rooms;->createAlertPassdDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LFragments/Rooms;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$edtPassword:Landroid/widget/EditText;


# direct methods
.method constructor <init>(LFragments/Rooms;Landroid/widget/EditText;Landroid/app/Dialog;)V
    .locals 0
    .param p1, "this$0"    # LFragments/Rooms;

    .prologue
    .line 647
    iput-object p1, p0, LFragments/Rooms$4;->this$0:LFragments/Rooms;

    iput-object p2, p0, LFragments/Rooms$4;->val$edtPassword:Landroid/widget/EditText;

    iput-object p3, p0, LFragments/Rooms$4;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const v5, 0x7f060074

    const/4 v4, 0x0

    .line 651
    iget-object v2, p0, LFragments/Rooms$4;->val$edtPassword:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 652
    .local v0, "edtPass":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 653
    iget-object v2, p0, LFragments/Rooms$4;->this$0:LFragments/Rooms;

    iget-object v2, v2, LFragments/Rooms;->context:Landroid/content/Context;

    iget-object v3, p0, LFragments/Rooms$4;->this$0:LFragments/Rooms;

    invoke-virtual {v3}, LFragments/Rooms;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 667
    :goto_0
    return-void

    .line 657
    :cond_0
    const-string v2, "g1234"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 658
    iget-object v2, p0, LFragments/Rooms$4;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 659
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, LFragments/Rooms$4;->this$0:LFragments/Rooms;

    invoke-virtual {v2}, LFragments/Rooms;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/iot/engine/ChangeIPActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 660
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "RoomId"

    sget-object v2, LFragments/Rooms;->roomDatas:Ljava/util/ArrayList;

    iget-object v4, p0, LFragments/Rooms$4;->this$0:LFragments/Rooms;

    iget-object v4, v4, LFragments/Rooms;->adapter:LAdapter/AdapterCustomRooms;

    invoke-virtual {v4}, LAdapter/AdapterCustomRooms;->getPosition()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v4, "RoomId"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 661
    iget-object v2, p0, LFragments/Rooms$4;->this$0:LFragments/Rooms;

    invoke-virtual {v2, v1}, LFragments/Rooms;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 663
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v2, p0, LFragments/Rooms$4;->this$0:LFragments/Rooms;

    iget-object v2, v2, LFragments/Rooms;->context:Landroid/content/Context;

    iget-object v3, p0, LFragments/Rooms$4;->this$0:LFragments/Rooms;

    invoke-virtual {v3}, LFragments/Rooms;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
