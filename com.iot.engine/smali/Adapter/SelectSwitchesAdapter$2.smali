.class LAdapter/SelectSwitchesAdapter$2;
.super Ljava/lang/Object;
.source "SelectSwitchesAdapter.java"

# interfaces
.implements Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$OnProgressChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LAdapter/SelectSwitchesAdapter;->onBindViewHolder(LAdapter/SelectSwitchesAdapter$MyViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LAdapter/SelectSwitchesAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(LAdapter/SelectSwitchesAdapter;I)V
    .locals 0
    .param p1, "this$0"    # LAdapter/SelectSwitchesAdapter;

    .prologue
    .line 135
    iput-object p1, p0, LAdapter/SelectSwitchesAdapter$2;->this$0:LAdapter/SelectSwitchesAdapter;

    iput p2, p0, LAdapter/SelectSwitchesAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;IZ)V
    .locals 0
    .param p1, "seekBar"    # Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;
    .param p2, "value"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 139
    return-void
.end method

.method public onStartTrackingTouch(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    .prologue
    .line 144
    return-void
.end method

.method public onStopTrackingTouch(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;)V
    .locals 4
    .param p1, "seekBar"    # Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    .prologue
    .line 148
    const-string v1, "SelectSwitchesAdapter"

    const-string v2, "onStopTrackingTouch: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :try_start_0
    iget-object v1, p0, LAdapter/SelectSwitchesAdapter$2;->this$0:LAdapter/SelectSwitchesAdapter;

    iget-object v1, v1, LAdapter/SelectSwitchesAdapter;->arrayList:Ljava/util/ArrayList;

    iget v2, p0, LAdapter/SelectSwitchesAdapter$2;->val$position:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 151
    .local v0, "mapList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
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

    .line 152
    iget-object v1, p0, LAdapter/SelectSwitchesAdapter$2;->this$0:LAdapter/SelectSwitchesAdapter;

    iget-object v1, v1, LAdapter/SelectSwitchesAdapter;->arrayList:Ljava/util/ArrayList;

    iget v2, p0, LAdapter/SelectSwitchesAdapter$2;->val$position:I

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .end local v0    # "mapList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 153
    :catch_0
    move-exception v1

    goto :goto_0
.end method
