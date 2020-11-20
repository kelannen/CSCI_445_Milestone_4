.class Lcom/iot/engine/GoVideoPlayer/CameraListActivity$1;
.super Ljava/lang/Object;
.source "CameraListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iot/engine/GoVideoPlayer/CameraListActivity;->OnLongClickListener(Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iot/engine/GoVideoPlayer/CameraListActivity;

.field final synthetic val$map:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/iot/engine/GoVideoPlayer/CameraListActivity;Ljava/util/HashMap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iot/engine/GoVideoPlayer/CameraListActivity;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/iot/engine/GoVideoPlayer/CameraListActivity$1;->this$0:Lcom/iot/engine/GoVideoPlayer/CameraListActivity;

    iput-object p2, p0, Lcom/iot/engine/GoVideoPlayer/CameraListActivity$1;->val$map:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x0

    .line 142
    packed-switch p2, :pswitch_data_0

    .line 170
    :goto_0
    return-void

    .line 144
    :pswitch_0
    sget-object v0, LSession/Constants;->URL_GO:Ljava/lang/String;

    sget-object v1, LSession/Constants;->URL_GO_AWS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/iot/engine/GoVideoPlayer/CameraListActivity$1;->this$0:Lcom/iot/engine/GoVideoPlayer/CameraListActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/iot/engine/GoVideoPlayer/CameraListActivity$1;->this$0:Lcom/iot/engine/GoVideoPlayer/CameraListActivity;

    const-class v3, Lcom/iot/engine/GoVideoPlayer/AddCameraActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "EDIT"

    iget-object v3, p0, Lcom/iot/engine/GoVideoPlayer/CameraListActivity$1;->val$map:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iot/engine/GoVideoPlayer/CameraListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/iot/engine/GoVideoPlayer/CameraListActivity$1;->this$0:Lcom/iot/engine/GoVideoPlayer/CameraListActivity;

    const-string v1, "You don\'t have authority to edit camera over internet"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 152
    :pswitch_1
    sget-object v0, LSession/Constants;->URL_GO:Ljava/lang/String;

    sget-object v1, LSession/Constants;->URL_GO_AWS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/iot/engine/GoVideoPlayer/CameraListActivity$1;->this$0:Lcom/iot/engine/GoVideoPlayer/CameraListActivity;

    iget-object v1, p0, Lcom/iot/engine/GoVideoPlayer/CameraListActivity$1;->val$map:Ljava/util/HashMap;

    invoke-static {v0, v1}, Lcom/iot/engine/GoVideoPlayer/CameraListActivity;->access$100(Lcom/iot/engine/GoVideoPlayer/CameraListActivity;Ljava/util/HashMap;)V

    goto :goto_0

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/iot/engine/GoVideoPlayer/CameraListActivity$1;->this$0:Lcom/iot/engine/GoVideoPlayer/CameraListActivity;

    const-string v1, "You don\'t have authority to delete camera over internet"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 161
    :pswitch_2
    iget-object v0, p0, Lcom/iot/engine/GoVideoPlayer/CameraListActivity$1;->this$0:Lcom/iot/engine/GoVideoPlayer/CameraListActivity;

    invoke-static {v0}, Lcom/iot/engine/GoVideoPlayer/CameraListActivity;->access$200(Lcom/iot/engine/GoVideoPlayer/CameraListActivity;)LSession/SessionManager;

    move-result-object v0

    invoke-virtual {v0}, LSession/SessionManager;->getLockSwitchId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 162
    iget-object v0, p0, Lcom/iot/engine/GoVideoPlayer/CameraListActivity$1;->this$0:Lcom/iot/engine/GoVideoPlayer/CameraListActivity;

    iget-object v1, p0, Lcom/iot/engine/GoVideoPlayer/CameraListActivity$1;->val$map:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/iot/engine/GoVideoPlayer/CameraListActivity$1;->this$0:Lcom/iot/engine/GoVideoPlayer/CameraListActivity;

    invoke-static {v2}, Lcom/iot/engine/GoVideoPlayer/CameraListActivity;->access$300(Lcom/iot/engine/GoVideoPlayer/CameraListActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/iot/engine/GoVideoPlayer/CameraListActivity;->access$400(Lcom/iot/engine/GoVideoPlayer/CameraListActivity;Ljava/util/HashMap;Ljava/lang/String;)V

    goto :goto_0

    .line 166
    :cond_2
    iget-object v0, p0, Lcom/iot/engine/GoVideoPlayer/CameraListActivity$1;->this$0:Lcom/iot/engine/GoVideoPlayer/CameraListActivity;

    const-string v1, "You don\'t have any main Lock to add as shortcut"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 142
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
