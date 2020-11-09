.class LAdapter/TryDemoSwitchAdpater$2;
.super Ljava/lang/Object;
.source "TryDemoSwitchAdpater.java"

# interfaces
.implements Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$OnProgressChangeListener;


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
    .line 181
    iput-object p1, p0, LAdapter/TryDemoSwitchAdpater$2;->this$0:LAdapter/TryDemoSwitchAdpater;

    iput p2, p0, LAdapter/TryDemoSwitchAdpater$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;IZ)V
    .locals 0
    .param p1, "seekBar"    # Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 185
    return-void
.end method

.method public onStartTrackingTouch(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    .prologue
    .line 190
    return-void
.end method

.method public onStopTrackingTouch(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;)V
    .locals 5
    .param p1, "seekBar"    # Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    .prologue
    .line 196
    iget-object v1, p0, LAdapter/TryDemoSwitchAdpater$2;->this$0:LAdapter/TryDemoSwitchAdpater;

    iget-object v1, v1, LAdapter/TryDemoSwitchAdpater;->switchDatas:Ljava/util/ArrayList;

    iget v2, p0, LAdapter/TryDemoSwitchAdpater$2;->val$position:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 197
    .local v0, "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "DimmerValue"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->getProgress()I

    move-result v3

    mul-int/lit8 v3, v3, 0x4b

    div-int/lit8 v3, v3, 0x64

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    invoke-virtual {p1}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->getProgress()I

    move-result v1

    if-lez v1, :cond_0

    .line 199
    const-string v1, "SwitchStatus"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    :goto_0
    iget-object v1, p0, LAdapter/TryDemoSwitchAdpater$2;->this$0:LAdapter/TryDemoSwitchAdpater;

    iget-object v1, v1, LAdapter/TryDemoSwitchAdpater;->thisLiving:Lcom/iot/engine/LivingRoom;

    invoke-virtual {v1, v0}, Lcom/iot/engine/LivingRoom;->OnProgressChangeListener(Ljava/util/HashMap;)V

    .line 204
    iget-object v2, p0, LAdapter/TryDemoSwitchAdpater$2;->this$0:LAdapter/TryDemoSwitchAdpater;

    iget v3, p0, LAdapter/TryDemoSwitchAdpater$2;->val$position:I

    const-string v1, "SwitchStatus"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v4, p0, LAdapter/TryDemoSwitchAdpater$2;->this$0:LAdapter/TryDemoSwitchAdpater;

    invoke-static {v4}, LAdapter/TryDemoSwitchAdpater;->access$100(LAdapter/TryDemoSwitchAdpater;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v1, v4}, LAdapter/TryDemoSwitchAdpater;->access$200(LAdapter/TryDemoSwitchAdpater;ILjava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object v1, p0, LAdapter/TryDemoSwitchAdpater$2;->this$0:LAdapter/TryDemoSwitchAdpater;

    iget v2, p0, LAdapter/TryDemoSwitchAdpater$2;->val$position:I

    invoke-virtual {v1, v2}, LAdapter/TryDemoSwitchAdpater;->notifyItemChanged(I)V

    .line 206
    return-void

    .line 201
    :cond_0
    const-string v1, "SwitchStatus"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
