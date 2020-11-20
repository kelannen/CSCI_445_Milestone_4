.class Lcom/alimuzaffar/lib/pin/PinEntryEditText$6;
.super Ljava/lang/Object;
.source "PinEntryEditText.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alimuzaffar/lib/pin/PinEntryEditText;->animateBottomUp(Ljava/lang/CharSequence;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alimuzaffar/lib/pin/PinEntryEditText;

.field final synthetic val$start:I


# direct methods
.method constructor <init>(Lcom/alimuzaffar/lib/pin/PinEntryEditText;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/alimuzaffar/lib/pin/PinEntryEditText;

    .prologue
    .line 463
    iput-object p1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText$6;->this$0:Lcom/alimuzaffar/lib/pin/PinEntryEditText;

    iput p2, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText$6;->val$start:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 466
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 467
    .local v0, "value":Ljava/lang/Float;
    iget-object v1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText$6;->this$0:Lcom/alimuzaffar/lib/pin/PinEntryEditText;

    iget-object v1, v1, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mCharBottom:[F

    iget v2, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText$6;->val$start:I

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v1, v2

    .line 468
    iget-object v1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText$6;->this$0:Lcom/alimuzaffar/lib/pin/PinEntryEditText;

    invoke-virtual {v1}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->invalidate()V

    .line 469
    return-void
.end method
