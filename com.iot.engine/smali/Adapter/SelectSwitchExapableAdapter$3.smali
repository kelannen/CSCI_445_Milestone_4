.class LAdapter/SelectSwitchExapableAdapter$3;
.super Ljava/lang/Object;
.source "SelectSwitchExapableAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LAdapter/SelectSwitchExapableAdapter;->getGroupView(IZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LAdapter/SelectSwitchExapableAdapter;

.field final synthetic val$groupPosition:I


# direct methods
.method constructor <init>(LAdapter/SelectSwitchExapableAdapter;I)V
    .locals 0
    .param p1, "this$0"    # LAdapter/SelectSwitchExapableAdapter;

    .prologue
    .line 251
    iput-object p1, p0, LAdapter/SelectSwitchExapableAdapter$3;->this$0:LAdapter/SelectSwitchExapableAdapter;

    iput p2, p0, LAdapter/SelectSwitchExapableAdapter$3;->val$groupPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 6
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 254
    iget-object v3, p0, LAdapter/SelectSwitchExapableAdapter$3;->this$0:LAdapter/SelectSwitchExapableAdapter;

    invoke-static {v3}, LAdapter/SelectSwitchExapableAdapter;->access$000(LAdapter/SelectSwitchExapableAdapter;)Ljava/util/HashMap;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, LAdapter/SelectSwitchExapableAdapter$3;->val$groupPosition:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 255
    .local v1, "mList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz p2, :cond_2

    .line 257
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 258
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 259
    .local v2, "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "selected_switch"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 257
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 263
    .end local v2    # "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    iget-object v3, p0, LAdapter/SelectSwitchExapableAdapter$3;->this$0:LAdapter/SelectSwitchExapableAdapter;

    invoke-static {v3}, LAdapter/SelectSwitchExapableAdapter;->access$000(LAdapter/SelectSwitchExapableAdapter;)Ljava/util/HashMap;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, LAdapter/SelectSwitchExapableAdapter$3;->val$groupPosition:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    iget-object v3, p0, LAdapter/SelectSwitchExapableAdapter$3;->this$0:LAdapter/SelectSwitchExapableAdapter;

    invoke-static {v3}, LAdapter/SelectSwitchExapableAdapter;->access$100(LAdapter/SelectSwitchExapableAdapter;)[Ljava/lang/String;

    move-result-object v3

    iget v4, p0, LAdapter/SelectSwitchExapableAdapter$3;->val$groupPosition:I

    const-string v5, "1"

    aput-object v5, v3, v4

    .line 265
    iget-object v3, p0, LAdapter/SelectSwitchExapableAdapter$3;->this$0:LAdapter/SelectSwitchExapableAdapter;

    invoke-virtual {v3}, LAdapter/SelectSwitchExapableAdapter;->notifyDataSetChanged()V

    .line 279
    :goto_1
    iget-object v3, p0, LAdapter/SelectSwitchExapableAdapter$3;->this$0:LAdapter/SelectSwitchExapableAdapter;

    invoke-static {v3}, LAdapter/SelectSwitchExapableAdapter;->access$200(LAdapter/SelectSwitchExapableAdapter;)Landroid/content/Context;

    move-result-object v3

    instance-of v3, v3, Lcom/iot/engine/SelectSwitchExapabaleActivity;

    if-eqz v3, :cond_1

    .line 281
    iget-object v3, p0, LAdapter/SelectSwitchExapableAdapter$3;->this$0:LAdapter/SelectSwitchExapableAdapter;

    invoke-static {v3}, LAdapter/SelectSwitchExapableAdapter;->access$200(LAdapter/SelectSwitchExapableAdapter;)Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/iot/engine/SelectSwitchExapabaleActivity;

    iget-object v4, p0, LAdapter/SelectSwitchExapableAdapter$3;->this$0:LAdapter/SelectSwitchExapableAdapter;

    invoke-static {v4}, LAdapter/SelectSwitchExapableAdapter;->access$100(LAdapter/SelectSwitchExapableAdapter;)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/iot/engine/SelectSwitchExapabaleActivity;->showAllSelectionMark([Ljava/lang/String;)V

    .line 283
    :cond_1
    return-void

    .line 268
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 269
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 270
    .restart local v2    # "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "selected_switch"

    const-string v4, "0"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 268
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 274
    .end local v2    # "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    iget-object v3, p0, LAdapter/SelectSwitchExapableAdapter$3;->this$0:LAdapter/SelectSwitchExapableAdapter;

    invoke-static {v3}, LAdapter/SelectSwitchExapableAdapter;->access$100(LAdapter/SelectSwitchExapableAdapter;)[Ljava/lang/String;

    move-result-object v3

    iget v4, p0, LAdapter/SelectSwitchExapableAdapter$3;->val$groupPosition:I

    const-string v5, "0"

    aput-object v5, v3, v4

    .line 275
    iget-object v3, p0, LAdapter/SelectSwitchExapableAdapter$3;->this$0:LAdapter/SelectSwitchExapableAdapter;

    invoke-static {v3}, LAdapter/SelectSwitchExapableAdapter;->access$000(LAdapter/SelectSwitchExapableAdapter;)Ljava/util/HashMap;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, LAdapter/SelectSwitchExapableAdapter$3;->val$groupPosition:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    iget-object v3, p0, LAdapter/SelectSwitchExapableAdapter$3;->this$0:LAdapter/SelectSwitchExapableAdapter;

    invoke-virtual {v3}, LAdapter/SelectSwitchExapableAdapter;->notifyDataSetChanged()V

    goto :goto_1
.end method
