.class LAdapter/TryDemoSwitchAdpater$1;
.super Ljava/lang/Object;
.source "TryDemoSwitchAdpater.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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
    .line 164
    iput-object p1, p0, LAdapter/TryDemoSwitchAdpater$1;->this$0:LAdapter/TryDemoSwitchAdpater;

    iput p2, p0, LAdapter/TryDemoSwitchAdpater$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 167
    iget-object v1, p0, LAdapter/TryDemoSwitchAdpater$1;->this$0:LAdapter/TryDemoSwitchAdpater;

    invoke-static {v1}, LAdapter/TryDemoSwitchAdpater;->access$000(LAdapter/TryDemoSwitchAdpater;)Ljava/util/List;

    move-result-object v1

    iget v2, p0, LAdapter/TryDemoSwitchAdpater$1;->val$position:I

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 168
    iget-object v1, p0, LAdapter/TryDemoSwitchAdpater$1;->this$0:LAdapter/TryDemoSwitchAdpater;

    iget-object v1, v1, LAdapter/TryDemoSwitchAdpater;->switchDatas:Ljava/util/ArrayList;

    iget v2, p0, LAdapter/TryDemoSwitchAdpater$1;->val$position:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 169
    .local v0, "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    .line 170
    const-string v1, "SwitchStatus"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    :goto_0
    iget-object v1, p0, LAdapter/TryDemoSwitchAdpater$1;->this$0:LAdapter/TryDemoSwitchAdpater;

    iget-object v1, v1, LAdapter/TryDemoSwitchAdpater;->switchDatas:Ljava/util/ArrayList;

    iget v2, p0, LAdapter/TryDemoSwitchAdpater$1;->val$position:I

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 175
    iget-object v1, p0, LAdapter/TryDemoSwitchAdpater$1;->this$0:LAdapter/TryDemoSwitchAdpater;

    iget-object v1, v1, LAdapter/TryDemoSwitchAdpater;->thisLiving:Lcom/iot/engine/LivingRoom;

    invoke-virtual {v1, v0}, Lcom/iot/engine/LivingRoom;->OnClickOfSwitchChange(Ljava/util/HashMap;)V

    .line 176
    iget-object v2, p0, LAdapter/TryDemoSwitchAdpater$1;->this$0:LAdapter/TryDemoSwitchAdpater;

    iget v3, p0, LAdapter/TryDemoSwitchAdpater$1;->val$position:I

    const-string v1, "SwitchStatus"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v4, p0, LAdapter/TryDemoSwitchAdpater$1;->this$0:LAdapter/TryDemoSwitchAdpater;

    invoke-static {v4}, LAdapter/TryDemoSwitchAdpater;->access$100(LAdapter/TryDemoSwitchAdpater;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v1, v4}, LAdapter/TryDemoSwitchAdpater;->access$200(LAdapter/TryDemoSwitchAdpater;ILjava/lang/String;Ljava/lang/String;)V

    .line 178
    return-void

    .line 172
    :cond_0
    const-string v1, "SwitchStatus"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
