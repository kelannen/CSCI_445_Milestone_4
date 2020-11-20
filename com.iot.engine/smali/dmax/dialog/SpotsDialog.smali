.class public Ldmax/dialog/SpotsDialog;
.super Landroid/app/AlertDialog;
.source "SpotsDialog.java"


# static fields
.field private static final DELAY:I = 0x96

.field private static final DURATION:I = 0x5dc


# instance fields
.field private animator:Ldmax/dialog/AnimatorPlayer;

.field private message:Ljava/lang/CharSequence;

.field private size:I

.field private spots:[Ldmax/dialog/AnimatedView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    sget v0, Ldmax/dialog/R$style;->SpotsDialogDefault:I

    invoke-direct {p0, p1, v0}, Ldmax/dialog/SpotsDialog;-><init>(Landroid/content/Context;I)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Ldmax/dialog/SpotsDialog;-><init>(Landroid/content/Context;)V

    .line 30
    iput-object p2, p0, Ldmax/dialog/SpotsDialog;->message:Ljava/lang/CharSequence;

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/CharSequence;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "theme"    # I

    .prologue
    .line 34
    invoke-direct {p0, p1, p3}, Ldmax/dialog/SpotsDialog;-><init>(Landroid/content/Context;I)V

    .line 35
    iput-object p2, p0, Ldmax/dialog/SpotsDialog;->message:Ljava/lang/CharSequence;

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancelable"    # Z
    .param p3, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 44
    return-void
.end method

.method private createAnimations()[Landroid/animation/Animator;
    .locals 6

    .prologue
    .line 103
    iget v3, p0, Ldmax/dialog/SpotsDialog;->size:I

    new-array v0, v3, [Landroid/animation/Animator;

    .line 104
    .local v0, "animators":[Landroid/animation/Animator;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Ldmax/dialog/SpotsDialog;->spots:[Ldmax/dialog/AnimatedView;

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 105
    iget-object v3, p0, Ldmax/dialog/SpotsDialog;->spots:[Ldmax/dialog/AnimatedView;

    aget-object v3, v3, v1

    const-string v4, "xFactor"

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 106
    .local v2, "move":Landroid/animation/Animator;
    const-wide/16 v4, 0x5dc

    invoke-virtual {v2, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 107
    new-instance v3, Ldmax/dialog/HesitateInterpolator;

    invoke-direct {v3}, Ldmax/dialog/HesitateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 108
    mul-int/lit16 v3, v1, 0x96

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 109
    aput-object v2, v0, v1

    .line 104
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 111
    .end local v2    # "move":Landroid/animation/Animator;
    :cond_0
    return-object v0

    .line 105
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private initMessage()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Ldmax/dialog/SpotsDialog;->message:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldmax/dialog/SpotsDialog;->message:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 81
    sget v0, Ldmax/dialog/R$id;->dmax_spots_title:I

    invoke-virtual {p0, v0}, Ldmax/dialog/SpotsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Ldmax/dialog/SpotsDialog;->message:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    :cond_0
    return-void
.end method

.method private initProgress()V
    .locals 7

    .prologue
    .line 86
    sget v5, Ldmax/dialog/R$id;->dmax_spots_progress:I

    invoke-virtual {p0, v5}, Ldmax/dialog/SpotsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Ldmax/dialog/ProgressLayout;

    .line 87
    .local v1, "progress":Ldmax/dialog/ProgressLayout;
    invoke-virtual {v1}, Ldmax/dialog/ProgressLayout;->getSpotsCount()I

    move-result v5

    iput v5, p0, Ldmax/dialog/SpotsDialog;->size:I

    .line 89
    iget v5, p0, Ldmax/dialog/SpotsDialog;->size:I

    new-array v5, v5, [Ldmax/dialog/AnimatedView;

    iput-object v5, p0, Ldmax/dialog/SpotsDialog;->spots:[Ldmax/dialog/AnimatedView;

    .line 90
    invoke-virtual {p0}, Ldmax/dialog/SpotsDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Ldmax/dialog/R$dimen;->spot_size:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 91
    .local v3, "size":I
    invoke-virtual {p0}, Ldmax/dialog/SpotsDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Ldmax/dialog/R$dimen;->progress_width:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 92
    .local v2, "progressWidth":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Ldmax/dialog/SpotsDialog;->spots:[Ldmax/dialog/AnimatedView;

    array-length v5, v5

    if-ge v0, v5, :cond_0

    .line 93
    new-instance v4, Ldmax/dialog/AnimatedView;

    invoke-virtual {p0}, Ldmax/dialog/SpotsDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Ldmax/dialog/AnimatedView;-><init>(Landroid/content/Context;)V

    .line 94
    .local v4, "v":Ldmax/dialog/AnimatedView;
    sget v5, Ldmax/dialog/R$drawable;->dmax_spots_spot:I

    invoke-virtual {v4, v5}, Ldmax/dialog/AnimatedView;->setBackgroundResource(I)V

    .line 95
    invoke-virtual {v4, v2}, Ldmax/dialog/AnimatedView;->setTarget(I)V

    .line 96
    const/high16 v5, -0x40800000    # -1.0f

    invoke-virtual {v4, v5}, Ldmax/dialog/AnimatedView;->setXFactor(F)V

    .line 97
    invoke-virtual {v1, v4, v3, v3}, Ldmax/dialog/ProgressLayout;->addView(Landroid/view/View;II)V

    .line 98
    iget-object v5, p0, Ldmax/dialog/SpotsDialog;->spots:[Ldmax/dialog/AnimatedView;

    aput-object v4, v5, v0

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 100
    .end local v4    # "v":Ldmax/dialog/AnimatedView;
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 50
    sget v0, Ldmax/dialog/R$layout;->dmax_spots_dialog:I

    invoke-virtual {p0, v0}, Ldmax/dialog/SpotsDialog;->setContentView(I)V

    .line 51
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ldmax/dialog/SpotsDialog;->setCanceledOnTouchOutside(Z)V

    .line 53
    invoke-direct {p0}, Ldmax/dialog/SpotsDialog;->initMessage()V

    .line 54
    invoke-direct {p0}, Ldmax/dialog/SpotsDialog;->initProgress()V

    .line 55
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 59
    invoke-super {p0}, Landroid/app/AlertDialog;->onStart()V

    .line 61
    new-instance v0, Ldmax/dialog/AnimatorPlayer;

    invoke-direct {p0}, Ldmax/dialog/SpotsDialog;->createAnimations()[Landroid/animation/Animator;

    move-result-object v1

    invoke-direct {v0, v1}, Ldmax/dialog/AnimatorPlayer;-><init>([Landroid/animation/Animator;)V

    iput-object v0, p0, Ldmax/dialog/SpotsDialog;->animator:Ldmax/dialog/AnimatorPlayer;

    .line 62
    iget-object v0, p0, Ldmax/dialog/SpotsDialog;->animator:Ldmax/dialog/AnimatorPlayer;

    invoke-virtual {v0}, Ldmax/dialog/AnimatorPlayer;->play()V

    .line 63
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 67
    invoke-super {p0}, Landroid/app/AlertDialog;->onStop()V

    .line 69
    iget-object v0, p0, Ldmax/dialog/SpotsDialog;->animator:Ldmax/dialog/AnimatorPlayer;

    invoke-virtual {v0}, Ldmax/dialog/AnimatorPlayer;->stop()V

    .line 70
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 74
    sget v0, Ldmax/dialog/R$id;->dmax_spots_title:I

    invoke-virtual {p0, v0}, Ldmax/dialog/SpotsDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    return-void
.end method
