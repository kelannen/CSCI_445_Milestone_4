.class Lcom/alimuzaffar/lib/pin/PinEntryEditText$4;
.super Ljava/lang/Object;
.source "PinEntryEditText.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alimuzaffar/lib/pin/PinEntryEditText;->animatePopIn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alimuzaffar/lib/pin/PinEntryEditText;


# direct methods
.method constructor <init>(Lcom/alimuzaffar/lib/pin/PinEntryEditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alimuzaffar/lib/pin/PinEntryEditText;

    .prologue
    .line 428
    iput-object p1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText$4;->this$0:Lcom/alimuzaffar/lib/pin/PinEntryEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 431
    iget-object v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText$4;->this$0:Lcom/alimuzaffar/lib/pin/PinEntryEditText;

    iget-object v1, v0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mLastCharPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 432
    iget-object v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText$4;->this$0:Lcom/alimuzaffar/lib/pin/PinEntryEditText;

    invoke-virtual {v0}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->invalidate()V

    .line 433
    return-void
.end method
