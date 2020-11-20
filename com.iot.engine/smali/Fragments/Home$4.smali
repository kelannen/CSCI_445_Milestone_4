.class LFragments/Home$4;
.super Ljava/lang/Object;
.source "Home.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LFragments/Home;->closeFABMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LFragments/Home;


# direct methods
.method constructor <init>(LFragments/Home;)V
    .locals 0
    .param p1, "this$0"    # LFragments/Home;

    .prologue
    .line 509
    iput-object p1, p0, LFragments/Home$4;->this$0:LFragments/Home;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 530
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    const/16 v1, 0x8

    .line 517
    iget-object v0, p0, LFragments/Home$4;->this$0:LFragments/Home;

    iget-boolean v0, v0, LFragments/Home;->isFABOpen:Z

    if-nez v0, :cond_0

    .line 518
    iget-object v0, p0, LFragments/Home$4;->this$0:LFragments/Home;

    invoke-static {v0}, LFragments/Home;->access$500(LFragments/Home;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 519
    iget-object v0, p0, LFragments/Home$4;->this$0:LFragments/Home;

    invoke-static {v0}, LFragments/Home;->access$600(LFragments/Home;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 520
    iget-object v0, p0, LFragments/Home$4;->this$0:LFragments/Home;

    invoke-static {v0}, LFragments/Home;->access$700(LFragments/Home;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 521
    iget-object v0, p0, LFragments/Home$4;->this$0:LFragments/Home;

    invoke-static {v0}, LFragments/Home;->access$800(LFragments/Home;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 522
    iget-object v0, p0, LFragments/Home$4;->this$0:LFragments/Home;

    invoke-static {v0}, LFragments/Home;->access$900(LFragments/Home;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 525
    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 535
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 513
    return-void
.end method
