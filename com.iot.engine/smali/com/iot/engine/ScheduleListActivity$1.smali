.class Lcom/iot/engine/ScheduleListActivity$1;
.super Ljava/lang/Object;
.source "ScheduleListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iot/engine/ScheduleListActivity;->onClickOfScheduleList(Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iot/engine/ScheduleListActivity;

.field final synthetic val$mMap:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/iot/engine/ScheduleListActivity;Ljava/util/HashMap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iot/engine/ScheduleListActivity;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/iot/engine/ScheduleListActivity$1;->this$0:Lcom/iot/engine/ScheduleListActivity;

    iput-object p2, p0, Lcom/iot/engine/ScheduleListActivity$1;->val$mMap:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 195
    packed-switch p2, :pswitch_data_0

    .line 210
    :goto_0
    return-void

    .line 198
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/iot/engine/ScheduleListActivity$1;->this$0:Lcom/iot/engine/ScheduleListActivity;

    const-class v3, Lcom/iot/engine/Schedular_Activity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 199
    .local v1, "intent":Landroid/content/Intent;
    new-instance v0, LDatabase/DatabaseHandler;

    iget-object v2, p0, Lcom/iot/engine/ScheduleListActivity$1;->this$0:Lcom/iot/engine/ScheduleListActivity;

    invoke-direct {v0, v2}, LDatabase/DatabaseHandler;-><init>(Landroid/content/Context;)V

    .line 200
    .local v0, "db":LDatabase/DatabaseHandler;
    const-string v3, "SwitchInfo"

    iget-object v2, p0, Lcom/iot/engine/ScheduleListActivity$1;->val$mMap:Ljava/util/HashMap;

    const-string v4, "SwitchID"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, LDatabase/DatabaseHandler;->getSwitchInfoBySwitchId(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 201
    const-string v2, "Operation"

    const-string v3, "EDIT"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    const-string v2, "EditInfo"

    iget-object v3, p0, Lcom/iot/engine/ScheduleListActivity$1;->val$mMap:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 203
    iget-object v2, p0, Lcom/iot/engine/ScheduleListActivity$1;->this$0:Lcom/iot/engine/ScheduleListActivity;

    invoke-virtual {v2, v1}, Lcom/iot/engine/ScheduleListActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 207
    .end local v0    # "db":LDatabase/DatabaseHandler;
    .end local v1    # "intent":Landroid/content/Intent;
    :pswitch_1
    iget-object v2, p0, Lcom/iot/engine/ScheduleListActivity$1;->this$0:Lcom/iot/engine/ScheduleListActivity;

    iget-object v3, p0, Lcom/iot/engine/ScheduleListActivity$1;->val$mMap:Ljava/util/HashMap;

    invoke-static {v2, v3}, Lcom/iot/engine/ScheduleListActivity;->access$400(Lcom/iot/engine/ScheduleListActivity;Ljava/util/HashMap;)V

    goto :goto_0

    .line 195
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
