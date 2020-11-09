.class LAdapter/AdapterCustomRecent$1;
.super Ljava/lang/Object;
.source "AdapterCustomRecent.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LAdapter/AdapterCustomRecent;->onBindViewHolder(LAdapter/AdapterCustomRecent$MyViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LAdapter/AdapterCustomRecent;

.field final synthetic val$holder:LAdapter/AdapterCustomRecent$MyViewHolder;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(LAdapter/AdapterCustomRecent;LAdapter/AdapterCustomRecent$MyViewHolder;I)V
    .locals 0
    .param p1, "this$0"    # LAdapter/AdapterCustomRecent;

    .prologue
    .line 110
    iput-object p1, p0, LAdapter/AdapterCustomRecent$1;->this$0:LAdapter/AdapterCustomRecent;

    iput-object p2, p0, LAdapter/AdapterCustomRecent$1;->val$holder:LAdapter/AdapterCustomRecent$MyViewHolder;

    iput p3, p0, LAdapter/AdapterCustomRecent$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 9
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 114
    iget-object v1, p0, LAdapter/AdapterCustomRecent$1;->val$holder:LAdapter/AdapterCustomRecent$MyViewHolder;

    iget-object v1, v1, LAdapter/AdapterCustomRecent$MyViewHolder;->switchSwitch:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v1}, Landroid/support/v7/widget/SwitchCompat;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 115
    iget-object v1, p0, LAdapter/AdapterCustomRecent$1;->this$0:LAdapter/AdapterCustomRecent;

    iget-object v1, v1, LAdapter/AdapterCustomRecent;->sp:LSession/SessionManager;

    invoke-virtual {v1}, LSession/SessionManager;->getDemoUser()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DemoUser"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, LAdapter/AdapterCustomRecent$1;->this$0:LAdapter/AdapterCustomRecent;

    invoke-static {v1}, LAdapter/AdapterCustomRecent;->access$000(LAdapter/AdapterCustomRecent;)Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, LAdapter/AdapterCustomRecent$1;->val$position:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 119
    .local v0, "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "SwitchStatus"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v1, p0, LAdapter/AdapterCustomRecent$1;->this$0:LAdapter/AdapterCustomRecent;

    invoke-static {v1}, LAdapter/AdapterCustomRecent;->access$000(LAdapter/AdapterCustomRecent;)Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, LAdapter/AdapterCustomRecent$1;->val$position:I

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 121
    iget-object v1, p0, LAdapter/AdapterCustomRecent$1;->this$0:LAdapter/AdapterCustomRecent;

    iget-object v3, v1, LAdapter/AdapterCustomRecent;->db:LDatabase/DatabaseHandler;

    const-string v1, "SwitchID"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v4, "1"

    iget-object v2, p0, LAdapter/AdapterCustomRecent$1;->this$0:LAdapter/AdapterCustomRecent;

    invoke-static {v2}, LAdapter/AdapterCustomRecent;->access$000(LAdapter/AdapterCustomRecent;)Ljava/util/ArrayList;

    move-result-object v2

    iget v5, p0, LAdapter/AdapterCustomRecent$1;->val$position:I

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v5, "DimmerValue"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v1, v4, v2}, LDatabase/DatabaseHandler;->updateSwitchStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v1, p0, LAdapter/AdapterCustomRecent$1;->this$0:LAdapter/AdapterCustomRecent;

    iget-object v3, v1, LAdapter/AdapterCustomRecent;->db:LDatabase/DatabaseHandler;

    const-string v1, "SwitchID"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v4, "1"

    iget-object v2, p0, LAdapter/AdapterCustomRecent$1;->this$0:LAdapter/AdapterCustomRecent;

    invoke-static {v2}, LAdapter/AdapterCustomRecent;->access$000(LAdapter/AdapterCustomRecent;)Ljava/util/ArrayList;

    move-result-object v2

    iget v5, p0, LAdapter/AdapterCustomRecent$1;->val$position:I

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v5, "DimmerValue"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v1, v4, v2}, LDatabase/DatabaseHandler;->updateRecentSwitchStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v1, p0, LAdapter/AdapterCustomRecent$1;->this$0:LAdapter/AdapterCustomRecent;

    invoke-static {v1}, LAdapter/AdapterCustomRecent;->access$000(LAdapter/AdapterCustomRecent;)Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, LAdapter/AdapterCustomRecent$1;->val$position:I

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v1, p0, LAdapter/AdapterCustomRecent$1;->this$0:LAdapter/AdapterCustomRecent;

    iget-object v1, v1, LAdapter/AdapterCustomRecent;->thisInstance:LFragments/Recent;

    invoke-virtual {v1, v0}, LFragments/Recent;->OnClickOfSwitchChange(Ljava/util/HashMap;)V

    .line 158
    .end local v0    # "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 128
    :cond_0
    iget-object v1, p0, LAdapter/AdapterCustomRecent$1;->val$holder:LAdapter/AdapterCustomRecent$MyViewHolder;

    iget-object v2, v1, LAdapter/AdapterCustomRecent$MyViewHolder;->img:Landroid/widget/ImageView;

    iget-object v1, p0, LAdapter/AdapterCustomRecent$1;->this$0:LAdapter/AdapterCustomRecent;

    iget-object v3, v1, LAdapter/AdapterCustomRecent;->switchONOFFImage:Ljava/util/ArrayList;

    iget-object v1, p0, LAdapter/AdapterCustomRecent$1;->this$0:LAdapter/AdapterCustomRecent;

    invoke-static {v1}, LAdapter/AdapterCustomRecent;->access$000(LAdapter/AdapterCustomRecent;)Ljava/util/ArrayList;

    move-result-object v1

    iget v4, p0, LAdapter/AdapterCustomRecent$1;->val$position:I

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v4, "switch_image_id"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v3, "ON"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 130
    new-instance v1, LAdapter/AdapterCustomRecent$SwitchOnOffAsyncTask;

    iget-object v2, p0, LAdapter/AdapterCustomRecent$1;->this$0:LAdapter/AdapterCustomRecent;

    invoke-direct {v1, v2}, LAdapter/AdapterCustomRecent$SwitchOnOffAsyncTask;-><init>(LAdapter/AdapterCustomRecent;)V

    new-array v2, v8, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, LAdapter/AdapterCustomRecent$1;->val$position:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const-string v3, "0"

    aput-object v3, v2, v6

    const-string v3, "1"

    aput-object v3, v2, v7

    invoke-virtual {v1, v2}, LAdapter/AdapterCustomRecent$SwitchOnOffAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 131
    sget v1, LAdapter/AdapterCustomRecent;->onSwitchCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, LAdapter/AdapterCustomRecent;->onSwitchCount:I

    goto :goto_0

    .line 136
    :cond_1
    iget-object v1, p0, LAdapter/AdapterCustomRecent$1;->this$0:LAdapter/AdapterCustomRecent;

    iget-object v1, v1, LAdapter/AdapterCustomRecent;->sp:LSession/SessionManager;

    invoke-virtual {v1}, LSession/SessionManager;->getDemoUser()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DemoUser"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 140
    iget-object v1, p0, LAdapter/AdapterCustomRecent$1;->this$0:LAdapter/AdapterCustomRecent;

    invoke-static {v1}, LAdapter/AdapterCustomRecent;->access$000(LAdapter/AdapterCustomRecent;)Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, LAdapter/AdapterCustomRecent$1;->val$position:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 141
    .restart local v0    # "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "SwitchStatus"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string v1, "Switch Info"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v1, p0, LAdapter/AdapterCustomRecent$1;->this$0:LAdapter/AdapterCustomRecent;

    iget-object v3, v1, LAdapter/AdapterCustomRecent;->db:LDatabase/DatabaseHandler;

    const-string v1, "SwitchID"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v4, "0"

    iget-object v2, p0, LAdapter/AdapterCustomRecent$1;->this$0:LAdapter/AdapterCustomRecent;

    invoke-static {v2}, LAdapter/AdapterCustomRecent;->access$000(LAdapter/AdapterCustomRecent;)Ljava/util/ArrayList;

    move-result-object v2

    iget v5, p0, LAdapter/AdapterCustomRecent$1;->val$position:I

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v5, "DimmerValue"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v1, v4, v2}, LDatabase/DatabaseHandler;->updateSwitchStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v1, p0, LAdapter/AdapterCustomRecent$1;->this$0:LAdapter/AdapterCustomRecent;

    iget-object v3, v1, LAdapter/AdapterCustomRecent;->db:LDatabase/DatabaseHandler;

    const-string v1, "SwitchID"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v4, "0"

    iget-object v2, p0, LAdapter/AdapterCustomRecent$1;->this$0:LAdapter/AdapterCustomRecent;

    invoke-static {v2}, LAdapter/AdapterCustomRecent;->access$000(LAdapter/AdapterCustomRecent;)Ljava/util/ArrayList;

    move-result-object v2

    iget v5, p0, LAdapter/AdapterCustomRecent$1;->val$position:I

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v5, "DimmerValue"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v1, v4, v2}, LDatabase/DatabaseHandler;->updateRecentSwitchStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v1, p0, LAdapter/AdapterCustomRecent$1;->this$0:LAdapter/AdapterCustomRecent;

    invoke-static {v1}, LAdapter/AdapterCustomRecent;->access$000(LAdapter/AdapterCustomRecent;)Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, LAdapter/AdapterCustomRecent$1;->val$position:I

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v1, p0, LAdapter/AdapterCustomRecent$1;->this$0:LAdapter/AdapterCustomRecent;

    iget-object v1, v1, LAdapter/AdapterCustomRecent;->thisInstance:LFragments/Recent;

    invoke-virtual {v1, v0}, LFragments/Recent;->OnClickOfSwitchChange(Ljava/util/HashMap;)V

    .line 147
    iget-object v1, p0, LAdapter/AdapterCustomRecent$1;->this$0:LAdapter/AdapterCustomRecent;

    iget v2, p0, LAdapter/AdapterCustomRecent$1;->val$position:I

    invoke-virtual {v1, v2}, LAdapter/AdapterCustomRecent;->notifyItemChanged(I)V

    goto/16 :goto_0

    .line 150
    .end local v0    # "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    sget v1, LAdapter/AdapterCustomRecent;->onSwitchCount:I

    add-int/lit8 v1, v1, -0x1

    sput v1, LAdapter/AdapterCustomRecent;->onSwitchCount:I

    .line 151
    iget-object v1, p0, LAdapter/AdapterCustomRecent$1;->val$holder:LAdapter/AdapterCustomRecent$MyViewHolder;

    iget-object v2, v1, LAdapter/AdapterCustomRecent$MyViewHolder;->img:Landroid/widget/ImageView;

    iget-object v1, p0, LAdapter/AdapterCustomRecent$1;->this$0:LAdapter/AdapterCustomRecent;

    iget-object v3, v1, LAdapter/AdapterCustomRecent;->switchONOFFImage:Ljava/util/ArrayList;

    iget-object v1, p0, LAdapter/AdapterCustomRecent$1;->this$0:LAdapter/AdapterCustomRecent;

    invoke-static {v1}, LAdapter/AdapterCustomRecent;->access$000(LAdapter/AdapterCustomRecent;)Ljava/util/ArrayList;

    move-result-object v1

    iget v4, p0, LAdapter/AdapterCustomRecent$1;->val$position:I

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v4, "switch_image_id"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v3, "OFF"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 153
    new-instance v1, LAdapter/AdapterCustomRecent$SwitchOnOffAsyncTask;

    iget-object v2, p0, LAdapter/AdapterCustomRecent$1;->this$0:LAdapter/AdapterCustomRecent;

    invoke-direct {v1, v2}, LAdapter/AdapterCustomRecent$SwitchOnOffAsyncTask;-><init>(LAdapter/AdapterCustomRecent;)V

    new-array v2, v8, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, LAdapter/AdapterCustomRecent$1;->val$position:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const-string v3, "0"

    aput-object v3, v2, v6

    const-string v3, "0"

    aput-object v3, v2, v7

    invoke-virtual {v1, v2}, LAdapter/AdapterCustomRecent$SwitchOnOffAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0
.end method
