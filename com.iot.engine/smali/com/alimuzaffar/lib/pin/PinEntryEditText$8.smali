.class Lcom/alimuzaffar/lib/pin/PinEntryEditText$8;
.super Ljava/lang/Object;
.source "PinEntryEditText.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


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


# direct methods
.method constructor <init>(Lcom/alimuzaffar/lib/pin/PinEntryEditText;)V
    .locals 0
    .param p1, "this$0"    # Lcom/alimuzaffar/lib/pin/PinEntryEditText;

    .prologue
    .line 485
    iput-object p1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText$8;->this$0:Lcom/alimuzaffar/lib/pin/PinEntryEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 498
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 493
    iget-object v0, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText$8;->this$0:Lcom/alimuzaffar/lib/pin/PinEntryEditText;

    iget-object v0, v0, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->mOnPinEnteredListener:Lcom/alimuzaffar/lib/pin/PinEntryEditText$OnPinEnteredListener;

    iget-object v1, p0, Lcom/alimuzaffar/lib/pin/PinEntryEditText$8;->this$0:Lcom/alimuzaffar/lib/pin/PinEntryEditText;

    invoke-virtual {v1}, Lcom/alimuzaffar/lib/pin/PinEntryEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alimuzaffar/lib/pin/PinEntryEditText$OnPinEnteredListener;->onPinEntered(Ljava/lang/CharSequence;)V

    .line 494
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 503
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 489
    return-void
.end method
