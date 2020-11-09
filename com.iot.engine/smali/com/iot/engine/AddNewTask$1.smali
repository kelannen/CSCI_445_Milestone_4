.class Lcom/iot/engine/AddNewTask$1;
.super Ljava/lang/Object;
.source "AddNewTask.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iot/engine/AddNewTask;->onClickOfScheduleList(Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iot/engine/AddNewTask;

.field final synthetic val$mMap:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/iot/engine/AddNewTask;Ljava/util/HashMap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iot/engine/AddNewTask;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/iot/engine/AddNewTask$1;->this$0:Lcom/iot/engine/AddNewTask;

    iput-object p2, p0, Lcom/iot/engine/AddNewTask$1;->val$mMap:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 254
    packed-switch p2, :pswitch_data_0

    .line 272
    :goto_0
    return-void

    .line 257
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    iget-object v3, p0, Lcom/iot/engine/AddNewTask$1;->this$0:Lcom/iot/engine/AddNewTask;

    const-class v4, Lcom/iot/engine/Schedular_Activity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 259
    .local v0, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/iot/engine/AddNewTask$1;->this$0:Lcom/iot/engine/AddNewTask;

    invoke-virtual {v3}, Lcom/iot/engine/AddNewTask;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 260
    .local v1, "intent1":Landroid/content/Intent;
    const-string v3, "SwitchInfo"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 261
    .local v2, "maplist":Ljava/util/HashMap;
    const-string v3, "SwitchInfo"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 262
    const-string v3, "Operation"

    const-string v4, "EDIT"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    const-string v3, "EditInfo"

    iget-object v4, p0, Lcom/iot/engine/AddNewTask$1;->val$mMap:Ljava/util/HashMap;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 264
    iget-object v3, p0, Lcom/iot/engine/AddNewTask$1;->this$0:Lcom/iot/engine/AddNewTask;

    invoke-virtual {v3, v0}, Lcom/iot/engine/AddNewTask;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 269
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "intent1":Landroid/content/Intent;
    .end local v2    # "maplist":Ljava/util/HashMap;
    :pswitch_1
    iget-object v3, p0, Lcom/iot/engine/AddNewTask$1;->this$0:Lcom/iot/engine/AddNewTask;

    iget-object v4, p0, Lcom/iot/engine/AddNewTask$1;->val$mMap:Ljava/util/HashMap;

    invoke-static {v3, v4}, Lcom/iot/engine/AddNewTask;->access$300(Lcom/iot/engine/AddNewTask;Ljava/util/HashMap;)V

    goto :goto_0

    .line 254
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
