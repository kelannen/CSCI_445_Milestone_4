.class public Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator;
.super Ljava/lang/Object;
.source "PopupIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator$Floater;
    }
.end annotation


# instance fields
.field private mDrawingLocation:[I

.field private mListener:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable$MarkerAnimationListener;

.field private mPopupView:Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator$Floater;

.field private mShowing:Z

.field private final mWindowManager:Landroid/view/WindowManager;

.field screenSize:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/String;II)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "maxValue"    # Ljava/lang/String;
    .param p5, "thumbSize"    # I
    .param p6, "separation"    # I

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator;->mDrawingLocation:[I

    .line 60
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator;->screenSize:Landroid/graphics/Point;

    .line 63
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator;->mWindowManager:Landroid/view/WindowManager;

    .line 64
    new-instance v0, Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator$Floater;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator$Floater;-><init>(Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator;Landroid/content/Context;Landroid/util/AttributeSet;ILjava/lang/String;II)V

    iput-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator;->mPopupView:Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator$Floater;

    .line 65
    return-void
.end method

.method static synthetic access$100(Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator;)Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable$MarkerAnimationListener;
    .locals 1
    .param p0, "x0"    # Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator;

    .prologue
    .line 49
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator;->mListener:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable$MarkerAnimationListener;

    return-object v0
.end method

.method private computeFlags(I)I
    .locals 1
    .param p1, "curFlags"    # I

    .prologue
    .line 192
    const v0, -0x68219

    and-int/2addr p1, v0

    .line 199
    const v0, 0x8000

    or-int/2addr p1, v0

    .line 200
    or-int/lit8 p1, p1, 0x8

    .line 201
    or-int/lit8 p1, p1, 0x10

    .line 202
    or-int/lit16 p1, p1, 0x200

    .line 203
    return p1
.end method

.method private createPopupLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    const/4 v2, -0x1

    .line 171
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 172
    .local v0, "p":Landroid/view/WindowManager$LayoutParams;
    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 173
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 174
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 175
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 176
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v1}, Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator;->computeFlags(I)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 177
    const/16 v1, 0x3e8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 178
    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 179
    const/4 v1, 0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DiscreteSeekBar Indicator:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 182
    return-object v0
.end method

.method private invokePopup(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .param p1, "p"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 166
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator;->mPopupView:Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator$Floater;

    invoke-interface {v0, v1, p1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator;->mPopupView:Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator$Floater;

    invoke-static {v0}, Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator$Floater;->access$000(Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator$Floater;)Lorg/adw/library/widgets/discreteseekbar/internal/Marker;

    move-result-object v0

    invoke-virtual {v0}, Lorg/adw/library/widgets/discreteseekbar/internal/Marker;->animateOpen()V

    .line 168
    return-void
.end method

.method private measureFloater()V
    .locals 4

    .prologue
    .line 83
    iget-object v2, p0, Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator;->screenSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 84
    .local v1, "specWidth":I
    iget-object v2, p0, Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator;->screenSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    const/high16 v3, -0x80000000

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 85
    .local v0, "specHeight":I
    iget-object v2, p0, Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator;->mPopupView:Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator$Floater;

    invoke-virtual {v2, v1, v0}, Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator$Floater;->measure(II)V

    .line 86
    return-void
.end method

.method private translateViewIntoPosition(I)V
    .locals 3
    .param p1, "x"    # I

    .prologue
    .line 162
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator;->mPopupView:Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator$Floater;

    iget-object v1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator;->mDrawingLocation:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    add-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator$Floater;->setFloatOffset(I)V

    .line 163
    return-void
.end method

.method private updateLayoutParamsForPosiion(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;I)V
    .locals 6
    .param p1, "anchor"    # Landroid/view/View;
    .param p2, "p"    # Landroid/view/WindowManager$LayoutParams;
    .param p3, "yOffset"    # I

    .prologue
    .line 148
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 149
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v3, p0, Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator;->screenSize:Landroid/graphics/Point;

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Point;->set(II)V

    .line 151
    invoke-direct {p0}, Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator;->measureFloater()V

    .line 152
    iget-object v3, p0, Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator;->mPopupView:Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator$Floater;

    invoke-virtual {v3}, Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator$Floater;->getMeasuredHeight()I

    move-result v1

    .line 153
    .local v1, "measuredHeight":I
    iget-object v3, p0, Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator;->mPopupView:Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator$Floater;

    invoke-static {v3}, Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator$Floater;->access$000(Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator$Floater;)Lorg/adw/library/widgets/discreteseekbar/internal/Marker;

    move-result-object v3

    invoke-virtual {v3}, Lorg/adw/library/widgets/discreteseekbar/internal/Marker;->getPaddingBottom()I

    move-result v2

    .line 154
    .local v2, "paddingBottom":I
    iget-object v3, p0, Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator;->mDrawingLocation:[I

    invoke-virtual {p1, v3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 155
    const/4 v3, 0x0

    iput v3, p2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 156
    iget-object v3, p0, Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator;->mDrawingLocation:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    sub-int/2addr v3, v1

    add-int/2addr v3, p3

    add-int/2addr v3, v2

    iput v3, p2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 157
    iget-object v3, p0, Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator;->screenSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    iput v3, p2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 158
    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 159
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator;->mPopupView:Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator$Floater;

    invoke-static {v0}, Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator$Floater;->access$000(Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator$Floater;)Lorg/adw/library/widgets/discreteseekbar/internal/Marker;

    move-result-object v0

    invoke-virtual {v0}, Lorg/adw/library/widgets/discreteseekbar/internal/Marker;->animateClose()V

    .line 131
    return-void
.end method

.method public dismissComplete()V
    .locals 2

    .prologue
    .line 138
    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator;->mShowing:Z

    .line 141
    :try_start_0
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator;->mPopupView:Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator$Floater;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    :cond_0
    return-void

    .line 142
    :catchall_0
    move-exception v0

    throw v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 93
    iget-boolean v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator;->mShowing:Z

    return v0
.end method

.method public move(I)V
    .locals 1
    .param p1, "x"    # I

    .prologue
    .line 116
    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    :goto_0
    return-void

    .line 119
    :cond_0
    invoke-direct {p0, p1}, Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator;->translateViewIntoPosition(I)V

    goto :goto_0
.end method

.method public setColors(II)V
    .locals 1
    .param p1, "startColor"    # I
    .param p2, "endColor"    # I

    .prologue
    .line 123
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator;->mPopupView:Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator$Floater;

    invoke-virtual {v0, p1, p2}, Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator$Floater;->setColors(II)V

    .line 124
    return-void
.end method

.method public setListener(Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable$MarkerAnimationListener;)V
    .locals 0
    .param p1, "listener"    # Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable$MarkerAnimationListener;

    .prologue
    .line 75
    iput-object p1, p0, Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator;->mListener:Lorg/adw/library/widgets/discreteseekbar/internal/drawable/MarkerDrawable$MarkerAnimationListener;

    .line 76
    return-void
.end method

.method public setValue(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/CharSequence;

    .prologue
    .line 89
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator;->mPopupView:Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator$Floater;

    invoke-static {v0}, Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator$Floater;->access$000(Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator$Floater;)Lorg/adw/library/widgets/discreteseekbar/internal/Marker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/adw/library/widgets/discreteseekbar/internal/Marker;->setValue(Ljava/lang/CharSequence;)V

    .line 90
    return-void
.end method

.method public showIndicator(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "touchBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 97
    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 98
    iget-object v2, p0, Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator;->mPopupView:Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator$Floater;

    invoke-static {v2}, Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator$Floater;->access$000(Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator$Floater;)Lorg/adw/library/widgets/discreteseekbar/internal/Marker;

    move-result-object v2

    invoke-virtual {v2}, Lorg/adw/library/widgets/discreteseekbar/internal/Marker;->animateOpen()V

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    .line 103
    .local v1, "windowToken":Landroid/os/IBinder;
    if-eqz v1, :cond_0

    .line 104
    invoke-direct {p0, v1}, Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator;->createPopupLayout(Landroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 106
    .local v0, "p":Landroid/view/WindowManager$LayoutParams;
    const v2, 0x800033

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 107
    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, p1, v0, v2}, Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator;->updateLayoutParamsForPosiion(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;I)V

    .line 108
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator;->mShowing:Z

    .line 110
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    invoke-direct {p0, v2}, Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator;->translateViewIntoPosition(I)V

    .line 111
    invoke-direct {p0, v0}, Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator;->invokePopup(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0
.end method

.method public updateSizes(Ljava/lang/String;)V
    .locals 1
    .param p1, "maxValue"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-virtual {p0}, Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator;->dismissComplete()V

    .line 69
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator;->mPopupView:Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator$Floater;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator;->mPopupView:Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator$Floater;

    invoke-static {v0}, Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator$Floater;->access$000(Lorg/adw/library/widgets/discreteseekbar/internal/PopupIndicator$Floater;)Lorg/adw/library/widgets/discreteseekbar/internal/Marker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/adw/library/widgets/discreteseekbar/internal/Marker;->resetSizes(Ljava/lang/String;)V

    .line 72
    :cond_0
    return-void
.end method
