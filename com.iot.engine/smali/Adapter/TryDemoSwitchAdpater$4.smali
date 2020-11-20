.class LAdapter/TryDemoSwitchAdpater$4;
.super Ljava/lang/Object;
.source "TryDemoSwitchAdpater.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LAdapter/TryDemoSwitchAdpater;->onBindViewHolder(LAdapter/TryDemoSwitchAdpater$MyViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LAdapter/TryDemoSwitchAdpater;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(LAdapter/TryDemoSwitchAdpater;I)V
    .locals 0
    .param p1, "this$0"    # LAdapter/TryDemoSwitchAdpater;

    .prologue
    .line 217
    iput-object p1, p0, LAdapter/TryDemoSwitchAdpater$4;->this$0:LAdapter/TryDemoSwitchAdpater;

    iput p2, p0, LAdapter/TryDemoSwitchAdpater$4;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 220
    iget-object v0, p0, LAdapter/TryDemoSwitchAdpater$4;->this$0:LAdapter/TryDemoSwitchAdpater;

    iget-object v1, v0, LAdapter/TryDemoSwitchAdpater;->context:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    iget-object v0, p0, LAdapter/TryDemoSwitchAdpater$4;->this$0:LAdapter/TryDemoSwitchAdpater;

    iget-object v0, v0, LAdapter/TryDemoSwitchAdpater;->context:Landroid/content/Context;

    const-class v3, Lcom/iot/engine/GoColor/GoColorActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "SwitchID"

    iget-object v0, p0, LAdapter/TryDemoSwitchAdpater$4;->this$0:LAdapter/TryDemoSwitchAdpater;

    iget-object v0, v0, LAdapter/TryDemoSwitchAdpater;->switchDatas:Ljava/util/ArrayList;

    iget v4, p0, LAdapter/TryDemoSwitchAdpater$4;->val$position:I

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v4, "switch_image_id"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 221
    return-void
.end method
