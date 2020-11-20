.class LAdapter/AdapterCustomSwitch$2;
.super Ljava/lang/Object;
.source "AdapterCustomSwitch.java"

# interfaces
.implements Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$OnProgressChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LAdapter/AdapterCustomSwitch;->onBindViewHolder(LAdapter/AdapterCustomSwitch$MyViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field progress:I

.field final synthetic this$0:LAdapter/AdapterCustomSwitch;

.field final synthetic val$holder:LAdapter/AdapterCustomSwitch$MyViewHolder;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(LAdapter/AdapterCustomSwitch;ILAdapter/AdapterCustomSwitch$MyViewHolder;)V
    .locals 1
    .param p1, "this$0"    # LAdapter/AdapterCustomSwitch;

    .prologue
    .line 231
    iput-object p1, p0, LAdapter/AdapterCustomSwitch$2;->this$0:LAdapter/AdapterCustomSwitch;

    iput p2, p0, LAdapter/AdapterCustomSwitch$2;->val$position:I

    iput-object p3, p0, LAdapter/AdapterCustomSwitch$2;->val$holder:LAdapter/AdapterCustomSwitch$MyViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    const/4 v0, 0x0

    iput v0, p0, LAdapter/AdapterCustomSwitch$2;->progress:I

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;IZ)V
    .locals 2
    .param p1, "seekBar"    # Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 235
    iput p2, p0, LAdapter/AdapterCustomSwitch$2;->progress:I

    .line 236
    iget-object v0, p0, LAdapter/AdapterCustomSwitch$2;->this$0:LAdapter/AdapterCustomSwitch;

    iget v0, v0, LAdapter/AdapterCustomSwitch;->min:I

    iget-object v1, p0, LAdapter/AdapterCustomSwitch$2;->this$0:LAdapter/AdapterCustomSwitch;

    iget v1, v1, LAdapter/AdapterCustomSwitch;->step:I

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    iput v0, p0, LAdapter/AdapterCustomSwitch$2;->progress:I

    .line 237
    return-void
.end method

.method public onStartTrackingTouch(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    .prologue
    .line 241
    return-void
.end method

.method public onStopTrackingTouch(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;)V
    .locals 13
    .param p1, "seekBar"    # Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 246
    invoke-virtual {p1}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->getProgress()I

    move-result v4

    mul-int/lit8 v4, v4, 0x4b

    div-int/lit8 v0, v4, 0x64

    .line 247
    .local v0, "finalDimmerValue":I
    iget-object v4, p0, LAdapter/AdapterCustomSwitch$2;->this$0:LAdapter/AdapterCustomSwitch;

    iget-object v4, v4, LAdapter/AdapterCustomSwitch;->switchDatas:Ljava/util/ArrayList;

    iget v5, p0, LAdapter/AdapterCustomSwitch$2;->val$position:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string v5, "SwitchID"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 248
    .local v2, "switchIds":Ljava/lang/String;
    iget-object v4, p0, LAdapter/AdapterCustomSwitch$2;->this$0:LAdapter/AdapterCustomSwitch;

    iget-object v4, v4, LAdapter/AdapterCustomSwitch;->db:LDatabase/DatabaseHandler;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, LDatabase/DatabaseHandler;->updateDimmerValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    iget-object v4, p0, LAdapter/AdapterCustomSwitch$2;->val$holder:LAdapter/AdapterCustomSwitch$MyViewHolder;

    iget-object v3, v4, LAdapter/AdapterCustomSwitch$MyViewHolder;->btnSwitchButton:Landroid/support/v7/widget/SwitchCompat;

    .line 250
    .local v3, "view":Landroid/view/View;
    iget-object v4, p0, LAdapter/AdapterCustomSwitch$2;->this$0:LAdapter/AdapterCustomSwitch;

    iget-object v4, v4, LAdapter/AdapterCustomSwitch;->context:Landroid/content/Context;

    invoke-static {v4}, LSession/Constants;->isInternetAvailable(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 251
    iget-object v4, p0, LAdapter/AdapterCustomSwitch$2;->this$0:LAdapter/AdapterCustomSwitch;

    iget-object v4, v4, LAdapter/AdapterCustomSwitch;->switchDatas:Ljava/util/ArrayList;

    iget v5, p0, LAdapter/AdapterCustomSwitch$2;->val$position:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 252
    .local v1, "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p1}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->getProgress()I

    move-result v4

    if-lez v4, :cond_1

    .line 254
    iget-object v4, p0, LAdapter/AdapterCustomSwitch$2;->this$0:LAdapter/AdapterCustomSwitch;

    iget-object v4, v4, LAdapter/AdapterCustomSwitch;->switchDatas:Ljava/util/ArrayList;

    iget v5, p0, LAdapter/AdapterCustomSwitch$2;->val$position:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string v5, "SwitchStatus"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 255
    iget-object v4, p0, LAdapter/AdapterCustomSwitch$2;->val$holder:LAdapter/AdapterCustomSwitch$MyViewHolder;

    iget-object v4, v4, LAdapter/AdapterCustomSwitch$MyViewHolder;->btnSwitchButton:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v4, v10}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 257
    :cond_0
    const-string v4, "SwitchStatus"

    const-string v5, "1"

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    const-string v4, "Switch Info"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v4, p0, LAdapter/AdapterCustomSwitch$2;->this$0:LAdapter/AdapterCustomSwitch;

    iget-object v5, v4, LAdapter/AdapterCustomSwitch;->db:LDatabase/DatabaseHandler;

    const-string v4, "SwitchID"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, "1"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v4, v6, v7}, LDatabase/DatabaseHandler;->updateSwitchStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget-object v4, p0, LAdapter/AdapterCustomSwitch$2;->this$0:LAdapter/AdapterCustomSwitch;

    iget-object v4, v4, LAdapter/AdapterCustomSwitch;->switchDatas:Ljava/util/ArrayList;

    iget v5, p0, LAdapter/AdapterCustomSwitch$2;->val$position:I

    invoke-virtual {v4, v5, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 262
    const-string v5, "Status"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SwitchStatus"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    new-instance v5, LAdapter/AdapterCustomSwitch$SwitchOnOffAsyncTask;

    iget-object v4, p0, LAdapter/AdapterCustomSwitch$2;->this$0:LAdapter/AdapterCustomSwitch;

    invoke-direct {v5, v4, v3}, LAdapter/AdapterCustomSwitch$SwitchOnOffAsyncTask;-><init>(LAdapter/AdapterCustomSwitch;Landroid/view/View;)V

    new-array v6, v12, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, LAdapter/AdapterCustomSwitch$2;->val$position:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ""

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ""

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v10

    const-string v4, "SwitchStatus"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v6, v11

    invoke-virtual {v5, v6}, LAdapter/AdapterCustomSwitch$SwitchOnOffAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 279
    .end local v1    # "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 266
    .restart local v1    # "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    iget-object v4, p0, LAdapter/AdapterCustomSwitch$2;->val$holder:LAdapter/AdapterCustomSwitch$MyViewHolder;

    iget-object v4, v4, LAdapter/AdapterCustomSwitch$MyViewHolder;->btnSwitchButton:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v4, v9}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 267
    const-string v4, "SwitchStatus"

    const-string v5, "0"

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    const-string v4, "Switch Info"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object v4, p0, LAdapter/AdapterCustomSwitch$2;->this$0:LAdapter/AdapterCustomSwitch;

    iget-object v5, v4, LAdapter/AdapterCustomSwitch;->db:LDatabase/DatabaseHandler;

    const-string v4, "SwitchID"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, "0"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v4, v6, v7}, LDatabase/DatabaseHandler;->updateSwitchStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object v4, p0, LAdapter/AdapterCustomSwitch$2;->this$0:LAdapter/AdapterCustomSwitch;

    iget-object v4, v4, LAdapter/AdapterCustomSwitch;->switchDatas:Ljava/util/ArrayList;

    iget v5, p0, LAdapter/AdapterCustomSwitch$2;->val$position:I

    invoke-virtual {v4, v5, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 272
    const-string v5, "Status"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SwitchStatus"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    new-instance v5, LAdapter/AdapterCustomSwitch$SwitchOnOffAsyncTask;

    iget-object v4, p0, LAdapter/AdapterCustomSwitch$2;->this$0:LAdapter/AdapterCustomSwitch;

    invoke-direct {v5, v4, v3}, LAdapter/AdapterCustomSwitch$SwitchOnOffAsyncTask;-><init>(LAdapter/AdapterCustomSwitch;Landroid/view/View;)V

    new-array v6, v12, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, p0, LAdapter/AdapterCustomSwitch$2;->val$position:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ""

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ""

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v10

    const-string v4, "SwitchStatus"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    aput-object v4, v6, v11

    invoke-virtual {v5, v6}, LAdapter/AdapterCustomSwitch$SwitchOnOffAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 276
    .end local v1    # "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    iget-object v4, p0, LAdapter/AdapterCustomSwitch$2;->this$0:LAdapter/AdapterCustomSwitch;

    iget-object v4, v4, LAdapter/AdapterCustomSwitch;->context:Landroid/content/Context;

    const-string v5, "Kindly check internet Connection."

    invoke-static {v4, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method
