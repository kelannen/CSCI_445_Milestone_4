.class LAdapter/AdapterCustomSwitch$7;
.super Ljava/lang/Object;
.source "AdapterCustomSwitch.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LAdapter/AdapterCustomSwitch;->onBindViewHolder(LAdapter/AdapterCustomSwitch$MyViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LAdapter/AdapterCustomSwitch;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(LAdapter/AdapterCustomSwitch;I)V
    .locals 0
    .param p1, "this$0"    # LAdapter/AdapterCustomSwitch;

    .prologue
    .line 332
    iput-object p1, p0, LAdapter/AdapterCustomSwitch$7;->this$0:LAdapter/AdapterCustomSwitch;

    iput p2, p0, LAdapter/AdapterCustomSwitch$7;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 335
    iget-object v1, p0, LAdapter/AdapterCustomSwitch$7;->this$0:LAdapter/AdapterCustomSwitch;

    iget-object v1, v1, LAdapter/AdapterCustomSwitch;->switchDatas:Ljava/util/ArrayList;

    iget v2, p0, LAdapter/AdapterCustomSwitch$7;->val$position:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "DimmerStatus"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 336
    iget-object v1, p0, LAdapter/AdapterCustomSwitch$7;->this$0:LAdapter/AdapterCustomSwitch;

    iget-object v1, v1, LAdapter/AdapterCustomSwitch;->session:LSession/SessionManager;

    invoke-virtual {v1}, LSession/SessionManager;->getLockCode()Ljava/lang/String;

    move-result-object v0

    .line 337
    .local v0, "mdata":Ljava/lang/String;
    iget-object v1, p0, LAdapter/AdapterCustomSwitch$7;->this$0:LAdapter/AdapterCustomSwitch;

    iget-object v1, v1, LAdapter/AdapterCustomSwitch;->session:LSession/SessionManager;

    invoke-virtual {v1}, LSession/SessionManager;->getLockCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 338
    :cond_0
    iget-object v1, p0, LAdapter/AdapterCustomSwitch$7;->this$0:LAdapter/AdapterCustomSwitch;

    invoke-static {v1}, LAdapter/AdapterCustomSwitch;->access$400(LAdapter/AdapterCustomSwitch;)V

    .line 346
    .end local v0    # "mdata":Ljava/lang/String;
    :goto_0
    return-void

    .line 340
    .restart local v0    # "mdata":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, LAdapter/AdapterCustomSwitch$7;->this$0:LAdapter/AdapterCustomSwitch;

    iget-object v2, v1, LAdapter/AdapterCustomSwitch;->context:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    iget-object v1, p0, LAdapter/AdapterCustomSwitch$7;->this$0:LAdapter/AdapterCustomSwitch;

    iget-object v1, v1, LAdapter/AdapterCustomSwitch;->context:Landroid/content/Context;

    const-class v4, Lcom/iot/engine/SetPasscode;

    invoke-direct {v3, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "SwitchID"

    iget-object v1, p0, LAdapter/AdapterCustomSwitch$7;->this$0:LAdapter/AdapterCustomSwitch;

    iget-object v1, v1, LAdapter/AdapterCustomSwitch;->switchDatas:Ljava/util/ArrayList;

    iget v5, p0, LAdapter/AdapterCustomSwitch$7;->val$position:I

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v5, "SwitchID"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 343
    .end local v0    # "mdata":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, LAdapter/AdapterCustomSwitch$7;->this$0:LAdapter/AdapterCustomSwitch;

    iget-object v2, v1, LAdapter/AdapterCustomSwitch;->context:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    iget-object v1, p0, LAdapter/AdapterCustomSwitch$7;->this$0:LAdapter/AdapterCustomSwitch;

    iget-object v1, v1, LAdapter/AdapterCustomSwitch;->context:Landroid/content/Context;

    const-class v4, Lcom/iot/engine/GoColor/GoColorActivity;

    invoke-direct {v3, v1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "SwitchID"

    iget-object v1, p0, LAdapter/AdapterCustomSwitch$7;->this$0:LAdapter/AdapterCustomSwitch;

    iget-object v1, v1, LAdapter/AdapterCustomSwitch;->switchDatas:Ljava/util/ArrayList;

    iget v5, p0, LAdapter/AdapterCustomSwitch$7;->val$position:I

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v5, "SwitchID"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
