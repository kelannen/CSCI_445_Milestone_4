.class LAdapter/SelectSwitchExapableAdapter$2;
.super Ljava/lang/Object;
.source "SelectSwitchExapableAdapter.java"

# interfaces
.implements Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$OnProgressChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LAdapter/SelectSwitchExapableAdapter;->getChildView(IIZLandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:LAdapter/SelectSwitchExapableAdapter;

.field final synthetic val$childPosition:I

.field final synthetic val$childText:Ljava/util/HashMap;

.field final synthetic val$groupPosition:I


# direct methods
.method constructor <init>(LAdapter/SelectSwitchExapableAdapter;ILjava/util/HashMap;I)V
    .locals 3
    .param p1, "this$0"    # LAdapter/SelectSwitchExapableAdapter;

    .prologue
    .line 167
    iput-object p1, p0, LAdapter/SelectSwitchExapableAdapter$2;->this$0:LAdapter/SelectSwitchExapableAdapter;

    iput p2, p0, LAdapter/SelectSwitchExapableAdapter$2;->val$groupPosition:I

    iput-object p3, p0, LAdapter/SelectSwitchExapableAdapter$2;->val$childText:Ljava/util/HashMap;

    iput p4, p0, LAdapter/SelectSwitchExapableAdapter$2;->val$childPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iget-object v0, p0, LAdapter/SelectSwitchExapableAdapter$2;->this$0:LAdapter/SelectSwitchExapableAdapter;

    invoke-static {v0}, LAdapter/SelectSwitchExapableAdapter;->access$000(LAdapter/SelectSwitchExapableAdapter;)Ljava/util/HashMap;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, LAdapter/SelectSwitchExapableAdapter$2;->val$groupPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, LAdapter/SelectSwitchExapableAdapter$2;->mList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;IZ)V
    .locals 0
    .param p1, "seekBar"    # Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;
    .param p2, "value"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 172
    return-void
.end method

.method public onStartTrackingTouch(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    .prologue
    .line 177
    return-void
.end method

.method public onStopTrackingTouch(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;)V
    .locals 4
    .param p1, "seekBar"    # Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    .prologue
    .line 184
    :try_start_0
    iget-object v0, p0, LAdapter/SelectSwitchExapableAdapter$2;->val$childText:Ljava/util/HashMap;

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

    .line 185
    iget-object v0, p0, LAdapter/SelectSwitchExapableAdapter$2;->mList:Ljava/util/ArrayList;

    iget v1, p0, LAdapter/SelectSwitchExapableAdapter$2;->val$childPosition:I

    iget-object v2, p0, LAdapter/SelectSwitchExapableAdapter$2;->val$childText:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 186
    iget-object v0, p0, LAdapter/SelectSwitchExapableAdapter$2;->this$0:LAdapter/SelectSwitchExapableAdapter;

    invoke-static {v0}, LAdapter/SelectSwitchExapableAdapter;->access$000(LAdapter/SelectSwitchExapableAdapter;)Ljava/util/HashMap;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, LAdapter/SelectSwitchExapableAdapter$2;->val$groupPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, LAdapter/SelectSwitchExapableAdapter$2;->mList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :goto_0
    return-void

    .line 188
    :catch_0
    move-exception v0

    goto :goto_0
.end method
