.class LAdapter/AdapterCustomSwitch$1;
.super Ljava/lang/Object;
.source "AdapterCustomSwitch.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

.field final synthetic val$holder:LAdapter/AdapterCustomSwitch$MyViewHolder;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(LAdapter/AdapterCustomSwitch;ILAdapter/AdapterCustomSwitch$MyViewHolder;)V
    .locals 0
    .param p1, "this$0"    # LAdapter/AdapterCustomSwitch;

    .prologue
    .line 183
    iput-object p1, p0, LAdapter/AdapterCustomSwitch$1;->this$0:LAdapter/AdapterCustomSwitch;

    iput p2, p0, LAdapter/AdapterCustomSwitch$1;->val$position:I

    iput-object p3, p0, LAdapter/AdapterCustomSwitch$1;->val$holder:LAdapter/AdapterCustomSwitch$MyViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 12
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 187
    iget-object v3, p0, LAdapter/AdapterCustomSwitch$1;->this$0:LAdapter/AdapterCustomSwitch;

    invoke-static {v3}, LAdapter/AdapterCustomSwitch;->access$000(LAdapter/AdapterCustomSwitch;)Ljava/util/List;

    move-result-object v3

    iget v4, p0, LAdapter/AdapterCustomSwitch$1;->val$position:I

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 189
    iget-object v3, p0, LAdapter/AdapterCustomSwitch$1;->this$0:LAdapter/AdapterCustomSwitch;

    iget-object v3, v3, LAdapter/AdapterCustomSwitch;->switchDatas:Ljava/util/ArrayList;

    iget v4, p0, LAdapter/AdapterCustomSwitch$1;->val$position:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 190
    .local v1, "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_1

    .line 191
    const-string v3, "SwitchStatus"

    const-string v4, "1"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    iget-object v3, p0, LAdapter/AdapterCustomSwitch$1;->val$holder:LAdapter/AdapterCustomSwitch$MyViewHolder;

    iget-object v4, v3, LAdapter/AdapterCustomSwitch$MyViewHolder;->imgSwitchImage:Landroid/widget/ImageView;

    iget-object v3, p0, LAdapter/AdapterCustomSwitch$1;->this$0:LAdapter/AdapterCustomSwitch;

    invoke-static {v3}, LAdapter/AdapterCustomSwitch;->access$100(LAdapter/AdapterCustomSwitch;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v3, p0, LAdapter/AdapterCustomSwitch$1;->this$0:LAdapter/AdapterCustomSwitch;

    iget-object v3, v3, LAdapter/AdapterCustomSwitch;->switchDatas:Ljava/util/ArrayList;

    iget v6, p0, LAdapter/AdapterCustomSwitch$1;->val$position:I

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v6, "switch_image_id"

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v5, "ON"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 198
    :goto_0
    iget-object v3, p0, LAdapter/AdapterCustomSwitch$1;->this$0:LAdapter/AdapterCustomSwitch;

    iget-object v3, v3, LAdapter/AdapterCustomSwitch;->switchDatas:Ljava/util/ArrayList;

    iget v4, p0, LAdapter/AdapterCustomSwitch$1;->val$position:I

    invoke-virtual {v3, v4, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 200
    const-string v4, "setOnClick()"

    iget-object v3, p0, LAdapter/AdapterCustomSwitch$1;->this$0:LAdapter/AdapterCustomSwitch;

    iget-object v3, v3, LAdapter/AdapterCustomSwitch;->switchDatas:Ljava/util/ArrayList;

    iget v5, p0, LAdapter/AdapterCustomSwitch$1;->val$position:I

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v5, "SwitchStatus"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v3, p0, LAdapter/AdapterCustomSwitch$1;->this$0:LAdapter/AdapterCustomSwitch;

    iget-object v3, v3, LAdapter/AdapterCustomSwitch;->context:Landroid/content/Context;

    invoke-static {v3}, LSession/Constants;->isInternetAvailable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 203
    iget-object v3, p0, LAdapter/AdapterCustomSwitch$1;->this$0:LAdapter/AdapterCustomSwitch;

    iget-object v3, v3, LAdapter/AdapterCustomSwitch;->switchDatas:Ljava/util/ArrayList;

    iget v4, p0, LAdapter/AdapterCustomSwitch$1;->val$position:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v4, "DimmerValue"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 204
    .local v0, "mDimmerValue":Ljava/lang/String;
    iget-object v3, p0, LAdapter/AdapterCustomSwitch$1;->val$holder:LAdapter/AdapterCustomSwitch$MyViewHolder;

    iget-object v2, v3, LAdapter/AdapterCustomSwitch$MyViewHolder;->btnSwitchButton:Landroid/support/v7/widget/SwitchCompat;

    .line 206
    .local v2, "view":Landroid/view/View;
    const-string v3, "DimmerStatus"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 208
    const-string v3, "SwitchStatus"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 209
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-gtz v3, :cond_0

    .line 210
    const-string v0, "38"

    .line 211
    iget-object v3, p0, LAdapter/AdapterCustomSwitch$1;->val$holder:LAdapter/AdapterCustomSwitch$MyViewHolder;

    iget-object v3, v3, LAdapter/AdapterCustomSwitch$MyViewHolder;->seekDimmer:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    const/16 v4, 0x32

    invoke-virtual {v3, v4}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setProgress(I)V

    .line 215
    :cond_0
    const-string v3, "DimmerStatus"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "5"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 216
    const-string v3, "SwitchStatus"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 217
    new-instance v4, LAdapter/AdapterCustomSwitch$ChangeGoColorStatusTask;

    iget-object v3, p0, LAdapter/AdapterCustomSwitch$1;->this$0:LAdapter/AdapterCustomSwitch;

    invoke-direct {v4, v3, v11}, LAdapter/AdapterCustomSwitch$ChangeGoColorStatusTask;-><init>(LAdapter/AdapterCustomSwitch;LAdapter/AdapterCustomSwitch$1;)V

    new-array v5, v10, [Ljava/lang/String;

    iget-object v3, p0, LAdapter/AdapterCustomSwitch$1;->this$0:LAdapter/AdapterCustomSwitch;

    iget-object v3, v3, LAdapter/AdapterCustomSwitch;->switchDatas:Ljava/util/ArrayList;

    iget v6, p0, LAdapter/AdapterCustomSwitch$1;->val$position:I

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v6, "SwitchID"

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v5, v7

    const-string v3, "1"

    aput-object v3, v5, v8

    iget-object v3, p0, LAdapter/AdapterCustomSwitch$1;->this$0:LAdapter/AdapterCustomSwitch;

    iget-object v6, v3, LAdapter/AdapterCustomSwitch;->session:LSession/SessionManager;

    const-string v3, "SwitchID"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, LSession/SessionManager;->getGoColor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v9

    invoke-virtual {v4, v5}, LAdapter/AdapterCustomSwitch$ChangeGoColorStatusTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 228
    .end local v0    # "mDimmerValue":Ljava/lang/String;
    .end local v2    # "view":Landroid/view/View;
    :goto_1
    return-void

    .line 194
    :cond_1
    const-string v3, "SwitchStatus"

    const-string v4, "0"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    iget-object v3, p0, LAdapter/AdapterCustomSwitch$1;->val$holder:LAdapter/AdapterCustomSwitch$MyViewHolder;

    iget-object v4, v3, LAdapter/AdapterCustomSwitch$MyViewHolder;->imgSwitchImage:Landroid/widget/ImageView;

    iget-object v3, p0, LAdapter/AdapterCustomSwitch$1;->this$0:LAdapter/AdapterCustomSwitch;

    invoke-static {v3}, LAdapter/AdapterCustomSwitch;->access$100(LAdapter/AdapterCustomSwitch;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v3, p0, LAdapter/AdapterCustomSwitch$1;->this$0:LAdapter/AdapterCustomSwitch;

    iget-object v3, v3, LAdapter/AdapterCustomSwitch;->switchDatas:Ljava/util/ArrayList;

    iget v6, p0, LAdapter/AdapterCustomSwitch$1;->val$position:I

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v6, "switch_image_id"

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v5, "OFF"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 219
    .restart local v0    # "mDimmerValue":Ljava/lang/String;
    .restart local v2    # "view":Landroid/view/View;
    :cond_2
    new-instance v4, LAdapter/AdapterCustomSwitch$ChangeGoColorStatusTask;

    iget-object v3, p0, LAdapter/AdapterCustomSwitch$1;->this$0:LAdapter/AdapterCustomSwitch;

    invoke-direct {v4, v3, v11}, LAdapter/AdapterCustomSwitch$ChangeGoColorStatusTask;-><init>(LAdapter/AdapterCustomSwitch;LAdapter/AdapterCustomSwitch$1;)V

    new-array v5, v10, [Ljava/lang/String;

    iget-object v3, p0, LAdapter/AdapterCustomSwitch$1;->this$0:LAdapter/AdapterCustomSwitch;

    iget-object v3, v3, LAdapter/AdapterCustomSwitch;->switchDatas:Ljava/util/ArrayList;

    iget v6, p0, LAdapter/AdapterCustomSwitch$1;->val$position:I

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v6, "SwitchID"

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v5, v7

    const-string v3, "0"

    aput-object v3, v5, v8

    const-string v3, "$0,0,0,"

    aput-object v3, v5, v9

    invoke-virtual {v4, v5}, LAdapter/AdapterCustomSwitch$ChangeGoColorStatusTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 222
    :cond_3
    new-instance v4, LAdapter/AdapterCustomSwitch$SwitchOnOffAsyncTask;

    iget-object v3, p0, LAdapter/AdapterCustomSwitch$1;->this$0:LAdapter/AdapterCustomSwitch;

    invoke-direct {v4, v3, v2}, LAdapter/AdapterCustomSwitch$SwitchOnOffAsyncTask;-><init>(LAdapter/AdapterCustomSwitch;Landroid/view/View;)V

    new-array v5, v10, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, LAdapter/AdapterCustomSwitch$1;->val$position:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ""

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v7

    aput-object v0, v5, v8

    iget-object v3, p0, LAdapter/AdapterCustomSwitch$1;->this$0:LAdapter/AdapterCustomSwitch;

    iget-object v3, v3, LAdapter/AdapterCustomSwitch;->switchDatas:Ljava/util/ArrayList;

    iget v6, p0, LAdapter/AdapterCustomSwitch$1;->val$position:I

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    const-string v6, "SwitchStatus"

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v5, v9

    invoke-virtual {v4, v5}, LAdapter/AdapterCustomSwitch$SwitchOnOffAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1

    .line 226
    .end local v0    # "mDimmerValue":Ljava/lang/String;
    .end local v2    # "view":Landroid/view/View;
    :cond_4
    iget-object v3, p0, LAdapter/AdapterCustomSwitch$1;->this$0:LAdapter/AdapterCustomSwitch;

    iget-object v3, v3, LAdapter/AdapterCustomSwitch;->context:Landroid/content/Context;

    const-string v4, "Kindly check internet connection."

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1
.end method
