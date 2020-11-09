.class LAdapter/SelectSwitchExapableAdapter$1;
.super Ljava/lang/Object;
.source "SelectSwitchExapableAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LAdapter/SelectSwitchExapableAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LAdapter/SelectSwitchExapableAdapter;

.field final synthetic val$childPosition:I

.field final synthetic val$childText:Ljava/util/HashMap;

.field final synthetic val$groupPosition:I

.field final synthetic val$layoutDimmer:Landroid/widget/LinearLayout;

.field final synthetic val$seekDimmer:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;


# direct methods
.method constructor <init>(LAdapter/SelectSwitchExapableAdapter;ILjava/util/HashMap;Landroid/widget/LinearLayout;Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;I)V
    .locals 0
    .param p1, "this$0"    # LAdapter/SelectSwitchExapableAdapter;

    .prologue
    .line 116
    iput-object p1, p0, LAdapter/SelectSwitchExapableAdapter$1;->this$0:LAdapter/SelectSwitchExapableAdapter;

    iput p2, p0, LAdapter/SelectSwitchExapableAdapter$1;->val$groupPosition:I

    iput-object p3, p0, LAdapter/SelectSwitchExapableAdapter$1;->val$childText:Ljava/util/HashMap;

    iput-object p4, p0, LAdapter/SelectSwitchExapableAdapter$1;->val$layoutDimmer:Landroid/widget/LinearLayout;

    iput-object p5, p0, LAdapter/SelectSwitchExapableAdapter$1;->val$seekDimmer:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    iput p6, p0, LAdapter/SelectSwitchExapableAdapter$1;->val$childPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/16 v6, 0x8

    .line 120
    iget-object v3, p0, LAdapter/SelectSwitchExapableAdapter$1;->this$0:LAdapter/SelectSwitchExapableAdapter;

    invoke-static {v3}, LAdapter/SelectSwitchExapableAdapter;->access$000(LAdapter/SelectSwitchExapableAdapter;)Ljava/util/HashMap;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, LAdapter/SelectSwitchExapableAdapter$1;->val$groupPosition:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 123
    .local v2, "mList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    if-eqz p2, :cond_5

    .line 125
    iget-object v3, p0, LAdapter/SelectSwitchExapableAdapter$1;->val$childText:Ljava/util/HashMap;

    const-string v4, "DimmerStatus"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 126
    iget-object v3, p0, LAdapter/SelectSwitchExapableAdapter$1;->this$0:LAdapter/SelectSwitchExapableAdapter;

    iget-object v3, v3, LAdapter/SelectSwitchExapableAdapter;->mONOFFStatus:Ljava/lang/String;

    const-string v4, "ON"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 127
    iget-object v3, p0, LAdapter/SelectSwitchExapableAdapter$1;->val$layoutDimmer:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 128
    iget-object v3, p0, LAdapter/SelectSwitchExapableAdapter$1;->val$childText:Ljava/util/HashMap;

    const-string v4, "DimmerValue"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x64

    div-int/lit8 v0, v3, 0x4b

    .line 129
    .local v0, "curval":I
    iget-object v3, p0, LAdapter/SelectSwitchExapableAdapter$1;->val$seekDimmer:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    invoke-virtual {v3, v0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setProgress(I)V

    .line 138
    .end local v0    # "curval":I
    :goto_0
    iget-object v3, p0, LAdapter/SelectSwitchExapableAdapter$1;->val$childText:Ljava/util/HashMap;

    const-string v4, "selected_switch"

    const-string v5, "1"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget v3, p0, LAdapter/SelectSwitchExapableAdapter$1;->val$childPosition:I

    iget-object v4, p0, LAdapter/SelectSwitchExapableAdapter$1;->val$childText:Ljava/util/HashMap;

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v3, p0, LAdapter/SelectSwitchExapableAdapter$1;->this$0:LAdapter/SelectSwitchExapableAdapter;

    invoke-static {v3}, LAdapter/SelectSwitchExapableAdapter;->access$100(LAdapter/SelectSwitchExapableAdapter;)[Ljava/lang/String;

    move-result-object v3

    iget v4, p0, LAdapter/SelectSwitchExapableAdapter$1;->val$groupPosition:I

    const-string v5, "1"

    aput-object v5, v3, v4

    .line 141
    const/4 v1, 0x0

    .local v1, "m":I
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 142
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v4, "selected_switch"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 143
    iget-object v3, p0, LAdapter/SelectSwitchExapableAdapter$1;->this$0:LAdapter/SelectSwitchExapableAdapter;

    invoke-static {v3}, LAdapter/SelectSwitchExapableAdapter;->access$100(LAdapter/SelectSwitchExapableAdapter;)[Ljava/lang/String;

    move-result-object v3

    iget v4, p0, LAdapter/SelectSwitchExapableAdapter$1;->val$groupPosition:I

    const-string v5, "0"

    aput-object v5, v3, v4

    .line 155
    .end local v1    # "m":I
    :cond_0
    :goto_2
    iget-object v3, p0, LAdapter/SelectSwitchExapableAdapter$1;->this$0:LAdapter/SelectSwitchExapableAdapter;

    invoke-static {v3}, LAdapter/SelectSwitchExapableAdapter;->access$000(LAdapter/SelectSwitchExapableAdapter;)Ljava/util/HashMap;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, LAdapter/SelectSwitchExapableAdapter$1;->val$groupPosition:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object v3, p0, LAdapter/SelectSwitchExapableAdapter$1;->this$0:LAdapter/SelectSwitchExapableAdapter;

    invoke-static {v3}, LAdapter/SelectSwitchExapableAdapter;->access$200(LAdapter/SelectSwitchExapableAdapter;)Landroid/content/Context;

    move-result-object v3

    instance-of v3, v3, Lcom/iot/engine/SelectSwitchExapabaleActivity;

    if-eqz v3, :cond_1

    .line 159
    iget-object v3, p0, LAdapter/SelectSwitchExapableAdapter$1;->this$0:LAdapter/SelectSwitchExapableAdapter;

    invoke-static {v3}, LAdapter/SelectSwitchExapableAdapter;->access$200(LAdapter/SelectSwitchExapableAdapter;)Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lcom/iot/engine/SelectSwitchExapabaleActivity;

    iget-object v4, p0, LAdapter/SelectSwitchExapableAdapter$1;->this$0:LAdapter/SelectSwitchExapableAdapter;

    invoke-static {v4}, LAdapter/SelectSwitchExapableAdapter;->access$100(LAdapter/SelectSwitchExapableAdapter;)[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/iot/engine/SelectSwitchExapabaleActivity;->showAllSelectionMark([Ljava/lang/String;)V

    .line 162
    :cond_1
    iget-object v3, p0, LAdapter/SelectSwitchExapableAdapter$1;->this$0:LAdapter/SelectSwitchExapableAdapter;

    invoke-virtual {v3}, LAdapter/SelectSwitchExapableAdapter;->notifyDataSetChanged()V

    .line 164
    return-void

    .line 131
    :cond_2
    iget-object v3, p0, LAdapter/SelectSwitchExapableAdapter$1;->val$layoutDimmer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 134
    :cond_3
    iget-object v3, p0, LAdapter/SelectSwitchExapableAdapter$1;->val$layoutDimmer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 141
    .restart local v1    # "m":I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 149
    .end local v1    # "m":I
    :cond_5
    iget-object v3, p0, LAdapter/SelectSwitchExapableAdapter$1;->val$layoutDimmer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 150
    iget-object v3, p0, LAdapter/SelectSwitchExapableAdapter$1;->val$childText:Ljava/util/HashMap;

    const-string v4, "selected_switch"

    const-string v5, "0"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget v3, p0, LAdapter/SelectSwitchExapableAdapter$1;->val$childPosition:I

    iget-object v4, p0, LAdapter/SelectSwitchExapableAdapter$1;->val$childText:Ljava/util/HashMap;

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v3, p0, LAdapter/SelectSwitchExapableAdapter$1;->this$0:LAdapter/SelectSwitchExapableAdapter;

    invoke-static {v3}, LAdapter/SelectSwitchExapableAdapter;->access$100(LAdapter/SelectSwitchExapableAdapter;)[Ljava/lang/String;

    move-result-object v3

    iget v4, p0, LAdapter/SelectSwitchExapableAdapter$1;->val$groupPosition:I

    const-string v5, "0"

    aput-object v5, v3, v4

    goto :goto_2
.end method
